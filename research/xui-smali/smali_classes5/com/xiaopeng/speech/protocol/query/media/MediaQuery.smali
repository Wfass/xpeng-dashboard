.class public Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "MediaQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method protected backward(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.backward"
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->backward(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected cancelCollect(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.control.collect.cancel"
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->cancelCollect(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected close(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.control.close"
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->close(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected collect(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.control.collect"
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->collect(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected forward(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.forward"
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->forward(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getMediaInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.info.query"
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->getMediaInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected mediaAudioBookListPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.audiobook.list.play"
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaAudioBookListPlay(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected mediaAudioBookPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.xmly.control.play"
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaAudioBookPlay(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected mediaBluetoothPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.music.control.bluetooth.play.random"
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaBluetoothPlay(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected mediaCollectPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.music.control.collect.play"
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaCollectPlay(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected mediaFmLocalOn(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.fm.local.on"
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaFmLocalOn(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected mediaHistoryListPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.music.control.playlist.history.play"
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaHistoryListPlay(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected mediaListPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.music.list.play"
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaListPlay(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected mediaMusicDailyrecPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.music.dailyrec.play"
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaMusicDailyrecPlay(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected mediaMusicIsInstalled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.music.is.installed"
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaMusicIsInstalled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected mediaMusicIsPlaying(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.music.is.playing"
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaMusicIsPlaying(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected mediaMusicNewsPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.music.news.play"
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaMusicNewsPlay(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected mediaMusicPersonalityPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.fm.play.personality"
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaMusicPersonalityPlay(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected mediaMusicPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.music.control.play"
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaMusicPlay(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected mediaMusicPlayType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.music.playtype"
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaMusicPlayType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected mediaSpecificSourcePlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.music.play.specific.source"
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaSpecificSourcePlay(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected mediaUsbPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.music.control.play.usb"
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaUsbPlay(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected next(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.control.next"
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->next(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected pause(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.control.pause"
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->pause(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected play(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.control.play"
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->play(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected playMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.control.mode"
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->playMode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected playModeClose(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.control.mode.close"
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->playModeClose(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected prev(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.control.prev"
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->prev(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected resume(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.control.resume"
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->resume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected setTime(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.settime"
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->setTime(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected speedDown(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.speed.down"
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->speedDown(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected speedSet(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.speed.set"
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->speedSet(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected speedUp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.speed.up"
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->speedUp(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected stop(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.control.stop"
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->stop(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
