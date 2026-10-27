.class public interface abstract Lcom/xiaopeng/speech/protocol/query/music/IMusicQueryCaller;
.super Ljava/lang/Object;
.source "IMusicQueryCaller.java"

# interfaces
.implements Lcom/xiaopeng/speech/IQueryCaller;


# virtual methods
.method public abstract getHistoryPlayInfo(I)Ljava/lang/String;
.end method

.method public abstract getPlayAlbum()Ljava/lang/String;
.end method

.method public abstract getPlayArtist()Ljava/lang/String;
.end method

.method public abstract getPlayCategory()Ljava/lang/String;
.end method

.method public abstract getPlayInfo()Ljava/lang/String;
.end method

.method public abstract getPlayLyric()Ljava/lang/String;
.end method

.method public getPlaySpeed()D
    .locals 2

    .line 243
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract getPlayTitle()Ljava/lang/String;
.end method

.method public abstract getPlayType()I
.end method

.method public getSearchResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getUsbState()I
.end method

.method public abstract hasBluetoothMusicList()Z
.end method

.method public abstract isBtConnected()Z
.end method

.method public abstract isCanCollected()Z
.end method

.method public abstract isCollectListEmpty(I)Z
.end method

.method public abstract isHistoryEmpty(I)Z
.end method

.method public abstract isKuGouAuthed()Z
.end method

.method public isMusicAccountLogin()Z
    .locals 1

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayCollect(Ljava/lang/String;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayHistory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayPodcast(Ljava/lang/String;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isPlaySimilar()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public isQualityPageOpend()Z
    .locals 1

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportBtPlay()Z
    .locals 1

    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportRadioPlay()Z
    .locals 1

    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportSettime()Z
    .locals 1

    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportSpeed(D)Z
    .locals 1
    .param p1, "value"    # D

    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportSpotifyPlay()Z
    .locals 1

    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public isXimalayaAccountLogin()Z
    .locals 1

    .line 173
    const/4 v0, 0x0

    return v0
.end method
