.class public Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectInfo;
.super Ljava/lang/Object;
.source "VipMusicMoreInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectInfo"
.end annotation


# instance fields
.field private collectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectBean;",
            ">;"
        }
    .end annotation
.end field

.field private collectSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectInfo;->collectList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCollectList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectBean;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectInfo;->collectList:Ljava/util/List;

    return-object v0
.end method

.method public getCollectSize()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectInfo;->collectSize:I

    return v0
.end method

.method public setCollectList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectBean;",
            ">;)V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectInfo;->collectList:Ljava/util/List;

    return-void
.end method

.method public setCollectSize(I)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectInfo;->collectSize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CollectInfo{collectSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectInfo;->collectSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", collectList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectInfo;->collectList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
