.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/AuditionInfo;
.super Ljava/lang/Object;
.source "AuditionInfo.java"


# instance fields
.field private isDown:Z

.field private previewPicUrl:Ljava/lang/String;

.field private size:J

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreviewPicUrl()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/AuditionInfo;->previewPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/AuditionInfo;->size:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/AuditionInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/AuditionInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isDown()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/AuditionInfo;->isDown:Z

    return v0
.end method

.method public setDown(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/AuditionInfo;->isDown:Z

    return-void
.end method

.method public setPreviewPicUrl(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/AuditionInfo;->previewPicUrl:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 23
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/AuditionInfo;->size:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/AuditionInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/AuditionInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuditionInfo{url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/AuditionInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", previewPicUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/AuditionInfo;->previewPicUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/AuditionInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/AuditionInfo;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/AuditionInfo;->isDown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
