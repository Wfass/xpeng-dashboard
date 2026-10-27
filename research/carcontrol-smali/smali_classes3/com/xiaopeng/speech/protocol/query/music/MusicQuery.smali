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

    return-void
.end method


# virtual methods
.method protected getInfoAlbum(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->getPlayAlbum()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getInfoArtist(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->getPlayArtist()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getInfoCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->getPlayCategory()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getInfoLyric(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->getPlayLyric()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getInfoTite(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->getPlayTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getPlayInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->getPlayInfo()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getPlaySpeed(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->getPlaySpeed()D

    move-result-wide p1

    return-wide p1
.end method

.method protected getPlayType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->getPlayType()I

    move-result p1

    return p1
.end method

.method protected getPlaylistHistory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 p1, 0x1

    .line 24
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "count"

    .line 26
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 29
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 31
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->getHistoryPlayInfo(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getSearchResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->getSearchResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getUsbState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->getUsbState()I

    move-result p1

    return p1
.end method

.method protected hasBluetoothMusicList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->hasBluetoothMusicList()Z

    move-result p1

    return p1
.end method

.method protected isBtConnected(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isBtConnected()Z

    move-result p1

    return p1
.end method

.method protected isCanCollected(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isCanCollected()Z

    move-result p1

    return p1
.end method

.method protected isCollectListEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 96
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "type"

    .line 97
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    .line 101
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isCollectListEmpty(I)Z

    move-result p1

    return p1
.end method

.method protected isHistoryEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 79
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "type"

    .line 80
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    .line 84
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isHistoryEmpty(I)Z

    move-result p1

    return p1
.end method

.method protected isKuGouAuthed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isKuGouAuthed()Z

    move-result p1

    return p1
.end method

.method protected isMusicAccountLogin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isMusicAccountLogin()Z

    move-result p1

    return p1
.end method

.method protected isPlayCollect(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isPlayCollect(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected isPlayHistory(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isPlayHistory(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected isPlayPodcast(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isPlayPodcast(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected isPlaySimilar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isPlaySimilar()Z

    move-result p1

    return p1
.end method

.method protected isPlaying(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isPlaying()Z

    move-result p1

    return p1
.end method

.method protected isQualityPageOpend(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isQualityPageOpend()Z

    move-result p1

    return p1
.end method

.method protected isSupportBtPlay(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isSupportBtPlay()Z

    move-result p1

    return p1
.end method

.method protected isSupportRadioPlay(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 188
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isSupportRadioPlay()Z

    move-result p1

    return p1
.end method

.method protected isSupportSettime(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 193
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isSupportSettime()Z

    move-result p1

    return p1
.end method

.method protected isSupportSpeed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 178
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "value"

    .line 179
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    .line 183
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    int-to-double v0, p1

    invoke-interface {p2, v0, v1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isSupportSpeed(D)Z

    move-result p1

    return p1
.end method

.method protected isSupportSpotifyPlay(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 166
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isSupportSpotifyPlay()Z

    move-result p1

    return p1
.end method

.method protected isXimalayaAccountLogin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;->isXimalayaAccountLogin()Z

    move-result p1

    return p1
.end method
