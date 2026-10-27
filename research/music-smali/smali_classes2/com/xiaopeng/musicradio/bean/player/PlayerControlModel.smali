.class public abstract Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;
.super Ljava/lang/Object;
.source "PlayerControlModel.java"

# interfaces
.implements Laqt;
.implements Lcom/xiaopeng/musicradio/common/f;
.implements Lcom/xiaopeng/musicradio/player/h$a;


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayerControlModel"


# instance fields
.field private mAudioFocusModel:Lask;

.field private mFocusChangeListener:Lask$a;

.field protected mPlayState:I

.field private mPlayWhenReady:Z

.field protected mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

.field protected mPlayingPosition:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayState:I

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayingPosition:I

    .line 51
    new-instance v0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1;-><init>(Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mFocusChangeListener:Lask$a;

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayWhenReady:Z

    .line 34
    new-instance v0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->getPlayerType()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->setPlayListener(Lcom/xiaopeng/musicradio/player/h$a;)V

    .line 36
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mAudioFocusModel:Lask;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;)Lask;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mAudioFocusModel:Lask;

    return-object p0
.end method

.method private dealWhenComplete()V
    .locals 2

    .line 232
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->nextByLogic()V

    return-void
.end method


# virtual methods
.method protected changePlayer()V
    .locals 2

    .line 359
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->getPlayerType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 360
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->getPlayerType()I

    move-result v1

    invoke-virtual {v0, v1}, Laqr;->a(I)V

    :cond_0
    return-void
.end method

.method protected dealPlayState(I)V
    .locals 2

    .line 240
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 243
    :cond_0
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayState:I

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealPlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerControlModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->postStateEvent()V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 249
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->savePlayState(I)V

    goto :goto_1

    .line 247
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->savePlayState(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public dispatchInfoEvent()V
    .locals 0

    .line 406
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->postInfoEvent()V

    return-void
.end method

.method public enablePlayMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 137
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getDuration()I

    move-result v0

    return v0
.end method

.method public getListTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getPlayState()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayState:I

    return v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayWhenReady:Z

    return v0
.end method

.method protected abstract getPlayerType()I
.end method

.method public getPosition()I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSecondPosition()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getSecondPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getVolume()F

    move-result v0

    return v0
.end method

.method public hasNextSource()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract hasPlayingInfo()Z
.end method

.method protected abstract hasPlayingList()Z
.end method

.method public isNotPlayable()Z
    .locals 2

    .line 365
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lask;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->tips_can_not_play_reading:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method protected abstract nextByLogic()V
.end method

.method public onAudioInputFormatChanged(Ljava/lang/String;I)V
    .locals 0

    .line 401
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->getPlayerType()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$a;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public onAudioSeesionId(I)V
    .locals 1

    .line 396
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$g;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$g;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloaded(Ljava/lang/String;J)V
    .locals 2

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " length="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlayerControlModel"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayPosition(IIZ)V
    .locals 2

    .line 331
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayingPosition:I

    .line 332
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->getPlayerType()I

    move-result v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;-><init>(IIIZ)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public onSetData(Landroid/os/Bundle;)V
    .locals 1

    .line 347
    new-instance v0, Lbkx;

    invoke-direct {v0}, Lbkx;-><init>()V

    invoke-virtual {v0, p1}, Lbkx;->a(Landroid/os/Bundle;)Lbkx$a;

    move-result-object p1

    .line 348
    instance-of v0, p1, Lbky;

    if-eqz v0, :cond_0

    .line 349
    invoke-interface {p1}, Lbkx$a;->b()V

    :cond_0
    return-void
.end method

.method public onTimeLineChange()V
    .locals 2

    .line 342
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$ae;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->getPlayerType()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$ae;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 191
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->pauseByLogic()V

    .line 192
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bn;->a()V

    return-void
.end method

.method public pauseByLogic()V
    .locals 2

    const-string v0, "PlayerControlModel"

    const-string v1, "pause: "

    .line 283
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 284
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->dealPlayState(I)V

    .line 285
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$2;-><init>(Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;)V

    invoke-virtual {v0, v1}, Lask;->a(Lask$d;)V

    return-void
.end method

.method protected pauseInner()V
    .locals 2

    const-string v0, "PlayerControlModel"

    const-string v1, "pauseInner: ========= "

    .line 196
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->pause()V

    return-void
.end method

.method public play()V
    .locals 0

    .line 266
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->triggerPlay()V

    .line 267
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->playByLogic()V

    return-void
.end method

.method public playByLogic()V
    .locals 2

    const-string v0, "PlayerControlModel"

    const-string v1, "play: ====="

    .line 300
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->isNotPlayable()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "can play: "

    .line 304
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->changePlayer()V

    .line 307
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$3;-><init>(Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;)V

    invoke-virtual {v0, v1}, Lask;->b(Lask$d;)V

    return-void
.end method

.method protected abstract playCurrent()V
.end method

.method protected abstract playCurrentWithPos(I)V
.end method

.method public playNext(I)I
    .locals 0

    .line 255
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->play()V

    const/4 p1, 0x0

    return p1
.end method

.method public playState(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->dealPlayState(I)V

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->setPlayWhenReady(Z)V

    .line 217
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->dealPlayState(I)V

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->dealPlayState(I)V

    goto :goto_0

    .line 210
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->dealWhenComplete()V

    goto :goto_0

    .line 223
    :cond_4
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->dealPlayState(I)V

    :goto_0
    return-void
.end method

.method public playSub(I)V
    .locals 0

    .line 261
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->play()V

    return-void
.end method

.method public postInfoEvent()V
    .locals 2

    .line 373
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->getPlayerType()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract postStateEvent()V
.end method

.method protected prepare(Ljava/lang/String;ZZZ)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->postInfoEvent()V

    .line 90
    invoke-virtual {p0, p4}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->setPlayWhenReady(Z)V

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->dealPlayState(I)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepare: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cache = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " playWhenReady = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerControlModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->prepareData(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public abstract rebootPlay(Z)V
.end method

.method public register()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mAudioFocusModel:Lask;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mFocusChangeListener:Lask$a;

    invoke-virtual {v0, p0, v1}, Lask;->a(Laqt;Lask$a;)V

    .line 42
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected replay(Z)V
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replay, resumeVolume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayerControlModel"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayState:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->isIdle()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 178
    iget-object p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 179
    iget-object p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->seekTo(I)V

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->postInfoEvent()V

    const/4 p1, 0x1

    .line 182
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->dealPlayState(I)V

    .line 183
    iget-object p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->start()V

    goto :goto_0

    .line 185
    :cond_2
    iget p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayingPosition:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->playCurrentWithPos(I)V

    :goto_0
    return-void
.end method

.method protected abstract savePlayState(I)V
.end method

.method public seekTo(I)V
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekTo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerControlModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->seekTo(I)V

    :cond_0
    return-void
.end method

.method protected setPlayWhenReady(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayWhenReady:Z

    return-void
.end method

.method public setSonicVolume(F)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->setSonicVolume(F)V

    return-void
.end method

.method public setVolume(F)Z
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0, p1, p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->setVolume(FF)V

    const/4 p1, 0x1

    return p1
.end method

.method public startSeek()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->startSeek()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, -0x1

    .line 202
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->dealPlayState(I)V

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->stop()V

    return-void
.end method

.method public supportRandom()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected triggerPlay()V
    .locals 3

    .line 276
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 277
    :cond_0
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bn;->a(I)V

    :cond_1
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mAudioFocusModel:Lask;

    invoke-virtual {v0, p0}, Lask;->a(Laqt;)V

    .line 48
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method
