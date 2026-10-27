.class public Lbcz;
.super Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;
.source "NetRadioModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbcz$a;
    }
.end annotation


# instance fields
.field private a:Lbdb;

.field private c:Lbcw;

.field private d:I

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lbcz;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lbcz$1;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lbcz;-><init>()V

    return-void
.end method

.method static synthetic a(Lbcz;)I
    .locals 0

    .line 36
    iget p0, p0, Lbcz;->mPlayState:I

    return p0
.end method

.method static synthetic a(Lbcz;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;IZ)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lbcz;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;IZ)V

    return-void
.end method

.method static synthetic a(Lbcz;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;ZZ)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lbcz;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;ZZ)V

    return-void
.end method

.method private a(Lbdb;)V
    .locals 0

    .line 260
    invoke-virtual {p0}, Lbcz;->changePlayer()V

    .line 261
    invoke-direct {p0}, Lbcz;->s()V

    .line 262
    iput-object p1, p0, Lbcz;->a:Lbdb;

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;IZ)V
    .locals 3

    .line 301
    invoke-virtual {p0}, Lbcz;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getPlayUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetRadioModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p0, p1}, Lbcz;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string v0, "play: ====="

    .line 307
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p0, p1, p3}, Lbcz;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;Z)V

    .line 309
    iput p2, p0, Lbcz;->mPlayingPosition:I

    .line 310
    invoke-virtual {p0, p2}, Lbcz;->seekTo(I)V

    .line 311
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ao;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ao;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 313
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getId()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 314
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getHz()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lbcz;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 316
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lbcz;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;ZZ)V
    .locals 7

    .line 245
    iget-object p2, p0, Lbcz;->mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->reset()V

    if-eqz p1, :cond_2

    .line 247
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getPlayUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 251
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object p2

    const-string v0, ""

    if-nez p2, :cond_1

    move-object v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    .line 252
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 252
    invoke-static/range {v1 .. v6}, Lbkx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Landroid/os/Bundle;

    move-result-object p2

    .line 255
    iget-object v0, p0, Lbcz;->mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->setData(Landroid/os/Bundle;)V

    .line 256
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getPlayUrl()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2, p3}, Lbcz;->prepare(Ljava/lang/String;ZZZ)V

    return-void

    :cond_2
    :goto_1
    const/4 p1, 0x4

    .line 248
    invoke-virtual {p0, p1}, Lbcz;->dealPlayState(I)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetAutoReplay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetRadioModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iput-boolean p1, p0, Lbcz;->e:Z

    .line 631
    iget-boolean p1, p0, Lbcz;->e:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 632
    invoke-virtual {p0, p1}, Lbcz;->savePlayState(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lbcz;)I
    .locals 0

    .line 36
    iget p0, p0, Lbcz;->mPlayState:I

    return p0
.end method

.method static synthetic c(Lbcz;)I
    .locals 0

    .line 36
    iget p0, p0, Lbcz;->mPlayState:I

    return p0
.end method

.method private c(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V
    .locals 2

    .line 294
    invoke-virtual {p0}, Lbcz;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 297
    invoke-direct {p0, p1, v0, v1}, Lbcz;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;IZ)V

    return-void
.end method

.method static synthetic d(Lbcz;)Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;
    .locals 0

    .line 36
    iget-object p0, p0, Lbcz;->mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    return-object p0
.end method

.method static synthetic e(Lbcz;)Lbdb;
    .locals 0

    .line 36
    iget-object p0, p0, Lbcz;->a:Lbdb;

    return-object p0
.end method

.method public static k()Lbcz;
    .locals 1

    .line 53
    sget-object v0, Lbcz$a;->a:Lbcz;

    return-object v0
.end method

.method private s()V
    .locals 1

    .line 266
    iget-object v0, p0, Lbcz;->a:Lbdb;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Lbdb;->f()V

    :cond_0
    return-void
.end method

.method private t()Z
    .locals 1

    .line 620
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    invoke-virtual {v0}, Lask;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lbcz;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 374
    invoke-virtual {p0}, Lbcz;->triggerPlay()V

    .line 375
    invoke-virtual {p0}, Lbcz;->nextByLogic()V

    return-void
.end method

.method public a(F)V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 532
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPlayError: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tryCount = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbcz;->d:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " playState = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbcz;->mPlayState:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "NetRadioModel"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xa

    if-le p1, p2, :cond_0

    return-void

    .line 536
    :cond_0
    iget p1, p0, Lbcz;->d:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lbcz;->d:I

    .line 537
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget p1, p0, Lbcz;->d:I

    const/4 v0, 0x3

    if-gt p1, v0, :cond_2

    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lbcz;->mPlayState:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 544
    :cond_1
    iget p1, p0, Lbcz;->mPlayingPosition:I

    invoke-virtual {p0, p1}, Lbcz;->playCurrentWithPos(I)V

    goto :goto_1

    .line 539
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lbcz;->pauseByLogic()V

    .line 540
    invoke-direct {p0, p2}, Lbcz;->a(Z)V

    .line 541
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/by;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbcz;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 160
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 162
    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_0
    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    :goto_0
    new-instance p2, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;

    invoke-direct {p2, p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 1

    .line 205
    invoke-virtual {p0}, Lbcz;->triggerPlay()V

    const/4 v0, 0x1

    .line 206
    invoke-virtual {p0, p1, v0}, Lbcz;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;Z)V

    return-void
.end method

.method a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;Z)V
    .locals 2

    .line 210
    invoke-virtual {p0}, Lbcz;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 213
    :cond_0
    invoke-static {}, Lbcy;->a()Lbcy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbcy;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playLive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetRadioModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lbcz;->c:Lbcw;

    if-nez v0, :cond_1

    .line 216
    new-instance v0, Lbcw;

    invoke-direct {v0}, Lbcw;-><init>()V

    iput-object v0, p0, Lbcz;->c:Lbcw;

    .line 218
    :cond_1
    iget-object v0, p0, Lbcz;->c:Lbcw;

    invoke-direct {p0, v0}, Lbcz;->a(Lbdb;)V

    .line 219
    iget-object v0, p0, Lbcz;->c:Lbcw;

    new-instance v1, Lbcz$3;

    invoke-direct {v1, p0, p1}, Lbcz$3;-><init>(Lbcz;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    invoke-virtual {v0, p1, v1}, Lbcw;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;Lbcw$b;)V

    .line 241
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lbcz;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;ZZ)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lbcz;->triggerPlay()V

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, p1, v0}, Lbcz;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;Z)V

    return-void
.end method

.method a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;Z)V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lbcz;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playBack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetRadioModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lbcz;->c:Lbcw;

    if-nez v0, :cond_1

    .line 92
    new-instance v0, Lbcw;

    invoke-direct {v0}, Lbcw;-><init>()V

    iput-object v0, p0, Lbcz;->c:Lbcw;

    .line 94
    :cond_1
    iget-object v0, p0, Lbcz;->c:Lbcw;

    invoke-direct {p0, v0}, Lbcz;->a(Lbdb;)V

    .line 95
    iget-object v0, p0, Lbcz;->c:Lbcw;

    new-instance v1, Lbcz$1;

    invoke-direct {v1, p0, p1}, Lbcz$1;-><init>(Lbcz;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    invoke-virtual {v0, p1, v1}, Lbcw;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;Lbcw$b;)V

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0, p2}, Lbcz;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;ZZ)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toastPlayError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetRadioModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 172
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    return-void
.end method

.method a(Ljava/lang/String;Z)V
    .locals 2

    .line 123
    invoke-virtual {p0}, Lbcz;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playLive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetRadioModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lbcz;->c:Lbcw;

    if-nez v0, :cond_1

    .line 128
    new-instance v0, Lbcw;

    invoke-direct {v0}, Lbcw;-><init>()V

    iput-object v0, p0, Lbcz;->c:Lbcw;

    .line 130
    :cond_1
    invoke-virtual {p0, p2}, Lbcz;->setPlayWhenReady(Z)V

    .line 131
    iget-object v0, p0, Lbcz;->c:Lbcw;

    invoke-direct {p0, v0}, Lbcz;->a(Lbdb;)V

    const/4 v0, 0x1

    .line 132
    invoke-virtual {p0, v0}, Lbcz;->dealPlayState(I)V

    .line 133
    invoke-virtual {p0}, Lbcz;->postInfoEvent()V

    .line 134
    iget-object v0, p0, Lbcz;->c:Lbcw;

    new-instance v1, Lbcz$2;

    invoke-direct {v1, p0, p2}, Lbcz$2;-><init>(Lbcz;Z)V

    invoke-virtual {v0, p1, v1}, Lbcw;->a(Ljava/lang/String;Lbcw$b;)V

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)I
    .locals 1

    .line 323
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public b()V
    .locals 0

    .line 395
    invoke-virtual {p0}, Lbcz;->triggerPlay()V

    .line 396
    invoke-virtual {p0}, Lbcz;->l()V

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic d()Lcom/xiaopeng/musicradio/bean/BaseInfo;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lbcz;->m()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    return-object v0
.end method

.method protected dealPlayState(I)V
    .locals 1

    .line 443
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->dealPlayState(I)V

    .line 444
    iget p1, p0, Lbcz;->mPlayState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lbcz;->m()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/aw;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    goto :goto_0

    .line 446
    :cond_0
    iget p1, p0, Lbcz;->mPlayState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 447
    invoke-virtual {p0}, Lbcz;->m()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/aw;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public enablePlayMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()V
    .locals 0

    .line 575
    invoke-virtual {p0}, Lbcz;->pauseByLogic()V

    return-void
.end method

.method public g()V
    .locals 0

    .line 580
    invoke-virtual {p0}, Lbcz;->playByLogic()V

    return-void
.end method

.method public getDuration()I
    .locals 2

    .line 177
    invoke-virtual {p0}, Lbcz;->q()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 180
    :cond_0
    invoke-super {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->getDuration()I

    move-result v0

    return v0
.end method

.method protected getPlayerType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getPosition()I
    .locals 2

    .line 191
    invoke-virtual {p0}, Lbcz;->q()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 194
    :cond_0
    invoke-super {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->getPosition()I

    move-result v0

    return v0
.end method

.method public getSecondPosition()I
    .locals 1

    .line 200
    invoke-super {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->getSecondPosition()I

    move-result v0

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 2

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetAutoReplay, needRebootPlay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lbcz;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lask;->a()Lask;

    move-result-object v1

    invoke-virtual {v1}, Lask;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetRadioModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    invoke-virtual {v0}, Lask;->h()Z

    move-result v0

    return v0
.end method

.method protected hasPlayingInfo()Z
    .locals 1

    .line 427
    iget-object v0, p0, Lbcz;->a:Lbdb;

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0}, Lbdb;->n()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected hasPlayingList()Z
    .locals 1

    .line 435
    iget-object v0, p0, Lbcz;->a:Lbdb;

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v0}, Lbdb;->o()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 0

    .line 603
    invoke-virtual {p0}, Lbcz;->r()V

    return-void
.end method

.method public isNotPlayable()Z
    .locals 2

    .line 60
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lask;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget v0, Lbud$a;->tips_can_not_play_reading:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lbcz;->a(IZ)V

    :cond_0
    return v1
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method l()V
    .locals 1

    .line 400
    invoke-virtual {p0}, Lbcz;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lbcz;->a:Lbdb;

    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {v0}, Lbdb;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {p0}, Lbcz;->playCurrent()V

    :cond_1
    return-void
.end method

.method public m()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;
    .locals 1

    .line 479
    iget-object v0, p0, Lbcz;->a:Lbdb;

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0}, Lbdb;->g()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;
    .locals 1

    .line 486
    iget-object v0, p0, Lbcz;->a:Lbdb;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Lbdb;->p()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected nextByLogic()V
    .locals 1

    .line 380
    invoke-virtual {p0}, Lbcz;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lbcz;->a:Lbdb;

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {v0}, Lbdb;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    invoke-virtual {p0}, Lbcz;->playCurrent()V

    :cond_1
    return-void
.end method

.method public o()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;
    .locals 1

    .line 493
    iget-object v0, p0, Lbcz;->a:Lbdb;

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0}, Lbdb;->q()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onNetValid(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 613
    invoke-direct {p0}, Lbcz;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 614
    invoke-direct {p0, p1}, Lbcz;->a(Z)V

    .line 615
    invoke-virtual {p0, p1}, Lbcz;->replay(Z)V

    :cond_0
    return-void
.end method

.method public onPlayPosition(IIZ)V
    .locals 2

    .line 414
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->onPlayPosition(IIZ)V

    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    const-wide/16 v0, 0x3

    .line 416
    rem-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-nez p2, :cond_1

    iget-object p2, p0, Lbcz;->a:Lbdb;

    if-eqz p2, :cond_1

    .line 417
    invoke-virtual {p0}, Lbcz;->q()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 418
    iget-object p1, p0, Lbcz;->a:Lbdb;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lbdb;->a(I)V

    goto :goto_0

    .line 420
    :cond_0
    iget-object p2, p0, Lbcz;->a:Lbdb;

    invoke-virtual {p2, p1}, Lbdb;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            ">;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lbcz;->c:Lbcw;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Lbcw;->r()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pause()V
    .locals 1

    .line 354
    invoke-super {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->pause()V

    const/4 v0, 0x0

    .line 355
    invoke-direct {p0, v0}, Lbcz;->a(Z)V

    return-void
.end method

.method protected pauseInner()V
    .locals 2

    .line 365
    iget-object v0, p0, Lbcz;->a:Lbdb;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbcz;->q()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    iget-object v0, p0, Lbcz;->mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->stop()V

    goto :goto_1

    .line 366
    :cond_1
    :goto_0
    iget-object v0, p0, Lbcz;->mPlayer:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->pause()V

    :goto_1
    return-void
.end method

.method public play()V
    .locals 5

    .line 75
    invoke-virtual {p0}, Lbcz;->m()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetRadioModel"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->isOff()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getOffTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const v1, 0x8967ce

    .line 79
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getOffMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/by;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbcz;->a(Ljava/lang/String;)V

    return-void

    .line 83
    :cond_0
    invoke-super {p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->play()V

    return-void
.end method

.method protected playCurrent()V
    .locals 1

    .line 273
    invoke-virtual {p0}, Lbcz;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, v0}, Lbcz;->playCurrentWithPos(I)V

    return-void
.end method

.method protected playCurrentWithPos(I)V
    .locals 4

    .line 281
    invoke-virtual {p0}, Lbcz;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playCurrent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v2

    invoke-virtual {v2}, Laqr;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NetRadioModel"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lbcz;->a:Lbdb;

    if-eqz v0, :cond_1

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    .line 287
    iget-object v0, p0, Lbcz;->a:Lbdb;

    invoke-virtual {v0}, Lbdb;->g()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 289
    invoke-direct {p0, v0, p1, v1}, Lbcz;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;IZ)V

    :cond_1
    return-void
.end method

.method public playState(I)V
    .locals 2

    .line 453
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->playState(I)V

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetRadioModel"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget p1, p0, Lbcz;->mPlayState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 456
    iput p1, p0, Lbcz;->d:I

    goto :goto_0

    .line 457
    :cond_0
    iget p1, p0, Lbcz;->mPlayState:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 458
    invoke-virtual {p0}, Lbcz;->m()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/aw;->c(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected postStateEvent()V
    .locals 4

    .line 517
    iget-object v0, p0, Lbcz;->a:Lbdb;

    if-eqz v0, :cond_0

    .line 518
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    const/4 v1, 0x6

    iget v2, p0, Lbcz;->mPlayState:I

    .line 519
    invoke-virtual {p0}, Lbcz;->q()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;-><init>(III)V

    .line 518
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public q()I
    .locals 2

    .line 553
    iget-object v0, p0, Lbcz;->c:Lbcw;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbcw;->g()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lbcz;->c:Lbcw;

    invoke-virtual {v0}, Lbcw;->g()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public r()V
    .locals 1

    .line 598
    invoke-virtual {p0}, Lbcz;->m()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lbcz;->c(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    return-void
.end method

.method public rebootPlay(Z)V
    .locals 2

    const-string v0, "NetRadioModel"

    const-string v1, "rebootPlay: "

    .line 333
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v0, Lbcw;

    invoke-direct {v0}, Lbcw;-><init>()V

    invoke-direct {p0, v0}, Lbcz;->a(Lbdb;)V

    .line 339
    iget-object v0, p0, Lbcz;->a:Lbdb;

    if-eqz v0, :cond_0

    .line 340
    new-instance v1, Lbcz$4;

    invoke-direct {v1, p0, p1}, Lbcz$4;-><init>(Lbcz;Z)V

    invoke-virtual {v0, v1}, Lbdb;->a(Lbdb$a;)V

    :cond_0
    return-void
.end method

.method protected savePlayState(I)V
    .locals 1

    .line 525
    iget-object v0, p0, Lbcz;->a:Lbdb;

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {v0, p1}, Lbdb;->b(I)V

    :cond_0
    return-void
.end method
