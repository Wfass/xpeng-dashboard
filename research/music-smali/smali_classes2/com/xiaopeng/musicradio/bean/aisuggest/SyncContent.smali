.class public Lcom/xiaopeng/musicradio/bean/aisuggest/SyncContent;
.super Ljava/lang/Object;
.source "SyncContent.java"


# instance fields
.field private data:Ljava/lang/String;

.field private scene:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/aisuggest/SyncContent;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getScene()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/aisuggest/SyncContent;->scene:I

    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/aisuggest/SyncContent;->data:Ljava/lang/String;

    return-void
.end method

.method public setScene(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/aisuggest/SyncContent;->scene:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncContent{data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/aisuggest/SyncContent;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", scene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/aisuggest/SyncContent;->scene:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
