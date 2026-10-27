.class public Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;
.super Ljava/lang/Object;
.source "RadioPresenter.java"


# instance fields
.field mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private xb:Lcom/xiaopeng/devtools/model/c/a/f/a;

.field private xc:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;

.field private xd:I

.field private xe:I

.field private xf:Lcom/xiaopeng/devtools/bean/factorytest/RadioBean;

.field private xg:Z

.field private xh:I

.field private xi:Lcom/xpeng/test/callback/CarCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->mContext:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xc:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;

    .line 27
    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->mAudioManager:Landroid/media/AudioManager;

    .line 30
    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xd:I

    .line 31
    const/4 v2, -0x1

    iput v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xe:I

    .line 33
    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->mHandler:Landroid/os/Handler;

    .line 34
    iput-boolean v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xg:Z

    .line 35
    const/16 v0, 0x100

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xh:I

    .line 53
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a$1;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xi:Lcom/xpeng/test/callback/CarCallback;

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->mContext:Landroid/content/Context;

    .line 39
    new-instance p1, Lcom/xiaopeng/devtools/model/c/a/f/a;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/xiaopeng/devtools/model/c/a/f/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xb:Lcom/xiaopeng/devtools/model/c/a/f/a;

    .line 40
    iput-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xc:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;

    .line 41
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->mHandler:Landroid/os/Handler;

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->mContext:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->mAudioManager:Landroid/media/AudioManager;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;Lcom/xiaopeng/devtools/bean/factorytest/RadioBean;)Lcom/xiaopeng/devtools/bean/factorytest/RadioBean;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xf:Lcom/xiaopeng/devtools/bean/factorytest/RadioBean;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xc:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->updateView()V

    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->jk()V

    return-void
.end method

.method private jk()V
    .locals 2

    .line 89
    const-string v0, "RadioPresenter"

    const-string v1, "updateVolumeView"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/-$$Lambda$a$dZrxyaTqvsKwKAWexZCiUnqJ980;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/-$$Lambda$a$dZrxyaTqvsKwKAWexZCiUnqJ980;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method private synthetic jq()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xc:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->getCurrentVolume()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;->dl(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic jr()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xf:Lcom/xiaopeng/devtools/bean/factorytest/RadioBean;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xf:Lcom/xiaopeng/devtools/bean/factorytest/RadioBean;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/factorytest/RadioBean;->getRadioCurrentBand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xc:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xf:Lcom/xiaopeng/devtools/bean/factorytest/RadioBean;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/bean/factorytest/RadioBean;->getRadioCurrentFreq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;->df(I)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xc:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xf:Lcom/xiaopeng/devtools/bean/factorytest/RadioBean;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/bean/factorytest/RadioBean;->getRadioCurrentFreq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;->dg(I)V

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xc:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xf:Lcom/xiaopeng/devtools/bean/factorytest/RadioBean;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/bean/factorytest/RadioBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;->dk(Ljava/lang/String;)V

    .line 81
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xg:Z

    if-eqz v0, :cond_2

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xg:Z

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->getCurrentVolume()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->setVolume(I)V

    .line 85
    :cond_2
    return-void
.end method

.method public static synthetic lambda$5xYQG58uexMpWyshwbn1eoTfQE0(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->jr()V

    return-void
.end method

.method public static synthetic lambda$dZrxyaTqvsKwKAWexZCiUnqJ980(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->jq()V

    return-void
.end method

.method private updateView()V
    .locals 2

    .line 71
    const-string v0, "RadioPresenter"

    const-string v1, "updateView"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/-$$Lambda$a$5xYQG58uexMpWyshwbn1eoTfQE0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/-$$Lambda$a$5xYQG58uexMpWyshwbn1eoTfQE0;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method


# virtual methods
.method public gL()V
    .locals 2

    .line 115
    const-string v0, "RadioPresenter"

    const-string v1, "scan"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xb:Lcom/xiaopeng/devtools/model/c/a/f/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/f/a;->gL()V

    .line 117
    return-void
.end method

.method public getCurrentVolume()I
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public jj()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xb:Lcom/xiaopeng/devtools/model/c/a/f/a;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xi:Lcom/xpeng/test/callback/CarCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/c/a/f/a;->a(Lcom/xpeng/test/callback/CarCallback;)V

    .line 47
    return-void
.end method

.method public jl()V
    .locals 2

    .line 94
    const-string v0, "RadioPresenter"

    const-string v1, "openRadio"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xg:Z

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xb:Lcom/xiaopeng/devtools/model/c/a/f/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/f/a;->gJ()V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xb:Lcom/xiaopeng/devtools/model/c/a/f/a;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/c/a/f/a;->cf(I)V

    .line 99
    return-void
.end method

.method public jm()V
    .locals 2

    .line 125
    const-string v0, "RadioPresenter"

    const-string v1, "releaseRadio"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "channels=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xb:Lcom/xiaopeng/devtools/model/c/a/f/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/f/a;->gK()V

    .line 128
    return-void
.end method

.method public jn()V
    .locals 2

    .line 131
    const-string v0, "RadioPresenter"

    const-string v1, "changeBand"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xd:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xb:Lcom/xiaopeng/devtools/model/c/a/f/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/c/a/f/a;->setRadioBand(I)V

    .line 134
    iput v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xd:I

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xc:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;->dh(I)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xb:Lcom/xiaopeng/devtools/model/c/a/f/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/c/a/f/a;->setRadioBand(I)V

    .line 138
    iput v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xd:I

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xc:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;->dh(I)V

    .line 141
    :goto_0
    return-void
.end method

.method public jo()V
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->getCurrentVolume()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->setVolume(I)V

    .line 145
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->jk()V

    .line 146
    return-void
.end method

.method public jp()V
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->getCurrentVolume()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->setVolume(I)V

    .line 150
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->jk()V

    .line 151
    return-void
.end method

.method public q(II)V
    .locals 3

    .line 102
    const-string v0, "RadioPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "search radioType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,channel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xb:Lcom/xiaopeng/devtools/model/c/a/f/a;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/devtools/model/c/a/f/a;->q(II)V

    .line 104
    return-void
.end method

.method public searchStationDown()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xb:Lcom/xiaopeng/devtools/model/c/a/f/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/f/a;->searchStationDown()Z

    move-result v0

    return v0
.end method

.method public searchStationUp()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xb:Lcom/xiaopeng/devtools/model/c/a/f/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/f/a;->searchStationUp()Z

    move-result v0

    return v0
.end method

.method public setVolume(I)V
    .locals 3

    .line 154
    const-string v0, "RadioPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xb:Lcom/xiaopeng/devtools/model/c/a/f/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/f/a;->setVolume(I)V

    .line 156
    return-void
.end method

.method public stopScan()V
    .locals 2

    .line 120
    const-string v0, "RadioPresenter"

    const-string v1, "stopScan"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->xb:Lcom/xiaopeng/devtools/model/c/a/f/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/f/a;->stopScan()V

    .line 122
    return-void
.end method
