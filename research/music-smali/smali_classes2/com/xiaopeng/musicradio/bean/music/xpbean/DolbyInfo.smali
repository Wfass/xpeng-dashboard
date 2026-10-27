.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyInfo;
.super Ljava/lang/Object;
.source "DolbyInfo.java"


# instance fields
.field private previewPicUrl:Ljava/lang/String;

.field private size:J

.field private title:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreviewPicUrl()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyInfo;->previewPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyInfo;->size:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyInfo;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setPreviewPicUrl(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyInfo;->previewPicUrl:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyInfo;->size:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyInfo;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DolbyInfo{url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", previewPicUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyInfo;->previewPicUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyInfo;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
