.class public abstract Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;
.super Ljava/lang/Object;
.source "LampBaseViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;


# static fields
.field private static final KEY_THEME_TYPE:Ljava/lang/String; = "key_theme_type"

.field private static final TAG:Ljava/lang/String; = "LampBaseViewModel"


# instance fields
.field mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

.field private final mDomeLightStLock:Ljava/lang/Object;

.field private final mDomeLightSwTask:Ljava/lang/Runnable;

.field private final mInnerParkingLampRunnable:Ljava/lang/Runnable;

.field private final mInnerParkingLampStLock:Ljava/lang/Object;

.field final mLampCallBack:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;

.field private final mOuterParkingLampRunnable:Ljava/lang/Runnable;

.field private final mOuterParkingLampStLock:Ljava/lang/Object;

.field private mSetFogLaterFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mDomeLightStLock:Ljava/lang/Object;

    .line 40
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampBaseViewModel$rz0NFy7LTSVKgkuJGFfFIB0L9-o;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampBaseViewModel$rz0NFy7LTSVKgkuJGFfFIB0L9-o;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mDomeLightSwTask:Ljava/lang/Runnable;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mInnerParkingLampStLock:Ljava/lang/Object;

    .line 47
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampBaseViewModel$i-QONIcEbOhN50QxP5QutFWrnWM;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampBaseViewModel$i-QONIcEbOhN50QxP5QutFWrnWM;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mInnerParkingLampRunnable:Ljava/lang/Runnable;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mOuterParkingLampStLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampBaseViewModel$w1uahLfQoiPQpWSrh8fn04hwlgM;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampBaseViewModel$w1uahLfQoiPQpWSrh8fn04hwlgM;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mOuterParkingLampRunnable:Ljava/lang/Runnable;

    .line 60
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mLampCallBack:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;

    .line 217
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_bcm"

    .line 219
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;)Ljava/lang/Object;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mOuterParkingLampStLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;)Ljava/lang/Runnable;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mOuterParkingLampRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;)Ljava/lang/Object;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mInnerParkingLampStLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;)Ljava/lang/Runnable;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mInnerParkingLampRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;)Ljava/lang/Object;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mDomeLightStLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;)Ljava/lang/Runnable;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mDomeLightSwTask:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public getCacheLightMeHomeTime()I
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCacheLightMeHomeTime()I

    move-result v0

    return v0
.end method

.method public getCarpetLightWelcomeMode()Z
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCarpetLightWelcomeMode()Z

    move-result v0

    return v0
.end method

.method public getDaytimeRunningLightsOutputStatus()I
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDaytimeRunningLightsOutputStatus()I

    move-result v0

    return v0
.end method

.method public getDomeLightBrightness()I
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDomeLightBright()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->parseDomeLightBrightness(I)I

    move-result v0

    return v0
.end method

.method public getDomeLightState()I
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDomeLightState()I

    move-result v0

    return v0
.end method

.method public getDomeLightSw(I)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lightType"
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "isSupportDomeLightThirdRow"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-ne p1, v7, :cond_2

    .line 423
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDomeLightStatus(I)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    .line 424
    invoke-interface {p1, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDomeLightStatus(I)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    .line 425
    invoke-interface {p1, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDomeLightStatus(I)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    .line 426
    invoke-interface {p1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDomeLightStatus(I)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v6

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v5

    .line 427
    :goto_1
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez p1, :cond_4

    .line 428
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDomeLightStatus(I)I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    .line 429
    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDomeLightStatus(I)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_2
    const/4 v7, 0x5

    if-ne p1, v7, :cond_5

    .line 432
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDomeLightStatus(I)I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    .line 433
    invoke-interface {p1, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDomeLightStatus(I)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :cond_4
    :goto_2
    move p1, v5

    goto :goto_3

    :cond_5
    const/4 v7, 0x6

    if-ne p1, v7, :cond_6

    .line 435
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDomeLightStatus(I)I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    .line 436
    invoke-interface {p1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDomeLightStatus(I)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 437
    :cond_6
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x9

    if-ne p1, v2, :cond_7

    .line 438
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDomeLightStatus(I)I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    .line 439
    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDomeLightStatus(I)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 441
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDomeLightStatus(I)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_8
    :goto_3
    return p1
.end method

.method public getHeadLampGroup()I
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getHeadLampState()I

    move-result v0

    return v0
.end method

.method public getHeadLampGroupSp()I
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getHeadLampStateSp()I

    move-result v0

    return v0
.end method

.method public getHighBeamState()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getHighBeamLamp()Z

    move-result v0

    return v0
.end method

.method public getInnerParkingLampStates()I
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getInnerParkingLampStates()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 268
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 269
    aget v1, v0, v1

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    aget v0, v0, v2

    or-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method

.method public getLampHeightLevel()I
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLampHeightLevel()I

    move-result v0

    return v0
.end method

.method public getLightMeHomeTime()I
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLightMeHomeTime()I

    move-result v0

    return v0
.end method

.method public getLowBeamState()Z
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLowBeamLamp()Z

    move-result v0

    return v0
.end method

.method public getOuterParkingLampStates()I
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getOuterParkingLampStates()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 259
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 260
    aget v1, v0, v1

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    aget v0, v0, v2

    or-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method

.method public getParkLampState()Z
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getParkLamp()Z

    move-result v0

    return v0
.end method

.method public getParkingLampStates()[I
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getParkingLampStates()[I

    move-result-object v0

    return-object v0
.end method

.method public getPollingLightWelcomeMode()Z
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getPollingLightWelcomeMode()Z

    move-result v0

    return v0
.end method

.method public getRearFogLampState()Z
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRearFogLamp()Z

    move-result v0

    return v0
.end method

.method public getRearLogoLightStatus()Z
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRearLogoLightStatus()Z

    move-result v0

    return v0
.end method

.method public getRearLogoLightSw()Z
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRearLogoLightSw()Z

    move-result v0

    return v0
.end method

.method public getTurnLampState()Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getTurnLampState()[I

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->fromBcmStatus([I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    move-result-object v0

    return-object v0
.end method

.method abstract handleAutoLampHeightChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auto"
        }
    .end annotation
.end method

.method protected abstract handleCarpetLightWelcomeStateChange(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method protected abstract handleDaytimeRunningLightChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleDomeLightBrightness(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation
.end method

.method abstract handleDomeLightState(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleDomeLightState(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lightOnOff"
        }
    .end annotation
.end method

.method abstract handleHeadLampModeChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleHighBeamLampChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation
.end method

.method abstract handleInnerParkingLampStatesChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation
.end method

.method abstract handleLampHeightLevelChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method abstract handleLightMeHomeChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method abstract handleLightMeHomeTime(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeCfg"
        }
    .end annotation
.end method

.method handleLowBeamLampChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 560
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 562
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mSetFogLaterFlag:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 563
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->setRearFogLamp(Z)V

    .line 564
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mSetFogLaterFlag:Z

    goto :goto_0

    .line 567
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->setRearFogLamp(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method abstract handleLowBeamOffConfirmStateChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isActivated"
        }
    .end annotation
.end method

.method abstract handleOuterParkingLampStatesChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation
.end method

.method abstract handleParkLightRelatedFMBLightState(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleParkingLampStatesChanged([I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation
.end method

.method protected abstract handlePollingWelcomeStateChange(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method abstract handlePositionLampChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation
.end method

.method abstract handleRearFogLampChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method protected abstract handleRearLogoLightStatusChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method protected abstract handleRearLogoLightSwChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method abstract handleTurnLampChanged(Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public isAutoLampHeight()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isAutoLampHeight()Z

    move-result v0

    return v0
.end method

.method public isLedDrlEnabled()Z
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isLedDrlEnabled()Z

    move-result v0

    return v0
.end method

.method public isLightMeHomeEnable()Z
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLightMeHome()Z

    move-result v0

    return v0
.end method

.method public isParkLampIncludeFmB()Z
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isParkLampIncludeFmB()Z

    move-result v0

    return v0
.end method

.method public isTurnLampOn()Z
    .locals 2

    .line 372
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->getTurnLampState()Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->Off:Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$new$0$LampBaseViewModel()V
    .locals 4

    const/4 v0, 0x4

    .line 41
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->getDomeLightSw(I)Z

    move-result v0

    .line 42
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFullDomeLightStChanged convertSt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleDomeLightState(Z)V

    return-void
.end method

.method public synthetic lambda$new$1$LampBaseViewModel()V
    .locals 4

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->getInnerParkingLampStates()I

    move-result v0

    .line 49
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInnerParkingLampStChanged mInnerParkingLampSt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleInnerParkingLampStatesChanged(I)V

    return-void
.end method

.method public synthetic lambda$new$2$LampBaseViewModel()V
    .locals 4

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->getOuterParkingLampStates()I

    move-result v0

    .line 56
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOuterParkingLampStChanged mOuterParkingLampSt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleOuterParkingLampStatesChanged(I)V

    return-void
.end method

.method parseDomeLightBrightness(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public varargs registerBusiness([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->registerBusiness([Ljava/lang/String;)V

    return-void
.end method

.method protected registerContentObserver()V
    .locals 4

    .line 223
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_theme_type"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$2;

    const/4 v3, 0x0

    .line 224
    invoke-static {v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$2;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;Landroid/os/Handler;)V

    const/4 v3, 0x1

    .line 223
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setAutoLampHeight(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auto"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAutoLampHeight(Z)V

    return-void
.end method

.method public setAutoLampHeight(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "auto",
            "needSave"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAutoLampHeight(ZZ)V

    return-void
.end method

.method public setCarpetLightWelcomeMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCarpetLightWelcomeMode(Z)V

    return-void
.end method

.method public setDomeLight(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setDomeLight(I)V

    return-void
.end method

.method public setDomeLightBrightness(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    const/4 v0, 0x1

    .line 478
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->setDomeLightBrightness(IZ)V

    return-void
.end method

.method public setDomeLightBrightness(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "brightness",
            "needSave"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 492
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    sget v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;->DOME_LIGHT_BRIGHT_LEVEL_MEDIUM:I

    invoke-interface {p1, v0, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setDomeLightBright(IZ)V

    goto :goto_0

    .line 485
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    sget v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;->DOME_LIGHT_BRIGHT_LEVEL_HIGH:I

    invoke-interface {p1, v0, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setDomeLightBright(IZ)V

    goto :goto_0

    .line 488
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    sget v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;->DOME_LIGHT_BRIGHT_LEVEL_LOW:I

    invoke-interface {p1, v0, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setDomeLightBright(IZ)V

    :goto_0
    return-void
.end method

.method public setDomeLightBrightnessRaw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    .line 499
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->parseDomeLightBrightness(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->setDomeLightBrightness(IZ)V

    return-void
.end method

.method public setDomeLightBrightnessRaw(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "brightness",
            "needSave"
        }
    .end annotation

    .line 504
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->parseDomeLightBrightness(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->setDomeLightBrightness(IZ)V

    return-void
.end method

.method public setDomeLightSw(IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lightType",
            "enable"
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x7

    const-string v2, "isSupportDomeLightThirdRow"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-ne p1, v7, :cond_0

    .line 449
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v6, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setDomeLightSw(IZ)V

    .line 450
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v5, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setDomeLightSw(IZ)V

    .line 451
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v4, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setDomeLightSw(IZ)V

    .line 452
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v3, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setDomeLightSw(IZ)V

    .line 453
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 454
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setDomeLightSw(IZ)V

    .line 455
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v0, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setDomeLightSw(IZ)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x5

    if-ne p1, v7, :cond_1

    .line 458
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v6, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setDomeLightSw(IZ)V

    .line 459
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v5, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setDomeLightSw(IZ)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x6

    if-ne p1, v5, :cond_2

    .line 461
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v4, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setDomeLightSw(IZ)V

    .line 462
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v3, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setDomeLightSw(IZ)V

    goto :goto_0

    .line 463
    :cond_2
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x9

    if-ne p1, v2, :cond_3

    .line 464
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setDomeLightSw(IZ)V

    .line 465
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v0, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setDomeLightSw(IZ)V

    goto :goto_0

    .line 467
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setDomeLightSw(IZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setHeadLampGroup(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupId"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setHeadLampState(IZ)V

    return-void
.end method

.method public setHeadLampGroup(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "groupId",
            "needSave"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setHeadLampState(IZ)V

    return-void
.end method

.method public setLampHeightLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setLampHeightLevel(I)V

    return-void
.end method

.method public setLampHeightLevel(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "height",
            "needSave"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setLampHeightLevel(IZ)V

    return-void
.end method

.method public setLedDrlEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setLedDrlEnable(Z)V

    return-void
.end method

.method public setLightMeHome(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setLightMeHome(ZZ)V

    return-void
.end method

.method public setLightMeHomeTime(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeCfg"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setLightMeHomeTime(IZ)V

    return-void
.end method

.method public setLowBeamOffConfirmSt(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "confirmSt"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setLowBeamOffConfirmSt(I)V

    return-void
.end method

.method public setParkLampIncludeFmB(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setParkLampIncludeFmB(Z)V

    return-void
.end method

.method public setPollingLightWelcomeMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setPollingLightWelcomeMode(Z)V

    return-void
.end method

.method public setRearFogLamp(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 342
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    :try_start_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRearFogLamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLowBeamLamp()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 348
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mSetFogLaterFlag:Z

    const/4 p1, 0x2

    .line 349
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->setHeadLampGroup(I)V

    goto :goto_1

    .line 346
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setRearFogLamp(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 352
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 355
    :cond_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rear_fog_sw"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :goto_1
    return-void
.end method

.method public setRearLogoLightSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setRearLogoLightSw(Z)V

    return-void
.end method

.method public varargs unregisterBusiness([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->unregisterBusiness([Ljava/lang/String;)V

    return-void
.end method
