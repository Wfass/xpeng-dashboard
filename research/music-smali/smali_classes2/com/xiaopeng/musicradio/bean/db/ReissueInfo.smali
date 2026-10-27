.class public Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;
.super Ljava/lang/Object;
.source "ReissueInfo.java"


# static fields
.field public static final REISSUE_TYPE_KUGOU:I = 0x4

.field public static final REISSUE_TYPE_NETEASE:I = 0x3

.field public static final REISSUE_TYPE_QQ:I = 0x1

.field public static final REISSUE_TYPE_USER:I = 0x0

.field public static final REISSUE_TYPE_XMLY:I = 0x2


# instance fields
.field private mergeList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
        serialize = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;",
            ">;"
        }
    .end annotation
.end field

.field private objectId:Ljava/lang/String;

.field private reissueType:I

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->reissueType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->reissueType:I

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->objectId:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->url:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->value:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->type:Ljava/lang/String;

    .line 50
    iput p5, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->reissueType:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->objectId:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->objectId:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getMergeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->mergeList:Ljava/util/List;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getReissueType()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->reissueType:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 114
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->objectId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setMergeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;",
            ">;)V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->mergeList:Ljava/util/List;

    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->objectId:Ljava/lang/String;

    return-void
.end method

.method public setReissueType(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->reissueType:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReissueInfo{objectId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", value=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", reissueType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->reissueType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
