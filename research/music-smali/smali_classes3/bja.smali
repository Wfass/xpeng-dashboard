.class public Lbja;
.super Lbjb;
.source "KugouReplayUp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lbjb;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KugouReplayUp"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean;-><init>()V

    .line 23
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v2

    invoke-virtual {p0}, Lbja;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/model/music/i;->e(I)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 26
    new-instance v5, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;

    invoke-direct {v5}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;-><init>()V

    .line 27
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;->setHash(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v5, v3, v4}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;->setInsertTime(J)V

    .line 29
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/music/i;->getPosition()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;->setOffset(I)V

    .line 31
    invoke-virtual {v0, v5}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean;->setCurrentSong(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;)V

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upload:size = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 35
    new-instance v5, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;

    invoke-direct {v5}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;-><init>()V

    .line 36
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;->setHash(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v5, v3, v4}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;->setInsertTime(J)V

    .line 38
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "upload: song = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean;->getSongList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lbja;->b(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lbdc;->a()Lbdc;

    move-result-object p2

    new-instance v1, Lbja$1;

    invoke-direct {v1, p0, v3, v4, p1}, Lbja$1;-><init>(Lbja;JLcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-virtual {p2, v0, v1}, Lbdc;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean;Lbkv;)V

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
