.class public Lcom/xiaopeng/devtools/model/c/a/f/a;
.super Ljava/lang/Object;
.source "RadioModel.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private ty:Lcom/xpeng/test/RadioTest;

.field private tz:Lcom/xpeng/test/AudioTest;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/f/a;->mContext:Landroid/content/Context;

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/f/a;->mContext:Landroid/content/Context;

    .line 22
    new-instance p1, Lcom/xpeng/test/RadioTest;

    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/f/a;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/xpeng/test/RadioTest;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/f/a;->ty:Lcom/xpeng/test/RadioTest;

    .line 23
    new-instance p1, Lcom/xpeng/test/AudioTest;

    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/f/a;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/xpeng/test/AudioTest;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/f/a;->tz:Lcom/xpeng/test/AudioTest;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/xpeng/test/callback/CarCallback;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/f/a;->ty:Lcom/xpeng/test/RadioTest;

    invoke-virtual {v0, p1}, Lcom/xpeng/test/RadioTest;->registerCallback(Lcom/xpeng/test/callback/CarCallback;)V

    .line 28
    return-void
.end method

.method public cf(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/f/a;->ty:Lcom/xpeng/test/RadioTest;

    invoke-virtual {v0, p1}, Lcom/xpeng/test/RadioTest;->setRadioVolumeAutoFocus(I)V

    .line 82
    return-void
.end method

.method public gJ()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/f/a;->ty:Lcom/xpeng/test/RadioTest;

    invoke-virtual {v0}, Lcom/xpeng/test/RadioTest;->openFm()Z

    .line 36
    return-void
.end method

.method public gK()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/f/a;->ty:Lcom/xpeng/test/RadioTest;

    invoke-virtual {v0}, Lcom/xpeng/test/RadioTest;->closeFm()Z

    .line 40
    return-void
.end method

.method public gL()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/f/a;->ty:Lcom/xpeng/test/RadioTest;

    invoke-virtual {v0}, Lcom/xpeng/test/RadioTest;->setStartFullBandScan()V

    .line 60
    return-void
.end method

.method public q(II)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/f/a;->ty:Lcom/xpeng/test/RadioTest;

    invoke-virtual {v0, p1, p2}, Lcom/xpeng/test/RadioTest;->setRadioFrequency(II)Z

    .line 44
    return-void
.end method

.method public searchStationDown()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/f/a;->ty:Lcom/xpeng/test/RadioTest;

    invoke-virtual {v0}, Lcom/xpeng/test/RadioTest;->searchStationDown()Z

    move-result v0

    return v0
.end method

.method public searchStationUp()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/f/a;->ty:Lcom/xpeng/test/RadioTest;

    invoke-virtual {v0}, Lcom/xpeng/test/RadioTest;->searchStationUp()Z

    move-result v0

    return v0
.end method

.method public setRadioBand(I)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/f/a;->ty:Lcom/xpeng/test/RadioTest;

    invoke-virtual {v0, p1}, Lcom/xpeng/test/RadioTest;->setRadioBand(I)V

    .line 56
    return-void
.end method

.method public setVolume(I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/f/a;->tz:Lcom/xpeng/test/AudioTest;

    invoke-virtual {v0, p1}, Lcom/xpeng/test/AudioTest;->setMediaVolume(I)V

    .line 72
    return-void
.end method

.method public stopScan()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/f/a;->ty:Lcom/xpeng/test/RadioTest;

    invoke-virtual {v0}, Lcom/xpeng/test/RadioTest;->setStopFullBandScan()V

    .line 64
    return-void
.end method
