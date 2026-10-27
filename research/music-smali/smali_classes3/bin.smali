.class public Lbin;
.super Lbio;
.source "NeteaseMusicPlayHandler.java"


# direct methods
.method public constructor <init>(Laqt;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lbio;-><init>(Laqt;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)I
    .locals 3

    .line 69
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getFileList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getFileList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    .line 72
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->isCanPlay()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v0

    if-ne v0, p2, :cond_1

    return p2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    .line 81
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result p1

    return p1

    :cond_3
    const/4 p2, 0x1

    .line 86
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getQuality: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NeteaseMusicPlayHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method protected c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 37
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getFileList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 38
    invoke-virtual {p0, p1}, Lbin;->e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I

    move-result v1

    .line 39
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getFileList()Ljava/util/List;

    move-result-object p1

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    .line 42
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v5

    if-ne v1, v5, :cond_1

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getPlayUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v0

    .line 45
    :cond_1
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getPlayUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v3, v0

    goto :goto_0

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkFileToRequest: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NeteaseMusicPlayHandler"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "netease_sp_vip_change"

    return-object v0
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I
    .locals 3

    .line 58
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->F()Last;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0}, Last;->F()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 60
    :goto_0
    invoke-super {p0, p1}, Lbio;->e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I

    move-result v1

    if-lez v0, :cond_1

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getQuality: forceQuality = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NeteaseMusicPlayHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move v0, v1

    .line 65
    :goto_1
    invoke-virtual {p0, p1, v0}, Lbin;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)I

    move-result p1

    return p1
.end method

.method protected f()Lbci;
    .locals 1

    .line 91
    invoke-static {}, Lbck;->a()Lbck;

    move-result-object v0

    return-object v0
.end method

.method public h()Lbae;
    .locals 1

    .line 96
    invoke-static {}, Lbba;->a()Lbba;

    move-result-object v0

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    const-string v0, "NeteaseMusicPlayHandler"

    return-object v0
.end method
