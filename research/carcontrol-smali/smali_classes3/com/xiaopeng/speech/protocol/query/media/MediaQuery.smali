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

    return-void
.end method


# virtual methods
.method protected backward(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->backward(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected cancelCollect(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->cancelCollect(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected close(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->close(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected collect(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->collect(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected forward(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->forward(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected getMediaInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->getMediaInfo()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected mediaAudioBookListPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaAudioBookListPlay(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected mediaAudioBookPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaAudioBookPlay(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected mediaBluetoothPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 163
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaBluetoothPlay(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected mediaCollectPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 175
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaCollectPlay(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected mediaFmLocalOn(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaFmLocalOn(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected mediaHistoryListPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaHistoryListPlay(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected mediaListPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaListPlay(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected mediaMusicDailyrecPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaMusicDailyrecPlay(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected mediaMusicIsInstalled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 207
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaMusicIsInstalled(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected mediaMusicIsPlaying(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaMusicIsPlaying(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected mediaMusicNewsPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaMusicNewsPlay(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected mediaMusicPersonalityPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaMusicPersonalityPlay(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected mediaMusicPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaMusicPlay(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected mediaMusicPlayType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 197
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaMusicPlayType(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected mediaSpecificSourcePlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 213
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaSpecificSourcePlay(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected mediaUsbPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->mediaUsbPlay(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected next(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->next(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected pause(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 31
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->pause(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected play(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 24
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->play(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected playMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->playMode(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected playModeClose(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->playModeClose(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected prev(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->prev(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected resume(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->resume(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected setTime(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->setTime(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected speedDown(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->speedDown(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected speedSet(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->speedSet(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected speedUp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->speedUp(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected stop(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;->stop(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
