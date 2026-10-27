.class public Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;
.super Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;
.source "AvmController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController;


# static fields
.field private static final TAG:Ljava/lang/String; = "AvmController"


# instance fields
.field private mCarAvmEventCallback:Landroid/car/hardware/avm/CarAvmManager$CarAvmEventCallback;

.field private mCarAvmManager:Landroid/car/hardware/avm/CarAvmManager;


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmEventCallback:Landroid/car/hardware/avm/CarAvmManager$CarAvmEventCallback;

    return-void
.end method

.method private byte2float([BI)F
    .locals 5

    add-int/lit8 v0, p2, 0x0

    .line 178
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x1

    .line 180
    aget-byte v2, p1, v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    long-to-int v0, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x2

    .line 182
    aget-byte v2, p1, v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    long-to-int v0, v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    add-int/lit8 p2, p2, 0x3

    .line 184
    aget-byte p1, p1, p2

    int-to-long p1, p1

    const/16 v2, 0x18

    shl-long/2addr p1, v2

    or-long/2addr p1, v0

    long-to-int p1, p1

    .line 185
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method


# virtual methods
.method public getCameraAngle()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmManager:Landroid/car/hardware/avm/CarAvmManager;

    invoke-virtual {v0}, Landroid/car/hardware/avm/CarAvmManager;->getCameraAngle()I

    move-result v0

    return v0
.end method

.method public getCameraDisplayMode()I
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmManager:Landroid/car/hardware/avm/CarAvmManager;

    invoke-virtual {v0}, Landroid/car/hardware/avm/CarAvmManager;->getCameraDisplayMode()I

    move-result v0

    return v0
.end method

.method public getCameraFailInfo()[I
    .locals 1

    const/4 v0, 0x0

    .line 173
    new-array v0, v0, [I

    return-object v0
.end method

.method public getCameraHeight()Z
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFrontRadarData()[F
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmManager:Landroid/car/hardware/avm/CarAvmManager;

    invoke-virtual {v0}, Landroid/car/hardware/avm/CarAvmManager;->getFrontRadarData()[F

    move-result-object v0

    return-object v0
.end method

.method public getHasPanoCamera()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHasRoofCamera()Z
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmManager:Landroid/car/hardware/avm/CarAvmManager;

    invoke-virtual {v0}, Landroid/car/hardware/avm/CarAvmManager;->getHasRoofCamera()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getOverlayWorkSt()I
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmManager:Landroid/car/hardware/avm/CarAvmManager;

    invoke-virtual {v0}, Landroid/car/hardware/avm/CarAvmManager;->getOverlayWorkSt()I

    move-result v0

    return v0
.end method

.method public getRoofCameraPosition()I
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmManager:Landroid/car/hardware/avm/CarAvmManager;

    invoke-virtual {v0}, Landroid/car/hardware/avm/CarAvmManager;->getRoofCameraPosition()I

    move-result v0

    return v0
.end method

.method public getRoofCameraState()I
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmManager:Landroid/car/hardware/avm/CarAvmManager;

    invoke-virtual {v0}, Landroid/car/hardware/avm/CarAvmManager;->getRoofCameraState()I

    move-result v0

    return v0
.end method

.method public getRoofMoveCameraState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSteerWheelRotationAngle()F
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmManager:Landroid/car/hardware/avm/CarAvmManager;

    invoke-virtual {v0}, Landroid/car/hardware/avm/CarAvmManager;->getSteerWheelRotationAngle()F

    move-result v0

    return v0
.end method

.method public getTailRadarData()[F
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmManager:Landroid/car/hardware/avm/CarAvmManager;

    invoke-virtual {v0}, Landroid/car/hardware/avm/CarAvmManager;->getTailRadarData()[F

    move-result-object v0

    return-object v0
.end method

.method public initCarManager(Landroid/car/Car;)V
    .locals 1

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarApiClient:Landroid/car/Car;

    :try_start_0
    const-string v0, "xp_avm"

    .line 34
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/avm/CarAvmManager;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmManager:Landroid/car/hardware/avm/CarAvmManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "AvmController"

    const-string v0, "Car not connected"

    .line 36
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initPropertyTypeMap()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21403409

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController$CameraAngleEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140340b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController$CameraHeightEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21403408

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController$CameraRoofEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2161261c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IAvmController$V2FrontRadarDataEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2161261d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IAvmController$V2TailRadarDataEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21602406

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController$CameraSteerAngleEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140340c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController$CameraRoofStateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140340e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController$CameraRoofPosEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140340a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController$CameraRoofMoveStateEventMsg;

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

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmEventCallback:Landroid/car/hardware/avm/CarAvmManager$CarAvmEventCallback;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController$1;-><init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmEventCallback:Landroid/car/hardware/avm/CarAvmManager$CarAvmEventCallback;

    .line 73
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->convertRegisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmManager:Landroid/car/hardware/avm/CarAvmManager;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmEventCallback:Landroid/car/hardware/avm/CarAvmManager$CarAvmEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/avm/CarAvmManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setCameraAngle(I)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmManager:Landroid/car/hardware/avm/CarAvmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/avm/CarAvmManager;->setCameraAngle(I)V

    return-void
.end method

.method public setCameraDisplayMode(I)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmManager:Landroid/car/hardware/avm/CarAvmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/avm/CarAvmManager;->setCameraDisplayMode(I)V

    return-void
.end method

.method public setCameraHeight(Z)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmManager:Landroid/car/hardware/avm/CarAvmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/avm/CarAvmManager;->setCameraHeight(I)V

    return-void
.end method

.method public setMultipleDisplayProperties(IIIII)V
    .locals 6

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmManager:Landroid/car/hardware/avm/CarAvmManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/car/hardware/avm/CarAvmManager;->setMultipleDisplayProperties(IIIII)V

    return-void
.end method

.method public setOverlayWorkSt(I)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmManager:Landroid/car/hardware/avm/CarAvmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/avm/CarAvmManager;->setOverlayWorkSt(I)V

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

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmEventCallback:Landroid/car/hardware/avm/CarAvmManager$CarAvmEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmManager:Landroid/car/hardware/avm/CarAvmManager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->convertUnregisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;->mCarAvmEventCallback:Landroid/car/hardware/avm/CarAvmManager$CarAvmEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/avm/CarAvmManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :goto_0
    return-void
.end method
