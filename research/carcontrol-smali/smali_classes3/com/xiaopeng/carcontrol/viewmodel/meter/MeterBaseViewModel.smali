.class public abstract Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;
.super Ljava/lang/Object;
.source "MeterBaseViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/meter/IMeterViewModel;
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "MeterBaseViewModel"


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

.field private final mSdf:Ljava/text/SimpleDateFormat;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy/MM/dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mSdf:Ljava/text/SimpleDateFormat;

    .line 57
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_icm"

    .line 60
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;Ljava/lang/String;)I
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->parseMaintainData(Ljava/lang/String;)V

    return-void
.end method

.method private convertDate(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 478
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 479
    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 480
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mSdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static formatMileage(F)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mileage"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 487
    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x1

    .line 488
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 489
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    float-to-double v1, p0

    .line 490
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static formatMileage(FI)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mileage",
            "newValue"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 497
    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 498
    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 499
    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    const-string p1, "isSupportThousandSeparator"

    .line 500
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 501
    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    :cond_1
    float-to-double p0, p0

    .line 503
    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIntValue(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private parseMaintainData(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 441
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 442
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_0

    const-string v0, "MeterBaseViewModel"

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response error, code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 445
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->handleLastMaintainChanged(Lcom/xiaopeng/carcontrol/bean/MaintainInfo;)V

    .line 446
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->handleNextMaintainChanged(Lcom/xiaopeng/carcontrol/bean/MaintainInfo;)V

    return-void

    :cond_0
    const-string p1, "data"

    .line 449
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "lastMaintainMileage"

    .line 450
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "lastMaintainDate"

    .line 451
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "nextMaintainMileage"

    .line 452
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "nextMaintainDate"

    .line 453
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 455
    new-instance p1, Lcom/xiaopeng/carcontrol/bean/MaintainInfo;

    invoke-direct {p1}, Lcom/xiaopeng/carcontrol/bean/MaintainInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v8, 0x0

    cmp-long v10, v0, v8

    const-string v11, ",###"

    if-eqz v10, :cond_1

    .line 457
    :try_start_1
    new-instance v10, Ljava/text/DecimalFormat;

    invoke-direct {v10, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaopeng/carcontrol/bean/MaintainInfo;->mMileage:Ljava/lang/String;

    :cond_1
    cmp-long v0, v2, v8

    if-eqz v0, :cond_2

    .line 460
    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->convertDate(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaopeng/carcontrol/bean/MaintainInfo;->mDate:Ljava/lang/String;

    .line 462
    :cond_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->handleLastMaintainChanged(Lcom/xiaopeng/carcontrol/bean/MaintainInfo;)V

    .line 464
    new-instance p1, Lcom/xiaopeng/carcontrol/bean/MaintainInfo;

    invoke-direct {p1}, Lcom/xiaopeng/carcontrol/bean/MaintainInfo;-><init>()V

    cmp-long v0, v4, v8

    if-eqz v0, :cond_3

    .line 466
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaopeng/carcontrol/bean/MaintainInfo;->mMileage:Ljava/lang/String;

    :cond_3
    cmp-long v0, v6, v8

    if-eqz v0, :cond_4

    .line 469
    invoke-direct {p0, v6, v7}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->convertDate(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaopeng/carcontrol/bean/MaintainInfo;->mDate:Ljava/lang/String;

    .line 471
    :cond_4
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->handleNextMaintainChanged(Lcom/xiaopeng/carcontrol/bean/MaintainInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 473
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBrightSw()Z
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getBrightSw()Z

    move-result v0

    return v0
.end method

.method public getDoorBossKeySw()Z
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getDoorBossKeySw()Z

    move-result v0

    return v0
.end method

.method public getDoorKeyForCustomer()I
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getDoorKeyForCustomer()I

    move-result v0

    return v0
.end method

.method public getMediaSw()Z
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getMediaSw()Z

    move-result v0

    return v0
.end method

.method public getMileageA()Ljava/lang/String;
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getMileageA()F

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->formatMileage(FI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMileageAFloat()F
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getMileageA()F

    move-result v0

    return v0
.end method

.method public getMileageB()Ljava/lang/String;
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getMileageB()F

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->formatMileage(FI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMileageBFloat()F
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getMileageB()F

    move-result v0

    return v0
.end method

.method public getMileageSinceLastCharge()Ljava/lang/String;
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getMileageSinceLastCharge()F

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->formatMileage(FI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMileageSinceLastChargeFloat()F
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getMileageSinceLastCharge()F

    move-result v0

    return v0
.end method

.method public getMileageSinceStartUp()Ljava/lang/String;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getMileageSinceStartUp()F

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->formatMileage(FI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMileageSinceStartUpFloat()F
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getMileageSinceStartUp()F

    move-result v0

    return v0
.end method

.method public getMileageTotal()Ljava/lang/String;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getMileageTotal()F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->formatMileage(FI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpeedWarningSw()Z
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getSpeedWarningSw()Z

    move-result v0

    return v0
.end method

.method public getSpeedWarningValue()I
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getSpeedLimitValueFromDataSync()I

    move-result v0

    return v0
.end method

.method public getTempSw()Z
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getTempSw()Z

    move-result v0

    return v0
.end method

.method public getTouchRotationDirection()I
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getTouchRotationDirection()I

    move-result v0

    return v0
.end method

.method public getWindModeSw()Z
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getWindModeSw()Z

    move-result v0

    return v0
.end method

.method public getWindPowerSw()Z
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getWindPowerSw()Z

    move-result v0

    return v0
.end method

.method public getXKeyForCustomer()I
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getXKeyForCustomer()I

    move-result v0

    return v0
.end method

.method protected abstract handleDoorKeyChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyValue"
        }
    .end annotation
.end method

.method protected abstract handleEcallAvailableChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "available"
        }
    .end annotation
.end method

.method protected abstract handleLastMaintainChanged(Lcom/xiaopeng/carcontrol/bean/MaintainInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "last"
        }
    .end annotation
.end method

.method protected abstract handleNextMaintainChanged(Lcom/xiaopeng/carcontrol/bean/MaintainInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "next"
        }
    .end annotation
.end method

.method protected abstract handleWheelKeyProtectChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method protected abstract handleXKeyChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyValue"
        }
    .end annotation
.end method

.method public isEcallAvailable()Z
    .locals 3

    .line 402
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "xp_ecall_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public isWheelKeyProtectEnabled()Z
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->isWheelKeyProtectEnabled()Z

    move-result v0

    return v0
.end method

.method public onDoorKeyChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyValue"
        }
    .end annotation

    .line 244
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->handleDoorKeyChanged(I)V

    .line 245
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_door"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onXKeyChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyValue"
        }
    .end annotation

    .line 224
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->handleXKeyChanged(I)V

    .line 225
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_wheel"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
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

    .line 508
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->registerBusiness([Ljava/lang/String;)V

    return-void
.end method

.method registerContentObserver()V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel$1;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mContentObserver:Landroid/database/ContentObserver;

    :cond_0
    const-string v0, "MeterBaseViewModel"

    const-string v2, "registerContentObserver"

    .line 98
    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "key_wheel"

    .line 100
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mContentObserver:Landroid/database/ContentObserver;

    .line 99
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 101
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "key_door"

    .line 102
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mContentObserver:Landroid/database/ContentObserver;

    .line 101
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 103
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "xp_ecall_enable"

    .line 104
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mContentObserver:Landroid/database/ContentObserver;

    .line 103
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public requestMaintainData()V
    .locals 6

    const-string v0, "MeterBaseViewModel"

    const-string v1, "Start to request maintain data"

    const/4 v2, 0x0

    .line 168
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 170
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 171
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getVIN()Ljava/lang/String;

    move-result-object v3

    const-string v4, "vin"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v3, Lcom/xiaopeng/carcontrol/GlobalConstant$URL;->MAINTENANCE_ADVICE:Ljava/lang/String;

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request maintain url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 176
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/ModuleUtils;->getHttp()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v1, "Http module is null"

    .line 179
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 182
    :cond_0
    invoke-interface {v4}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 183
    invoke-interface {v0, v3, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->enableSecurityEncoding()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 186
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->uid(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 188
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel$2;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;)V

    .line 189
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    return-void
.end method

.method public resetMeterMileageA()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->resetMeterMileageA()V

    return-void
.end method

.method public resetMeterMileageB()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->resetMeterMileageB()V

    return-void
.end method

.method public setBrightSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setBrightSw(Z)V

    return-void
.end method

.method public setDoorBossKeySw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setDoorBossKeySw(Z)V

    return-void
.end method

.method public setDoorKeyForCustomer(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyFunc"
        }
    .end annotation

    .line 251
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDoorKeyForCustomer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeterBaseViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setDoorKeyForCustomer(I)V

    :cond_0
    return-void
.end method

.method public setMediaSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setMediaSw(Z)V

    return-void
.end method

.method public setShowEcallOnStatus(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 390
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "xp_statusbar_ecall_show"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setSpeedWarningSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setSpeedWarningSw(Z)V

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getSpeedLimitValueFromDataSync()I

    move-result v0

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeedWarningSw: enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MeterBaseViewModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x28

    if-lt v0, p1, :cond_0

    const/16 p1, 0x78

    if-gt v0, p1, :cond_0

    .line 309
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setSpeedWarningValue(I)V

    :cond_0
    return-void
.end method

.method public setSpeedWarningValue(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setSpeedWarningValue(I)V

    return-void
.end method

.method public setTempSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setTempSw(Z)V

    return-void
.end method

.method public setTouchRotationDirection(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setTouchRotationDirection(I)V

    return-void
.end method

.method public setUserScenarioInfo([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setUserScenarioInfo([I)V

    return-void
.end method

.method public setWheelKeyProtectSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setWheelKeyProtectSw(Z)V

    return-void
.end method

.method public setWindModeSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setWindModeSw(Z)V

    return-void
.end method

.method public setWindPowerSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setWindPowerSw(Z)V

    return-void
.end method

.method public setXKeyForCustomer(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyFunc"
        }
    .end annotation

    .line 231
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setXKeyForCustomer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeterBaseViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setXKeyForCustomer(I)V

    :cond_0
    return-void
.end method

.method public shouldShowEcallOnStatus()Z
    .locals 3

    .line 396
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "xp_statusbar_ecall_show"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
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

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->unregisterBusiness([Ljava/lang/String;)V

    return-void
.end method
