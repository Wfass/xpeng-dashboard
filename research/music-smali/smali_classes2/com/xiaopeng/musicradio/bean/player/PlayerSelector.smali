.class public Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;
.super Ljava/lang/Object;
.source "PlayerSelector.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/player/d;
.implements Lcom/xiaopeng/musicradio/player/l;


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayerSelector"


# instance fields
.field private mCache:Lcom/xiaopeng/musicradio/player/b;

.field private mLastHash:Ljava/lang/String;

.field private mOperation:Lcom/xiaopeng/musicradio/player/d;

.field private mPause:Z

.field private mPlayListener:Lcom/xiaopeng/musicradio/player/h$a;

.field private mPlayUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/xiaopeng/musicradio/player/n;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/player/n;-><init>(I)V

    .line 35
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/player/n;->a(Lcom/xiaopeng/musicradio/player/l;)V

    .line 36
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    .line 37
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mCache:Lcom/xiaopeng/musicradio/player/b;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;)Lcom/xiaopeng/musicradio/player/h$a;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mPlayListener:Lcom/xiaopeng/musicradio/player/h$a;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mLastHash:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mPause:Z

    return p0
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/player/d;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "PlayerSelector"

    const-string v1, "getCurrentPosition: "

    .line 187
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/player/d;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "PlayerSelector"

    const-string v1, "getDuration: "

    .line 214
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getPlayUrl()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mPlayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/player/d;->getPlaybackState()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "PlayerSelector"

    const-string v1, "getPlaybackState: "

    .line 223
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSecondPosition()I
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/player/d;->getSecondPosition()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "PlayerSelector"

    const-string v1, "getSecondPosition: "

    .line 196
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/player/d;->getSessionId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/player/d;->getVolume()F

    move-result v0

    return v0
.end method

.method public isCacheComplete(Ljava/lang/String;)Z
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mCache:Lcom/xiaopeng/musicradio/player/b;

    if-eqz v0, :cond_0

    .line 364
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/player/b;->isCacheComplete(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isIdle()Z
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/player/d;->isIdle()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "PlayerSelector"

    const-string v1, "isIdle: "

    .line 178
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/player/d;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "PlayerSelector"

    const-string v1, "isPlaying: "

    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public loadingChange(Ljava/lang/String;Z)V
    .locals 1

    .line 296
    new-instance v0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$4;-><init>(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;Ljava/lang/String;Z)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAudioInputFormatChanged(Ljava/lang/String;I)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mPlayListener:Lcom/xiaopeng/musicradio/player/h$a;

    if-eqz v0, :cond_0

    .line 352
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/player/h$a;->onAudioInputFormatChanged(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onAudioSessionId(Ljava/lang/String;I)V
    .locals 0

    .line 344
    iget-object p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mPlayListener:Lcom/xiaopeng/musicradio/player/h$a;

    if-eqz p1, :cond_0

    .line 345
    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/player/h$a;->onAudioSeesionId(I)V

    :cond_0
    return-void
.end method

.method public onDownloaded(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 320
    new-instance v6, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$6;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$6;-><init>(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v6}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPlayError(Ljava/lang/String;I)V
    .locals 1

    .line 272
    new-instance v0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$2;-><init>(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;Ljava/lang/String;I)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPlayPosition(Ljava/lang/String;IIZ)V
    .locals 0

    .line 284
    new-instance p1, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$3;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$3;-><init>(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;IIZ)V

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSetData(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 332
    new-instance p1, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$7;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$7;-><init>(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;Landroid/os/Bundle;)V

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTimeLineChange(Ljava/lang/String;)V
    .locals 1

    .line 308
    new-instance v0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$5;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$5;-><init>(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;Ljava/lang/String;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mPause:Z

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/player/d;->pause()V

    :cond_0
    return-void
.end method

.method public playState(Ljava/lang/String;I)V
    .locals 1

    .line 258
    new-instance v0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$1;-><init>(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;Ljava/lang/String;I)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public prepareData(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mPause:Z

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mPlayUrl:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p1}, Lblb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mLastHash:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mLastHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerSelector"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/player/d;->prepareData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public prepareData(Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mPause:Z

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mPlayUrl:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p1}, Lblb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mLastHash:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareData1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mLastHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerSelector"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/player/d;->prepareData(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public prepareData(Ljava/lang/String;ZZ)V
    .locals 2

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mPause:Z

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mPlayUrl:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    if-eqz v0, :cond_0

    .line 99
    invoke-static {p1}, Lblb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mLastHash:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareData2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mLastHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerSelector"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/musicradio/player/d;->prepareData(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public prepareData(Ljava/lang/String;ZZZ)V
    .locals 4

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mPause:Z

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mPlayUrl:Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    if-eqz v1, :cond_2

    .line 110
    invoke-static {p1}, Lblb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mLastHash:Ljava/lang/String;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareData3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mLastHash:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PlayerSelector"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 113
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/model/car/a;->b(Z)V

    .line 116
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move p4, v0

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/player/d;->prepareData(Ljava/lang/String;ZZZ)V

    :cond_2
    return-void
.end method

.method public refreshHash(Ljava/lang/String;)V
    .locals 2

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mLastHash:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshHash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayerSelector"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mPause:Z

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/player/d;->release()V

    :cond_0
    return-void
.end method

.method public removeCache(Ljava/lang/String;)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mCache:Lcom/xiaopeng/musicradio/player/b;

    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/player/b;->removeCache(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mPause:Z

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/player/d;->reset()V

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mPause:Z

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/player/d;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    if-eqz v0, :cond_0

    .line 230
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/player/d;->setData(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setPlayListener(Lcom/xiaopeng/musicradio/player/h$a;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mPlayListener:Lcom/xiaopeng/musicradio/player/h$a;

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/player/d;->setPlaySpeed(F)V

    :cond_0
    return-void
.end method

.method public setSonicVolume(F)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/player/d;->setSonicVolume(F)V

    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/player/d;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mPause:Z

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/player/d;->start()V

    :cond_0
    return-void
.end method

.method public startSeek()V
    .locals 1

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mPause:Z

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/player/d;->startSeek()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mPause:Z

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->mOperation:Lcom/xiaopeng/musicradio/player/d;

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/player/d;->stop()V

    :cond_0
    return-void
.end method
