.class public Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "MusicQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method protected getInfoAlbum(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.info.query.album"
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->getPlayAlbum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getInfoArtist(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.info.query.artist"
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->getPlayArtist()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getInfoCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->getPlayCategory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getInfoLyric(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->getPlayLyric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getInfoTite(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.info.query.title"
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->getPlayTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPlayInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.info.query"
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->getPlayInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPlaySpeed(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.get.speed"
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->getPlaySpeed()D

    move-result-wide v0

    return-wide v0
.end method

.method protected getPlayType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.playtype"
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->getPlayType()I

    move-result v0

    return v0
.end method

.method protected getPlaylistHistory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    move v1, v0

    .line 24
    .local v1, "count":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    .local v2, "jsonObject":Lorg/json/JSONObject;
    nop

    .line 26
    const-string v3, "count"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 30
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 31
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->getHistoryPlayInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSearchResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.search.result"
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->getSearchResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUsbState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.get.usb.state"
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->getUsbState()I

    move-result v0

    return v0
.end method

.method protected hasBluetoothMusicList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.has.bluetooth.musiclist"
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->hasBluetoothMusicList()Z

    move-result v0

    return v0
.end method

.method protected isBtConnected(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.is.bt.connected"
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isBtConnected()Z

    move-result v0

    return v0
.end method

.method protected isCanCollected(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.is.can.collected"
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isCanCollected()Z

    move-result v0

    return v0
.end method

.method protected isCollectListEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.is.collect.empty"
    .end annotation

    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "type":I
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 100
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 101
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isCollectListEmpty(I)Z

    move-result v1

    return v1
.end method

.method protected isHistoryEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.is.history.empty"
    .end annotation

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "type":I
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 83
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 84
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isHistoryEmpty(I)Z

    move-result v1

    return v1
.end method

.method protected isKuGouAuthed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.is.kugou.authed"
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isKuGouAuthed()Z

    move-result v0

    return v0
.end method

.method protected isMusicAccountLogin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.account.login"
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isMusicAccountLogin()Z

    move-result v0

    return v0
.end method

.method protected isPlayCollect(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.is.play.collect"
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isPlayCollect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isPlayHistory(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.is.play.history"
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isPlayHistory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isPlayPodcast(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.is.podcast"
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isPlayPodcast(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isPlaySimilar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.is.play.similar"
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isPlaySimilar()Z

    move-result v0

    return v0
.end method

.method protected isPlaying(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.is.playing"
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isPlaying()Z

    move-result v0

    return v0
.end method

.method protected isQualityPageOpend(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.quality.page.open"
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isQualityPageOpend()Z

    move-result v0

    return v0
.end method

.method protected isSupportBtPlay(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.support.bt.play"
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isSupportBtPlay()Z

    move-result v0

    return v0
.end method

.method protected isSupportRadioPlay(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.support.radio.play"
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isSupportRadioPlay()Z

    move-result v0

    return v0
.end method

.method protected isSupportSettime(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.support.settime"
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isSupportSettime()Z

    move-result v0

    return v0
.end method

.method protected isSupportSpeed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.support.speed"
    .end annotation

    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, "value":I
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 179
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 182
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 183
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    int-to-double v2, v0

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isSupportSpeed(D)Z

    move-result v1

    return v1
.end method

.method protected isSupportSpotifyPlay(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.support.spotify.play"
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isSupportSpotifyPlay()Z

    move-result v0

    return v0
.end method

.method protected isXimalayaAccountLogin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ximalaya.account.login"
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isXimalayaAccountLogin()Z

    move-result v0

    return v0
.end method
