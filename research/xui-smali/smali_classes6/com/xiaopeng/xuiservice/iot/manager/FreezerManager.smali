.class public Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;
.super Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
.source "FreezerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$FreezerManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FreezerManager"

.field private static bMonitorProp:Z

.field private static mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

.field private static mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

.field private static mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

.field private static mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static mFreezerDevice:Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mDeviceList:Ljava/util/ArrayList;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->bMonitorProp:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 331
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;-><init>()V

    .line 332
    const-string v0, "FreezerManager"

    const-string v1, "registerDump: freezer"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v0, "freezer"

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FreezerManager$GBVkNtEiCXt3FkDUTzTxya6RX2g;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FreezerManager$GBVkNtEiCXt3FkDUTzTxya6RX2g;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 337
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$1;

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;
    .locals 1

    .line 38
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mFreezerDevice:Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->getHoldingTimeMemory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->setHoldingTimeMemory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->selfGetPropertyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private addBcmManagerCallback()V
    .locals 2

    .line 267
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$1;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 322
    const-string v0, "FreezerManager"

    const-string v1, "addBcmManagerCallback"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 325
    return-void
.end method

.method private getChildLock()Ljava/lang/String;
    .locals 5

    .line 61
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 64
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getCFChildLockState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FreezerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChildLock failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .end local v1    # "e":Ljava/lang/Exception;
    const-string v1, "error"

    return-object v1
.end method

.method private getDoorOpen()Ljava/lang/String;
    .locals 5

    .line 85
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 88
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getCarFridgeDoorState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FreezerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDoorOpen failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .end local v1    # "e":Ljava/lang/Exception;
    const-string v1, "error"

    return-object v1
.end method

.method private getHeatPreservation()Ljava/lang/String;
    .locals 5

    .line 158
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 161
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getCFKeepTempState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FreezerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHeatPreservation failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .end local v1    # "e":Ljava/lang/Exception;
    const-string v1, "error"

    return-object v1
.end method

.method private getHoldingTimeMemory()Ljava/lang/String;
    .locals 3

    .line 141
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getInstance()Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "FreezerHTM"

    .line 140
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 142
    const-string v0, "on"

    goto :goto_0

    :cond_0
    const-string v0, "off"

    .line 140
    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;
    .locals 1

    .line 340
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$FreezerManagerHolder;->access$300()Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;

    move-result-object v0

    return-object v0
.end method

.method private getPowerOn()Ljava/lang/String;
    .locals 5

    .line 182
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 185
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getCFPowerState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FreezerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPowerOn failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v1    # "e":Ljava/lang/Exception;
    const-string v1, "error"

    return-object v1
.end method

.method private getRemainHoldingTime()Ljava/lang/String;
    .locals 5

    .line 109
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 112
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getCFKeepTempRemainTime()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FreezerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRemainHoldingTime failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .end local v1    # "e":Ljava/lang/Exception;
    const-string v1, "error"

    return-object v1
.end method

.method private getTemperature()Ljava/lang/String;
    .locals 5

    .line 247
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 250
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getCFTempValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FreezerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTemperature failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .end local v1    # "e":Ljava/lang/Exception;
    const-string v1, "error"

    return-object v1
.end method

.method private getWorkMode()Ljava/lang/String;
    .locals 5

    .line 206
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 209
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getCFWorkMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 219
    goto :goto_0

    .line 215
    :pswitch_0
    const-string v1, "heat"

    return-object v1

    .line 213
    :pswitch_1
    const-string v1, "cold"

    return-object v1

    .line 211
    :pswitch_2
    const-string v1, "off"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FreezerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWorkMode failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "error"

    return-object v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$init$1(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;)V
    .locals 3

    .line 353
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->selfGetPropertyMap()Ljava/util/Map;

    .line 354
    const-string v0, "FreezerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify device add:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mFreezerDevice:Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceAdd(Ljava/util/List;)V

    .line 356
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 335
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method private notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 259
    sget-boolean v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->bMonitorProp:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "FreezerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyPropEvent, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mFreezerDevice:Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_0
    return-void
.end method

.method private declared-synchronized selfGetPropertyMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 514
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mFreezerDevice:Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;

    if-eqz v0, :cond_1

    .line 515
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mFreezerDevice:Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    .line 517
    .local v0, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 518
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 519
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mFreezerDevice:Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;->setPropertyMap(Ljava/util/Map;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 522
    :cond_0
    const-string v1, "power_ctrl"

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->getPowerOn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    const-string v1, "door_ctrl"

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->getDoorOpen()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const-string/jumbo v1, "work_mode"

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->getWorkMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const-string v1, "temperature"

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->getTemperature()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const-string v1, "holding_time"

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->getRemainHoldingTime()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string v1, "ht_memory_ctrl"

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->getHoldingTimeMemory()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string v1, "heat_preservation"

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->getHeatPreservation()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string v1, "child_lock"

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->getChildLock()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const-string v1, "FreezerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "propertyMap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    monitor-exit p0

    return-object v0

    .line 536
    .end local v0    # "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit p0

    .line 513
    .end local p0    # "this":Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;
    throw v0
.end method

.method private setChildLock(Ljava/lang/String;)V
    .locals 5
    .param p1, "lock"    # Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 51
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    const-string v1, "FreezerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setChildLock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "on"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :try_start_0
    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->setCFChildLock(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FreezerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setChildLock failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setDoorOpen(Ljava/lang/String;)V
    .locals 5
    .param p1, "open"    # Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 75
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    const-string v1, "FreezerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDoorOpen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "on"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :try_start_0
    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->setCarFridgeDoorCtrl(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FreezerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDoorOpen failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setHeatPreservation(Ljava/lang/String;)V
    .locals 5
    .param p1, "on"    # Ljava/lang/String;

    .line 146
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 148
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    const-string v1, "FreezerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHeatPreservation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "on"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :try_start_0
    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->setCFKeepTempSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FreezerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHeatPreservation failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setHoldingTime(Ljava/lang/String;)V
    .locals 5
    .param p1, "hour"    # Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 99
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    const-string v1, "FreezerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHoldingTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->setCFKeepTempTime(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FreezerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHoldingTime failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setHoldingTimeMemory(Ljava/lang/String;)V
    .locals 6
    .param p1, "on"    # Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 122
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 124
    .local v1, "val":I
    const-string v2, "FreezerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHoldingTimeMemory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->setCFKeepTempTimeMemoryRequest(I)V

    .line 130
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getInstance()Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "FreezerHTM"

    .line 129
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    const-string v2, "ht_memory_ctrl"

    invoke-direct {p0, v2, p1}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 134
    :catch_0
    move-exception v2

    .line 135
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "FreezerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setHoldingTimeMemory failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setPowerOn(Ljava/lang/String;)V
    .locals 5
    .param p1, "on"    # Ljava/lang/String;

    .line 170
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 172
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    const-string v1, "FreezerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPowerOn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "on"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :try_start_0
    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->setCFPowerSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FreezerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHeatPreservation failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setTemperature(Ljava/lang/String;)V
    .locals 5
    .param p1, "temperature"    # Ljava/lang/String;

    .line 225
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 227
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    const-string v1, "FreezerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTemperature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x18402

    if-eq v2, v3, :cond_1

    const v3, 0x197de

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "inc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "dec"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 238
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 235
    :pswitch_0
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->setFCTempDec()V

    .line 236
    goto :goto_2

    .line 232
    :pswitch_1
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->setCFTempInc()V

    .line 233
    goto :goto_2

    .line 238
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->setCFTempValue(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_2
    goto :goto_3

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FreezerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTemperature failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setWorkMode(Ljava/lang/String;)V
    .locals 6
    .param p1, "cold"    # Ljava/lang/String;

    .line 194
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 196
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    const-string v1, "FreezerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWorkMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "cold"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :try_start_0
    const-string v1, "cold"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v4, v5

    nop

    :cond_1
    invoke-virtual {v0, v4}, Landroid/car/hardware/bcm/CarBcmManager;->setCFWorkMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    goto :goto_1

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FreezerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWorkMode failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public addDevice(Lcom/xiaopeng/xuimanager/iot/BaseDevice;)V
    .locals 0
    .param p1, "device"    # Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 511
    return-void
.end method

.method public addDeviceListener(Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 435
    const-string v0, "FreezerManager"

    const-string v1, "addDeviceListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    sput-object p1, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 438
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 442
    const-string v0, "dump FreezerManager"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    if-eqz p2, :cond_2

    .line 445
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 446
    aget-object v2, p2, v1

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "--setHoldingTimeMemory"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_2

    :sswitch_1
    const-string v4, "--getProperties"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_2

    :sswitch_2
    const-string v4, "--setPowerOn"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_2

    :sswitch_3
    const-string v4, "--setDoorOpen"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_4
    const-string v4, "--setHeatPreservation"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_2

    :sswitch_5
    const-string v4, "--setChildLock"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_2

    :sswitch_6
    const-string v4, "--setTemperature"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_7
    const-string v4, "--setHoldingTime"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_2

    :sswitch_8
    const-string v4, "--setWorkMode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_2

    :cond_0
    :goto_1
    move v2, v3

    :goto_2
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 493
    :pswitch_0
    array-length v2, p2

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_1

    .line 494
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p2, v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->setChildLock(Ljava/lang/String;)V

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setChildLock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 487
    :pswitch_1
    array-length v2, p2

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_1

    .line 488
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p2, v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->setHeatPreservation(Ljava/lang/String;)V

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHeatPreservation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 481
    :pswitch_2
    array-length v2, p2

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_1

    .line 482
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p2, v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->setHoldingTimeMemory(Ljava/lang/String;)V

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHoldingTimeMemory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 475
    :pswitch_3
    array-length v2, p2

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_1

    .line 476
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p2, v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->setHoldingTime(Ljava/lang/String;)V

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHoldingTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 469
    :pswitch_4
    array-length v2, p2

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_1

    .line 470
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p2, v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->setTemperature(Ljava/lang/String;)V

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTemperature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 463
    :pswitch_5
    array-length v2, p2

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_1

    .line 464
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p2, v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->setWorkMode(Ljava/lang/String;)V

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWorkMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 457
    :pswitch_6
    array-length v2, p2

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_1

    .line 458
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p2, v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->setDoorOpen(Ljava/lang/String;)V

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDoorOpen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 451
    :pswitch_7
    array-length v2, p2

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_1

    .line 452
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p2, v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->setPowerOn(Ljava/lang/String;)V

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPowerOn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 448
    :pswitch_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProperties: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->selfGetPropertyMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    nop

    .line 445
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 502
    .end local v1    # "i":I
    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x401aa6ca -> :sswitch_8
        -0x2002f3f2 -> :sswitch_7
        -0xa61d2ae -> :sswitch_6
        -0x8e9f83b -> :sswitch_5
        0x3bf2a4e -> :sswitch_4
        0x5740bfa -> :sswitch_3
        0x208c6ca2 -> :sswitch_2
        0x369c6389 -> :sswitch_1
        0x66c2f2af -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDevice()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;",
            ">;"
        }
    .end annotation

    .line 376
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mDeviceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPropertyMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 417
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->selfGetPropertyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 5

    .line 345
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/ConnectivityUtil;->getWifiMac()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "macId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freezer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "deviceId":Ljava/lang/String;
    const-string v2, "FreezerManager"

    const-string v3, "init"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    new-instance v2, Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;

    const-string v3, "XpFreezer"

    const-string v4, "Freezer"

    invoke-direct {v2, v3, v1, v4}, Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mFreezerDevice:Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;

    .line 351
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mDeviceList:Ljava/util/ArrayList;

    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mFreezerDevice:Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FreezerManager$sLvrbOWUXNEkM0i_lzfQtQPnNGs;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FreezerManager$sLvrbOWUXNEkM0i_lzfQtQPnNGs;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 357
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->addBcmManagerCallback()V

    .line 359
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    new-instance v3, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$2;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$2;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addConnectionListener(Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;)V

    .line 372
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 506
    const-string v0, "refrigerator"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public monitorDevice(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "bMonitor"    # Z

    .line 422
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mFreezerDevice:Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->mFreezerDevice:Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const-string v0, "FreezerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "monitorDevice, bMonitorProp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    sput-boolean p2, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->bMonitorProp:Z

    .line 427
    :cond_0
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;

    .line 431
    return-void
.end method

.method public setPropertyMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 381
    .local p2, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 382
    .local v1, "prop":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 384
    .local v2, "val":Ljava/lang/String;
    const-string v3, "FreezerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPropertyMap, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "child_lock"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "work_mode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string v4, "power_ctrl"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_3
    const-string v4, "temperature"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v4, "ht_memory_ctrl"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_5
    const-string v4, "holding_time"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_6
    const-string v4, "door_ctrl"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_7
    const-string v4, "heat_preservation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x6

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_0

    .end local v1    # "prop":Ljava/lang/String;
    .end local v2    # "val":Ljava/lang/String;
    goto :goto_2

    .line 409
    .restart local v1    # "prop":Ljava/lang/String;
    .restart local v2    # "val":Ljava/lang/String;
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->setChildLock(Ljava/lang/String;)V

    .line 409
    .end local v1    # "prop":Ljava/lang/String;
    .end local v2    # "val":Ljava/lang/String;
    goto :goto_2

    .line 406
    .restart local v1    # "prop":Ljava/lang/String;
    .restart local v2    # "val":Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->setHeatPreservation(Ljava/lang/String;)V

    .line 407
    goto :goto_2

    .line 403
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->setHoldingTimeMemory(Ljava/lang/String;)V

    .line 404
    goto :goto_2

    .line 400
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->setHoldingTime(Ljava/lang/String;)V

    .line 401
    goto :goto_2

    .line 397
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->setTemperature(Ljava/lang/String;)V

    .line 398
    goto :goto_2

    .line 394
    :pswitch_5
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->setWorkMode(Ljava/lang/String;)V

    .line 395
    goto :goto_2

    .line 391
    :pswitch_6
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->setDoorOpen(Ljava/lang/String;)V

    .line 392
    goto :goto_2

    .line 388
    :pswitch_7
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->setPowerOn(Ljava/lang/String;)V

    .line 389
    nop

    .line 412
    .end local v1    # "prop":Ljava/lang/String;
    .end local v2    # "val":Ljava/lang/String;
    :goto_2
    goto/16 :goto_0

    .line 413
    :cond_1
    return-void

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54a1a0b5 -> :sswitch_7
        -0x52dc8ba4 -> :sswitch_6
        -0x4b772937 -> :sswitch_5
        0x4eef036 -> :sswitch_4
        0x132cc574 -> :sswitch_3
        0x1a40cd65 -> :sswitch_2
        0x40fcee11 -> :sswitch_1
        0x50c25a6e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
