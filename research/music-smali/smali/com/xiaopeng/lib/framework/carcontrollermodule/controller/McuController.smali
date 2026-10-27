.class public Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;
.super Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;
.source "McuController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController;


# static fields
.field public static final CAR_STAGE_A:Ljava/lang/String; = "A"

.field public static final CAR_STAGE_B:Ljava/lang/String; = "B"

.field public static final CAR_STAGE_C:Ljava/lang/String; = "C"

.field public static final CAR_STAGE_D:Ljava/lang/String; = "D"

.field public static final CAR_TYPE_D10:Ljava/lang/String; = "D10"

.field public static final CAR_TYPE_D20:Ljava/lang/String; = "D20"

.field public static final CAR_TYPE_D21:Ljava/lang/String; = "D21"

.field public static final CAR_TYPE_E28:Ljava/lang/String; = "E28"

.field public static final CAR_TYPE_E36:Ljava/lang/String; = "E36"

.field private static final KEY_HARDWARE_VERSION:Ljava/lang/String; = "ro.boot.hw_version"

.field private static final KEY_SOFTWARE_VERSION_PROPERTY:Ljava/lang/String; = "ro.build.display.id"

.field private static final TAG:Ljava/lang/String; = "McuController"


# instance fields
.field private mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    return-void
.end method


# virtual methods
.method public getAutoPowerOffMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCpuTemperature()I
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    const v1, 0x21601461

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/mcu/CarMcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getDtcReportEV()[I
    .locals 1

    const/4 v0, 0x0

    .line 425
    new-array v0, v0, [I

    return-object v0
.end method

.method public getFactoryDisplayTypeMsgToMcu()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getFactoryDugReqMsgToMcu()[I
    .locals 1

    const/4 v0, 0x0

    .line 206
    new-array v0, v0, [I

    return-object v0
.end method

.method public getFactoryMcuBmsMsgToMcu()I
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    const v1, 0x1540010a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/mcu/CarMcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getFactoryPmSilentMsgToMcu()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFactoryPwrDebugMsgToMcu()[I
    .locals 1

    const/4 v0, 0x0

    .line 196
    new-array v0, v0, [I

    return-object v0
.end method

.method public getGSensorOffset()[I
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->getGSensorOffset()[I

    move-result-object v0

    return-object v0
.end method

.method public getHardwareCarStage()Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->getHardwareCarStage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHardwareCarType()Ljava/lang/String;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->getHardwareCarType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHardwareVersion()I
    .locals 1

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->getHardwareVersion()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getIgStatus()[I
    .locals 1

    const/4 v0, 0x0

    .line 418
    new-array v0, v0, [I

    return-object v0
.end method

.method public getIgStatusFromMcu()I
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v0

    return v0
.end method

.method public getMcu4GErrorStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMcuChargeComplete()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMcuFaultInfo()[B
    .locals 1

    const/4 v0, 0x0

    .line 347
    new-array v0, v0, [B

    return-object v0
.end method

.method public getMcuHardwareId()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->getMcuHardwareId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMcuRequestSavingQxdmLog()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMcuTheftState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMcuVentilateState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPmStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPowerOffCountdownNotice()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRoadAttribute(II)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getShockInfo()[I
    .locals 1

    const/4 v0, 0x0

    .line 511
    new-array v0, v0, [I

    return-object v0
.end method

.method public getShockSwMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getXpCduType()Ljava/lang/String;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->getXpCduType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initCarManager(Landroid/car/Car;)V
    .locals 1

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarApiClient:Landroid/car/Car;

    :try_start_0
    const-string v0, "xp_mcu"

    .line 53
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/mcu/CarMcuManager;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "McuController"

    const-string v0, "Car not connected"

    .line 55
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initPropertyTypeMap()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x1540010a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$FactoryPwrDebugMsgToMcuEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$FactoryDugReqMsgToMcuEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v2, 0x2110141e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$FactoryDisplayTypeMsgToMcuEventMsg;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$FactoryMcuBmsMsgToMcuEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$FactorySecretKeyToMcuEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$FactoryTestMsgToMcuEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v2, 0x2141143f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuPsuOtaEventMsg;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuOta1EventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$BurnProgressEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$BurnFinishEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$BurnErrorEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$ChargeInfoEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuGpsInfoEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v2, 0x21701407

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuFaultInfoEventMsg;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuTheftStateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuReset4gEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuAckPwrDebugEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2170141f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuGsensorOffsetEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401409

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IMcuController$McuIgStatusEventMsg;

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

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController$1;-><init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 124
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->convertRegisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/mcu/CarMcuManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendChargeCompleteTime2Mcu(I)V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    const v1, 0x1540010a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setIntProperty(III)V

    return-void
.end method

.method public sendDiagnoseMsgToMcu([I)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendDiagnoseMsgToMcu([I)V

    return-void
.end method

.method public sendFactoryDisplayTypeMsgToMcu(I)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendFactoryDisplayTypeMsgToMcu(I)V

    return-void
.end method

.method public sendFactoryDugReqMsgToMcu([I)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendFactoryDugReqMsgToMcu([I)V

    return-void
.end method

.method public sendFactoryMcuBmsMsgToMcu(I)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendFactoryMcuBmsMsgToMcu(I)V

    return-void
.end method

.method public sendFactoryPmSilentMsgToMcu(I)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendFactoryPmSilentMsgToMcu(I)V

    return-void
.end method

.method public sendFactoryPwrDebugMsgToMcu([I)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendFactoryPwrDebugMsgToMcu([I)V

    return-void
.end method

.method public sendFactorySecretKeyToMcu([B)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendFactorySecretKeyToMcu([B)V

    return-void
.end method

.method public sendFactoryTestMsgToMcu([I)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendFactoryTestMsgToMcu([I)V

    return-void
.end method

.method public sendGpsInfoMsgToMcu([I)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendGpsInfoMsgToMcu([I)V

    return-void
.end method

.method public sendOta1MsgToMcu([I)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendOta1MsgToMcu([I)V

    return-void
.end method

.method public sendPsuOtaMsgToMcu([I)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendPsuOtaMsgToMcu([I)V

    return-void
.end method

.method public sendRequestWakeToMcu(I)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendRequestWakeToMcu(I)V

    return-void
.end method

.method public sendReset4gMsgToMcu([I)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendReset4gMsgToMcu([I)V

    return-void
.end method

.method public sendResetModemMsgToMcu(I)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendResetModemMsgToMcu(I)V

    return-void
.end method

.method public sendToMcuAppReadCfg(I[I)V
    .locals 0

    return-void
.end method

.method public sendToMcuAppWriteCfg(III)V
    .locals 0

    return-void
.end method

.method public setAutoPowerOff(I)V
    .locals 0

    return-void
.end method

.method public setChairSlowlyMove([I)V
    .locals 0

    return-void
.end method

.method public setDriveMode(I)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setDriveMode(I)V

    return-void
.end method

.method public setFlash(Z)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setFlash(I)V

    return-void
.end method

.method public setHorn(Z)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setHorn(I)V

    return-void
.end method

.method public setIgHeartBeat()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->setIgHeartBeat()V

    return-void
.end method

.method public setIgOff()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->setIgOff()V

    return-void
.end method

.method public setIgOn()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->setIgOn()V

    return-void
.end method

.method public setLampCommand(I)V
    .locals 0

    return-void
.end method

.method public setMcuIsWakeUpByPhone(Z)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setMcuIsWakeUpByPhone(I)V

    return-void
.end method

.method public setMqttLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/car/hardware/mcu/CarMcuManager;->setMqttLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPowerOffCountdownAction(I)V
    .locals 0

    return-void
.end method

.method public setRearFogCommand(I)V
    .locals 0

    return-void
.end method

.method public setRepairMode(Z)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setRepairMode(I)V

    return-void
.end method

.method public setSeatControlCommand(II)V
    .locals 0

    return-void
.end method

.method public setShockHandleCmd(I)V
    .locals 0

    return-void
.end method

.method public setShockSwMode(I)V
    .locals 0

    return-void
.end method

.method public setShockValue2Mcu(I)V
    .locals 0

    return-void
.end method

.method public setTheftHeartBeatOff()V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->setTheftHeartBeatOff()V

    return-void
.end method

.method public setTheftHeartBeatOn()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->setTheftHeartBeatOn()V

    return-void
.end method

.method public setWindowsCommand(I)V
    .locals 0

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

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->convertUnregisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/mcu/CarMcuManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public updateMcu(Ljava/lang/String;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->updateMcuBin(Ljava/lang/String;)V

    return-void
.end method
