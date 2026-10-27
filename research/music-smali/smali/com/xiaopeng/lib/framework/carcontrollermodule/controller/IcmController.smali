.class public Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;
.super Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;
.source "IcmController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController;


# static fields
.field public static ICM_METER_ALARMVOLUME:I = 0x21401605

.field public static ICM_METER_MEDIASOURCE:I = 0x21401636

.field public static ICM_METER_SCREENLIGHT:I = 0x21401637

.field public static ICM_METER_SPEEDLIMIT_WARNINGSWITCH:I = 0x21401622

.field public static ICM_METER_SPEEDLIMIT_WARNINGVALUE:I = 0x2140162d

.field public static ICM_METER_TEMPRATURE:I = 0x21401625

.field public static ICM_METER_WINDMODE:I = 0x21401621

.field public static ICM_METER_WINDPOWER:I = 0x21401627

.field private static final TAG:Ljava/lang/String; = "IcmController"


# instance fields
.field private mCarIcmEventCallback:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

.field private mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmEventCallback:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    return-void
.end method


# virtual methods
.method public getContacts()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDriveTotalMileage()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getICMDriverTempValue()F
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->getIcmDriverTempValue()F

    move-result v0

    return v0
.end method

.method public getICMSystemTimeValue()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getICMWindBlowMode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->getIcmWindBlowMode()I

    move-result v0

    return v0
.end method

.method public getICMWindLevel()I
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->getIcmWindLevel()I

    move-result v0

    return v0
.end method

.method public getIcmAlarmVolume()I
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->getIcmAlarmVolume()I

    move-result v0

    return v0
.end method

.method public getIcmConnectionState()Z
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->getIcmConnectionState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getIcmDayNightSwitch()Z
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->getIcmDayNightSwitch()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getIcmFeedback()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIcmMediaSource()Z
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->getIcmMediaSource()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getIcmNavigation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIcmScreenLight()Z
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->getIcmScreenLight()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getIcmTemperature()Z
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->getIcmTemperature()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getIcmWindMode()Z
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->getIcmWindMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getIcmWindPower()Z
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->getIcmWindPower()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getLastChargeMileage()F
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->getLastChargeMileage()F

    move-result v0

    return v0
.end method

.method public getLastStartUpMileage()F
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->getLastStartUpMileage()F

    move-result v0

    return v0
.end method

.method public getMeterMileageA()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMeterMileageB()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSpeedLimitWarningSwitch()Z
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->getSpeedLimitWarningSwitch()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getSpeedLimitWarningValue()I
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->getSpeedLimitWarningValue()I

    move-result v0

    return v0
.end method

.method public getWheelEvent()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initCarManager(Landroid/car/Car;)V
    .locals 1

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarApiClient:Landroid/car/Car;

    :try_start_0
    const-string v0, "xp_icm"

    .line 56
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/icm/CarIcmManager;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "IcmController"

    const-string v0, "Car not connected"

    .line 58
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initPropertyTypeMap()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401605

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$AlarmVolumeEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401625

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmTemperatureEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401627

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmWindPowerEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401621

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmWindModeEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401636

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmMediaSourceEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401637

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmScreenLightEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2170161d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmNavigationEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140162a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmDayNightEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401622

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$SpeedLimitWarningSwitchEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140162d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$SpeedLimitWarningValueEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2160162e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmDriveTotalMileageEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21601630

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmLastChargeMileageEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2160162f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmStartUpMileageEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21601631

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmMileageAEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21601632

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmMileageBEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140161f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$ICMWindLevelEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21601635

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$ICMDriverTempValueEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2141162c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$ICMSystemTimeValueEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2170160b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$ICMBTContactsEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401628

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$ICMLightChangeEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140160e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IIcmController$IcmConnectEventMsgV2;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2141160a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmSendResultEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerCanEventMsg(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEventMsg;",
            ">;>;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmEventCallback:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController$1;-><init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmEventCallback:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    .line 113
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->convertRegisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmEventCallback:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/icm/CarIcmManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "IcmController"

    const-string v0, "Car not connected"

    .line 116
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public resetMeterMileageA()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->resetMeterMileageA()V

    return-void
.end method

.method public resetMeterMileageB()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->resetMeterMileageB()V

    return-void
.end method

.method public sendBinMsg(I[B[B)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/car/hardware/icm/CarIcmManager;->sendRomBinMsg(I[B[B)V

    return-void
.end method

.method public sendContacts([B)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->sendContacts([B)V

    return-void
.end method

.method public sendRomBinMsgNew([B)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 405
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "not support"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendSpeechStateInfo([B)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setSpeechStateInfo([B)V

    return-void
.end method

.method public setBtStateMessage([B)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setBtMusicState([B)V

    return-void
.end method

.method public setICMDriverTempValue(F)V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIcmDriverTempValue(F)V

    return-void
.end method

.method public setICMSystemTimeValue(II)V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/icm/CarIcmManager;->setIcmSystemTimeValue(II)V

    return-void
.end method

.method public setICMWindBlowMode(I)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIcmWindBlowMode(I)V

    return-void
.end method

.method public setICMWindLevel(I)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIcmWindLevel(I)V

    return-void
.end method

.method public setIcmAccount([B)V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/car/hardware/icm/CarIcmManager;->setIcmAccount(Ljava/lang/String;)V

    return-void
.end method

.method public setIcmAlarmVolume(I)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIcmAlarmVolume(I)V

    return-void
.end method

.method public setIcmDayNightMode(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 447
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "not support"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIcmDayNightSwitch(Z)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIcmDayNightSwitch(I)V

    return-void
.end method

.method public setIcmDistractionLevel(I)V
    .locals 0

    return-void
.end method

.method public setIcmDmsMode(I)V
    .locals 0

    return-void
.end method

.method public setIcmFatigueLevel(I)V
    .locals 0

    return-void
.end method

.method public setIcmMediaSource(Z)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIcmMediaSource(I)V

    return-void
.end method

.method public setIcmMultiProperty(Ljava/util/LinkedList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 415
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v1, "IcmController"

    if-eqz p1, :cond_4

    .line 416
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    .line 418
    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 419
    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 421
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 422
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 423
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 425
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    .line 426
    new-instance v6, Landroid/car/hardware/CarPropertyValue;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v6, v5, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    goto :goto_2

    .line 427
    :cond_0
    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    .line 428
    new-instance v6, Landroid/car/hardware/CarPropertyValue;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v6, v5, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    goto :goto_2

    .line 430
    :cond_1
    new-instance v6, Landroid/car/hardware/CarPropertyValue;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v6, v5, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 432
    :goto_2
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetIcmMultiProperty Add Property = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 436
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetIcmMultiProperty, linkedList size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", paramLinkedList size = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    const-string p1, "SetIcmMultiProperty, linkedList is null or size 0"

    .line 438
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public setIcmNavigation(Z)V
    .locals 0

    return-void
.end method

.method public setIcmScreenLight(Z)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIcmScreenLight(I)V

    return-void
.end method

.method public setIcmTemperature(Z)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIcmTemperature(I)V

    return-void
.end method

.method public setIcmTimeFormat(I)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIcmTimeFormat(I)V

    return-void
.end method

.method public setIcmWindMode(Z)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIcmWindMode(I)V

    return-void
.end method

.method public setIcmWindPower(Z)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIcmWindPower(I)V

    return-void
.end method

.method public setMeterBackLightLevel(I)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setMeterBackLightLevel(I)V

    return-void
.end method

.method public setMeterSoundState(IIZ)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/car/hardware/icm/CarIcmManager;->setMeterSoundState(III)V

    return-void
.end method

.method public setMusicInfo([B[B)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/icm/CarIcmManager;->setMusicInfo([B[B)V

    return-void
.end method

.method public setNavigationInfo([B)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setNavigationInfo([B)V

    return-void
.end method

.method public setNetRadioInfo([B[B)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/icm/CarIcmManager;->setNetRadioInfo([B[B)V

    return-void
.end method

.method public setRadioInfo([B)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setRadioInfo([B)V

    return-void
.end method

.method public setRadioType(I)V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setRadioType(I)V

    return-void
.end method

.method public setSpeedLimitWarningSwitch(Z)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setSpeedLimitWarningSwitch(I)V

    return-void
.end method

.method public setSpeedLimitWarningValue(I)V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setSpeedLimitWarningValue(I)V

    return-void
.end method

.method public setWeatherInfo([B)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setWeatherInfo([B)V

    return-void
.end method

.method public unregisterCanEventMsg(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEventMsg;",
            ">;>;)V"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmEventCallback:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->convertUnregisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;->mCarIcmEventCallback:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/icm/CarIcmManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :goto_0
    return-void
.end method
