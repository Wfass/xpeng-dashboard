.class public Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;
.super Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;
.source "ScuController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScuController"


# instance fields
.field private mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

.field private mCarScuManager:Landroid/car/hardware/scu/CarScuManager;


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    return-void
.end method

.method private static byte2float([BI)F
    .locals 5

    add-int/lit8 v0, p1, 0x0

    .line 159
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x1

    .line 161
    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    long-to-int v0, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x2

    .line 163
    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    long-to-int v0, v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    add-int/lit8 p1, p1, 0x3

    .line 165
    aget-byte p0, p0, p1

    int-to-long p0, p0

    const/16 v2, 0x18

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    long-to-int p0, p0

    .line 166
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method private static bytesToInt([BI)I
    .locals 2

    .line 150
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public getAccExitReason()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccLkaWarning()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAebAlarmSwitchState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAltimeter()[B
    .locals 1

    const/4 v0, 0x0

    .line 377
    new-array v0, v0, [B

    return-object v0
.end method

.method public getAltimeterV2()[F
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getAltimeter()[F

    move-result-object v0

    return-object v0
.end method

.method public getAssLineChanged()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAutoParkErrorCode()I
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getAutoParkErrorCode()I

    move-result v0

    return v0
.end method

.method public getAutoParkSwitch()I
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getAutoParkSwitch()I

    move-result v0

    return v0
.end method

.method public getAutoRoadTips()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBlindAreaDetectionWarning()I
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getBlindAreaDetectionWarning()I

    move-result v0

    return v0
.end method

.method public getFrontCameraFault()[I
    .locals 1

    const/4 v0, 0x0

    .line 490
    new-array v0, v0, [I

    return-object v0
.end method

.method public getFrontCollisionSecurity()I
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getFrontCollisionSecurity()I

    move-result v0

    return v0
.end method

.method public getFrontMmRadarFault()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFrontRadarData()[F
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getFrontRadarData()[F

    move-result-object v0

    return-object v0
.end method

.method public getFrontRadarFaultSt()[I
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getFrontRadarFaultSt()[I

    move-result-object v0

    return-object v0
.end method

.method public getFrontRadarLevel()[I
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getFrontRadarLevel()[I

    move-result-object v0

    return-object v0
.end method

.method public getFsdSwitchState()I
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getFsdSwitchState()I

    move-result v0

    return v0
.end method

.method public getIcmAlarmFaultState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIntelligentSpeedLimit()I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getIntelligentSpeedLimit()I

    move-result v0

    return v0
.end method

.method public getKeyPark()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLaneChangeAssist()I
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getLaneChangeAssist()I

    move-result v0

    return v0
.end method

.method public getLaneDepartureWarning()I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getLaneDepartureWarning()I

    move-result v0

    return v0
.end method

.method public getLccExitReason()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMileageExtraParams()[F
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getMileageExtraParams()[F

    move-result-object v0

    return-object v0
.end method

.method public getModeIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNearestEnableRadar()I
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getNearestEnableRadar()I

    move-result v0

    return v0
.end method

.method public getParkByMemorySwSt()I
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getParkByMemorySwSt()I

    move-result v0

    return v0
.end method

.method public getParkStatus()I
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getParkingStatus()I

    move-result v0

    return v0
.end method

.method public getParkingOperationTips()I
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getScuOperationTips()I

    move-result v0

    return v0
.end method

.method public getParkingProcessPath()[F
    .locals 1

    const/4 v0, 0x0

    .line 364
    new-array v0, v0, [F

    return-object v0
.end method

.method public getRadarWarningVoiceStatus()Z
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getRadarWarningVoiceStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getRearMmRadarFault()[I
    .locals 1

    const/4 v0, 0x0

    .line 500
    new-array v0, v0, [I

    return-object v0
.end method

.method public getRoadVoiceTips()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScu322LogData()[I
    .locals 1

    const/4 v0, 0x0

    .line 459
    new-array v0, v0, [I

    return-object v0
.end method

.method public getScu3FDExtendLogData()[I
    .locals 1

    const/4 v0, 0x0

    .line 465
    new-array v0, v0, [I

    return-object v0
.end method

.method public getScuFrontMinDistance()I
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getFrontRadarDistance()I

    move-result v0

    return v0
.end method

.method public getScuModeIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScuRearMinDistance()I
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getTailRadarDistance()I

    move-result v0

    return v0
.end method

.method public getScuSteerWaringLvl()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSideReversingWarning()I
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getSideReversingWarning()I

    move-result v0

    return v0
.end method

.method public getSlotTheta()[B
    .locals 1

    const/4 v0, 0x0

    .line 357
    new-array v0, v0, [B

    return-object v0
.end method

.method public getTailRadarData()[F
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getTailRadarData()[F

    move-result-object v0

    return-object v0
.end method

.method public getTailRadarFaultSt()[I
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getTailRadarFaultSt()[I

    move-result-object v0

    return-object v0
.end method

.method public getTailRadarLevel()[I
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getTailRadarLevel()[I

    move-result-object v0

    return-object v0
.end method

.method public getTargetParkingPosition()[B
    .locals 1

    const/4 v0, 0x0

    .line 371
    new-array v0, v0, [B

    return-object v0
.end method

.method public getTargetParkingPositionV2()[I
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getTargetParkingPosition()[I

    move-result-object v0

    return-object v0
.end method

.method public initCarManager(Landroid/car/Car;)V
    .locals 1

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarApiClient:Landroid/car/Car;

    :try_start_0
    const-string v0, "xp_scu"

    .line 37
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ScuController"

    const-string v0, "Car not connected"

    .line 39
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initPropertyTypeMap()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402601

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$FrontCollisionSecurityEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140260d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$IntelligentSpeedLimitEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402609

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$LaneChangeAssistEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140262a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$SideReversingWarningEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402602

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$LaneDepartureWarningEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402605

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$BlindAreaDetectionWarningEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402611

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$RadarWarningVoiceStatusEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21412657

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$FactoryScuTest322EventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21412658

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$FactoryScuTest3FDEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21412659

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$FactoryScuTest3FEEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140261b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuOperationTipUpdateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140262f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuSuperParkActiveResponeEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2161263e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2ScuSlot1UpdateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2161262e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2ScuSlot2UpdateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21612637

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2ScuSlot3UpdateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21612633

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2ScuSlot4UpdateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2161263d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2ScuSlot5UpdateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21412643

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2SlotThetaEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2141262b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuSensorFeature1UpdateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21412636

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuSensorFeature2UpdateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2161265a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2ScuAvmBox1UpdateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2161262c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2ScuAvmBox2UpdateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2161263f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuLocationUpdateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21612640

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuLocation2UpdateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140264f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuReversingDisplayActiveEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402646

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuNearestEnableRadarEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2141264a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2FrontRadarLevelEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2141264e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2TailRadarLevelEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21412649

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2FrontRadarFaultStEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2141264d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2TailRadarFaultStEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2161261c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2FrontRadarDataEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2161261d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2TailRadarDataEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402651

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuFrontMinDistanceEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402652

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuRearMinDistanceEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140262d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuAutoParkErrorCodeEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21412656

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuLDWWarningEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21412653

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuBSDWarningEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21412654

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuRCTAWarningEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21412655

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuLKAWarningEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140264b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuModeIndexEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21612661

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ParkingProcessPathEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21412644

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2TargetParkingPositionEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21612642

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2AltimeterEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402650

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$RearMirrorCtrl;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402669

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$AssLineChangedEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2161266c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$AllParklotDataEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2161265e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$SensorDataUpdateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21612662

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$LeftAvmDataUpdateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21612663

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$RightAvmDataUpdateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21612664

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$SlotForPatkUpdateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140265f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$ErrorTipsUpdateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402670

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$FsdSwitchEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x214026d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$ParkByMemorySwEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402618

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$AutoParkEventMsg;

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

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController$1;-><init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    .line 129
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->convertRegisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/scu/CarScuManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ScuController"

    const-string v0, "Car not connected"

    .line 132
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAssLineChanged(I)V
    .locals 0

    return-void
.end method

.method public setAutoParkInState(I)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->setAutoParkInState(I)V

    return-void
.end method

.method public setAutoParkOutState(I)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->setAutoParkOutState(I)V

    return-void
.end method

.method public setAutoParkSwitch(I)V
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->setAutoParkSwitch(I)V

    return-void
.end method

.method public setAutoPilotLocationInfo(FFFFFFJ)V
    .locals 10

    move-object v0, p0

    .line 249
    iget-object v1, v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Landroid/car/hardware/scu/CarScuManager;->setAutoPilotLocationInfo(FFFFFFJ)V

    return-void
.end method

.method public setBlindAreaDetectionWarning(I)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->setBlindAreaDetectionWarning(I)V

    return-void
.end method

.method public setComonHomeSlotId(I)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->setCommonHomeSlotID(I)V

    return-void
.end method

.method public setDetailRoadClass(I)V
    .locals 0

    return-void
.end method

.method public setDoorOpenWarningSwitch(I)V
    .locals 0

    return-void
.end method

.method public setFactoryScuTest(I)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->setFactoryScuTest(I)V

    return-void
.end method

.method public setFreeParking1Data(FFFIIFF)V
    .locals 8

    .line 475
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/car/hardware/scu/CarScuManager;->setFreeParking1Data(FFFIIFF)V

    return-void
.end method

.method public setFreeParking2Data(FFFIIFF)V
    .locals 8

    .line 480
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/car/hardware/scu/CarScuManager;->setFreeParking1Data(FFFIIFF)V

    return-void
.end method

.method public setFrontCollisionSecurity(I)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->setFrontCollisionSecurity(I)V

    return-void
.end method

.method public setFsdSwitch(I)V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->setFsdSwitch(I)V

    return-void
.end method

.method public setIntelligentSpeedLimit(I)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->setIntelligentSpeedLimit(I)V

    return-void
.end method

.method public setKeyPark(Z)V
    .locals 0

    return-void
.end method

.method public setLaneChangeAssist(I)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->setLaneChangeAssist(I)V

    return-void
.end method

.method public setLaneDepartureWarning(I)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->setLaneDepartureWarning(I)V

    return-void
.end method

.method public setLaneMiddleAssist(I)V
    .locals 0

    return-void
.end method

.method public setLocalWeather(IIII)V
    .locals 0

    return-void
.end method

.method public setLocationInfo(FFFFFJ)V
    .locals 8

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/car/hardware/scu/CarScuManager;->setLocationInfo(FFFFFJ)V

    return-void
.end method

.method public setParkByMemorySw(I)V
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->setParkByMemorySw(I)V

    return-void
.end method

.method public setParkLotChoseIndex2Scu(I)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->setParkLotChoseIndex2Scu(I)V

    return-void
.end method

.method public setParkLotRecvIndex2Scu(I)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->setParkLotRecvIndex2Scu(I)V

    return-void
.end method

.method public setPhoneAPButton(I)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->setPhoneApButton(I)V

    return-void
.end method

.method public setPhoneSMButton(I)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->setPhoneSmButton(I)V

    return-void
.end method

.method public setRadarWarningVoiceStatus(Z)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->setRadarWarningVoiceStatus(I)V

    return-void
.end method

.method public setRoadAttributes(II)V
    .locals 0

    return-void
.end method

.method public setScuDmsMode(I)V
    .locals 0

    return-void
.end method

.method public setScuOtaTagStatus(I)V
    .locals 0

    return-void
.end method

.method public setScuRoadAttr(I)V
    .locals 0

    return-void
.end method

.method public setSeatBeltReq(I)V
    .locals 0

    return-void
.end method

.method public setSideReversingWarning(I)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->setSideReversingWarning(I)V

    return-void
.end method

.method public setSuperParkMode(Z)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->setSuperParkMode(I)V

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

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->convertUnregisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/scu/CarScuManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :goto_0
    return-void
.end method
