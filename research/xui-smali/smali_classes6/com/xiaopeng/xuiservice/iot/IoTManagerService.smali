.class public Lcom/xiaopeng/xuiservice/iot/IoTManagerService;
.super Lcom/xiaopeng/xuimanager/pipebus/IPipeBus$Stub;
.source "IoTManagerService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;
.implements Lcom/xiaopeng/xuiservice/iot/manager/IDeviceScanListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IoTManagerService##"

.field private static final mTypeManagerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

.field private final mLock:Ljava/lang/Object;

.field private final mPipeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mTypeManagerMap:Ljava/util/Map;

    .line 72
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mTypeManagerMap:Ljava/util/Map;

    const-string v1, "Fragrance"

    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mTypeManagerMap:Ljava/util/Map;

    const-string v1, "Fridge"

    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mTypeManagerMap:Ljava/util/Map;

    const-string v1, "Freezer"

    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mTypeManagerMap:Ljava/util/Map;

    const-string v1, "XpAssist"

    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_3
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mTypeManagerMap:Ljava/util/Map;

    const-string v1, "SafetySeat-GlobalKids"

    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_4
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 98
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mTypeManagerMap:Ljava/util/Map;

    const-string v1, "Babyfirst"

    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_5
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 103
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mTypeManagerMap:Ljava/util/Map;

    const-string v1, "XP_Remote"

    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_6
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 108
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mTypeManagerMap:Ljava/util/Map;

    const-string v1, "Mitu-Watch"

    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_7
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 113
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mTypeManagerMap:Ljava/util/Map;

    const-string v1, "XPeng-airbed"

    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_8
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 118
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mTypeManagerMap:Ljava/util/Map;

    const-string v1, "XPeng-bluelight"

    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 125
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus$Stub;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    .line 126
    const-string v0, "IoTManagerService##"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->setModuleLogLevel(Ljava/lang/String;I)V

    .line 127
    const-string v0, "IoTManagerService##"

    const-string v1, "create IoTManagerService"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mContext:Landroid/content/Context;

    .line 129
    iput-object p0, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 130
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$1;-><init>(Lcom/xiaopeng/xuiservice/iot/IoTManagerService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 150
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 61
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mTypeManagerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/iot/IoTManagerService;)Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/IoTManagerService;

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/iot/IoTManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/IoTManagerService;

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private findIndexOfPipeListenerLocked(Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;)I
    .locals 4
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    .line 515
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 516
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 517
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->listener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 518
    monitor-exit v0

    return v1

    .line 516
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 521
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 522
    const/4 v0, -0x1

    return v0

    .line 521
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleCommandScanDevice(Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "scanType"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "pid"    # I

    .line 450
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x327d0229

    if-eq v0, v1, :cond_1

    const v1, 0x5ddf7658

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "scan_type_ble"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "scan_type_remote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 458
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->scanDevice(ZI)V

    .line 459
    goto :goto_2

    .line 452
    :pswitch_1
    if-eqz p2, :cond_3

    .line 453
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->registerDeviceScanListener(Lcom/xiaopeng/xuiservice/iot/manager/IDeviceScanListener;)V

    .line 455
    :cond_3
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->scanDevice(ZI)V

    .line 456
    nop

    .line 463
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleGlobalCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;

    .line 435
    const-string v0, "IoTManagerService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGlobalCommand,cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",args="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7e2c4a12

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const v1, -0x475d2c0a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "cmd_scan_device_start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v0, "cmd_scan_device_stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 442
    :pswitch_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-direct {p0, p2, v3, v0}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->handleCommandScanDevice(Ljava/lang/String;ZI)V

    goto :goto_2

    .line 439
    :pswitch_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-direct {p0, p2, v2, v0}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->handleCommandScanDevice(Ljava/lang/String;ZI)V

    .line 440
    nop

    .line 447
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleScannedDeviceCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "jsonDevice"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/String;

    .line 466
    const/4 v0, 0x0

    .line 468
    .local v0, "device":Lcom/xiaopeng/xuimanager/iot/BaseDevice;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/xuimanager/iot/utils/DeviceBuilder;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 472
    nop

    .line 473
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x76ce7827

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "cmd_add_device"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    goto :goto_2

    .line 475
    :cond_2
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mTypeManagerMap:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;

    .line 476
    .local v1, "manager":Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
    if-eqz v1, :cond_3

    .line 477
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;->addDevice(Lcom/xiaopeng/xuimanager/iot/BaseDevice;)V

    goto :goto_1

    .line 479
    :cond_3
    const-string v2, "IoTManagerService##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add device,no manager for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .end local v1    # "manager":Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
    :goto_1
    nop

    .line 485
    :goto_2
    return-void

    .line 469
    :catch_0
    move-exception v1

    .line 470
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "IoTManagerService##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleScannedDeviceCommand from json e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method private handleSendDeviceCommand([Ljava/lang/String;)V
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .line 488
    if-eqz p1, :cond_5

    array-length v0, p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_5

    .line 489
    const/4 v0, 0x0

    aget-object v2, p1, v0

    const/4 v3, 0x2

    if-nez v2, :cond_0

    .line 491
    aget-object v0, p1, v3

    .line 492
    .local v0, "globalCmd":Ljava/lang/String;
    aget-object v1, p1, v1

    .line 493
    .local v1, "args":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->handleGlobalCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .end local v0    # "globalCmd":Ljava/lang/String;
    .end local v1    # "args":Ljava/lang/String;
    goto :goto_1

    .line 495
    :cond_0
    aget-object v2, p1, v0

    .line 496
    .local v2, "deviceType":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x1b561b53

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "ScanDevice"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, v0

    :cond_2
    :goto_0
    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 501
    sget-object v4, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mTypeManagerMap:Ljava/util/Map;

    aget-object v0, p1, v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;

    .line 502
    .local v0, "manager":Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
    if-eqz v0, :cond_3

    .line 503
    aget-object v4, p1, v5

    aget-object v3, p1, v3

    aget-object v1, p1, v1

    invoke-virtual {v0, v4, v3, v1}, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;->sendCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 505
    :cond_3
    const-string v1, "IoTManagerService##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO_SEND_DEVICE_CMD,get device manager fail,type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "manager":Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
    .end local v2    # "deviceType":Ljava/lang/String;
    goto :goto_1

    .line 498
    .restart local v2    # "deviceType":Ljava/lang/String;
    :cond_4
    aget-object v0, p1, v5

    aget-object v3, p1, v3

    aget-object v1, p1, v1

    invoke-direct {p0, v0, v3, v1}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->handleScannedDeviceCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    nop

    .line 512
    .end local v2    # "deviceType":Ljava/lang/String;
    :cond_5
    :goto_1
    return-void
.end method

.method private ioPocketGetDevice([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "param"    # [Ljava/lang/String;
    .param p2, "results"    # [Ljava/lang/String;

    .line 526
    const-string v0, "IoTManagerService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDevice method-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    if-eqz p2, :cond_0

    .line 528
    const-string v0, "IoTManagerService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "results size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",0="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_0
    aget-object v0, p1, v2

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x42bfdff4

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "by_dev_type"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    .line 534
    :cond_3
    const/4 v0, 0x0

    .line 535
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/iot/BaseDevice;>;"
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mTypeManagerMap:Ljava/util/Map;

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;

    .line 536
    .local v1, "manager":Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
    if-eqz v1, :cond_4

    .line 537
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;->getDevice()Ljava/util/List;

    move-result-object v0

    .line 539
    :cond_4
    if-eqz v0, :cond_5

    .line 540
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/iot/utils/DeviceBuilder;->toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    .line 541
    .local v3, "array":Lorg/json/JSONArray;
    const-string v4, "IoTManagerService##"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get device str="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    if-eqz v3, :cond_5

    .line 543
    if-eqz p2, :cond_5

    .line 544
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v2

    .line 548
    .end local v0    # "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/iot/BaseDevice;>;"
    .end local v1    # "manager":Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
    .end local v3    # "array":Lorg/json/JSONArray;
    :cond_5
    nop

    .line 552
    :goto_1
    return-void
.end method

.method private ioPocketGetDeviceProperties([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .param p1, "param"    # [Ljava/lang/String;
    .param p2, "results"    # [Ljava/lang/String;

    .line 569
    const-string v0, "IoTManagerService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetDeviceProperties by-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",param-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    aget-object v0, p1, v2

    .line 573
    .local v0, "getMethod":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v4, -0x42bfdff4

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "by_dev_type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 603
    const-string v1, "IoTManagerService##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ioPocketGetDeviceProperties,unknown get method:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 576
    :cond_2
    array-length v1, p1

    if-le v1, v3, :cond_7

    .line 577
    aget-object v1, p1, v3

    .line 578
    .local v1, "deviceType":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v3, p1, v3

    .line 579
    .local v3, "deviceId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 580
    .local v4, "propMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mTypeManagerMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;

    .line 581
    .local v5, "manager":Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
    if-eqz v5, :cond_3

    .line 582
    invoke-virtual {v5, v3}, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;->getPropertyMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    goto :goto_2

    .line 584
    :cond_3
    const-string v6, "IoTManagerService##"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get null of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :goto_2
    if-eqz v4, :cond_6

    .line 587
    invoke-static {v4}, Lcom/xiaopeng/xuimanager/iot/utils/DeviceBuilder;->propToJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v6

    .line 588
    .local v6, "obj":Lorg/json/JSONObject;
    if-eqz v6, :cond_4

    .line 589
    if-eqz p2, :cond_5

    .line 590
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p2, v2

    .line 591
    const-string v7, "IoTManagerService##"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p2, v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 594
    :cond_4
    const-string v2, "IoTManagerService##"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "prop to json error,propMap="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .end local v6    # "obj":Lorg/json/JSONObject;
    :cond_5
    :goto_3
    goto :goto_4

    .line 597
    :cond_6
    const-string v2, "IoTManagerService##"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "propMap null,getMethod="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    .end local v1    # "deviceType":Ljava/lang/String;
    .end local v3    # "deviceId":Ljava/lang/String;
    .end local v4    # "propMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "manager":Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
    :goto_4
    nop

    .line 608
    :cond_7
    :goto_5
    return-void
.end method

.method private ioSetDeviceProperties([Ljava/lang/String;)V
    .locals 6
    .param p1, "param"    # [Ljava/lang/String;

    .line 555
    const-string v0, "IoTManagerService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceProperties,type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",devId-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    aget-object v0, p1, v2

    .line 558
    .local v0, "deviceType":Ljava/lang/String;
    aget-object v1, p1, v3

    .line 559
    .local v1, "deviceId":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-static {v2}, Lcom/xiaopeng/xuimanager/iot/utils/DeviceBuilder;->jsonStrToPropMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 560
    .local v2, "propMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mTypeManagerMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;

    .line 561
    .local v3, "manager":Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
    if-eqz v3, :cond_0

    .line 562
    invoke-virtual {v3, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;->setPropertyMap(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 564
    :cond_0
    const-string v4, "IoTManagerService##"

    const-string v5, "get manager null"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :goto_0
    return-void
.end method

.method private notifyDeviceAdd(Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;Ljava/lang/String;)V
    .locals 5
    .param p1, "record"    # Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    .param p2, "listString"    # Ljava/lang/String;

    .line 708
    if-eqz p1, :cond_0

    .line 709
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 710
    .local v0, "event":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 711
    const-string v1, "IoTManagerService##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDeviceAdd to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :try_start_0
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->listener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    const-string v2, "module_iot"

    const-string v3, "device_add"

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;->onPipeBusEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    goto :goto_0

    .line 715
    :catch_0
    move-exception v1

    .line 716
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "IoTManagerService##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyDeviceAdd e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    .end local v0    # "event":[Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "dumpAll":Z
    const/4 v1, 0x0

    .line 360
    .local v1, "bleOp":Z
    const/4 v2, 0x0

    .line 361
    .local v2, "bleScan":Z
    if-eqz p3, :cond_b

    .line 362
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .line 363
    .local v0, "opti":I
    .local v4, "dumpAll":Z
    :goto_0
    array-length v5, p3

    if-ge v0, v5, :cond_a

    .line 364
    aget-object v5, p3, v0

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x5d4

    const/4 v9, 0x1

    if-eq v7, v8, :cond_5

    const/16 v8, 0x5e0

    if-eq v7, v8, :cond_4

    const v8, 0x15ee54

    if-eq v7, v8, :cond_3

    const v8, 0x15f20e

    if-eq v7, v8, :cond_2

    const v8, 0xcc410d9

    if-eq v7, v8, :cond_1

    const v8, 0x534f63d2

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "-share"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x2

    goto :goto_2

    :cond_1
    const-string v7, "-module"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v9

    goto :goto_2

    :cond_2
    const-string v7, "-ble"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x5

    goto :goto_2

    :cond_3
    const-string v7, "-all"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x4

    goto :goto_2

    :cond_4
    const-string v7, "-m"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v3

    goto :goto_2

    :cond_5
    const-string v7, "-a"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x3

    goto :goto_2

    :cond_6
    :goto_1
    move v5, v6

    :goto_2
    packed-switch v5, :pswitch_data_0

    goto :goto_5

    .line 389
    :pswitch_0
    const/4 v1, 0x1

    .line 390
    add-int/2addr v0, v9

    .line 391
    array-length v5, p3

    if-ge v0, v5, :cond_8

    .line 392
    array-length v3, p3

    sub-int/2addr v3, v0

    new-array v3, v3, [Ljava/lang/String;

    .line 393
    .local v3, "argsToOp":[Ljava/lang/String;
    move v5, v0

    .local v5, "i":I
    :goto_3
    array-length v6, p3

    if-ge v5, v6, :cond_7

    .line 394
    sub-int v6, v5, v0

    aget-object v7, p3, v5

    aput-object v7, v3, v6

    .line 393
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 396
    .end local v5    # "i":I
    :cond_7
    invoke-static {}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->getInstance()Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    move-result-object v5

    invoke-virtual {v5, p1, p2, v3}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 397
    .end local v3    # "argsToOp":[Ljava/lang/String;
    goto :goto_4

    .line 398
    :cond_8
    invoke-static {}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->getInstance()Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v5, p1, p2, v3}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 401
    :goto_4
    return-void

    .line 386
    :pswitch_1
    const/4 v4, 0x1

    .line 387
    goto :goto_5

    .line 379
    :pswitch_2
    const-string v3, "please use: -m share xxx"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    return-void

    .line 367
    :pswitch_3
    array-length v3, p3

    sub-int/2addr v3, v9

    if-ge v0, v3, :cond_9

    .line 368
    add-int/2addr v0, v9

    .line 369
    aget-object v3, p3, v0

    .line 370
    .local v3, "module":Ljava/lang/String;
    add-int/2addr v0, v9

    .line 371
    invoke-static {p2, v3, p3, v0}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->dumpModule(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 372
    return-void

    .line 374
    .end local v3    # "module":Ljava/lang/String;
    :cond_9
    const-string v3, "lack module name..."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    return-void

    .line 407
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 410
    .end local v0    # "opti":I
    :cond_a
    move v0, v4

    .end local v4    # "dumpAll":Z
    .local v0, "dumpAll":Z
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 413
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pipe listeners"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    const-string v4, "subscribe devices:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;

    .line 416
    .local v5, "record":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    iget-object v6, v5, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->deviceIdList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    .line 417
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  listen pid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    iget-object v6, v5, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->deviceIdList:Ljava/util/List;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 419
    :try_start_1
    iget-object v7, v5, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->deviceIdList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 420
    .local v8, "id":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    device:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    .end local v8    # "id":Ljava/lang/String;
    goto :goto_7

    .line 422
    :cond_c
    monitor-exit v6

    goto :goto_8

    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    .line 424
    .end local v5    # "record":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    :cond_d
    :goto_8
    goto :goto_6

    .line 425
    :cond_e
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 426
    if-eqz v0, :cond_f

    .line 427
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mTypeManagerMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;

    .line 428
    .local v4, "manager":Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
    const-string v5, "*******************"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v4, p2, p3}, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 430
    .end local v4    # "manager":Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
    goto :goto_9

    .line 432
    :cond_f
    return-void

    .line 425
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ioControl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/String;

    .line 154
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 155
    .local v0, "pid":I
    const-string v1, "IoTManagerService##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ioControl,module="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",call pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "request_device"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "send_device_cmd"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "set_properties"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "add_monitor_device"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_4
    const-string v1, "remove_monitor_device"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_a

    .line 215
    :pswitch_0
    goto/16 :goto_a

    .line 211
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->ioSetDeviceProperties([Ljava/lang/String;)V

    .line 212
    goto/16 :goto_a

    .line 208
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->handleSendDeviceCommand([Ljava/lang/String;)V

    .line 209
    goto/16 :goto_a

    .line 178
    :pswitch_3
    if-eqz p3, :cond_9

    array-length v1, p3

    if-le v1, v3, :cond_9

    .line 179
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mTypeManagerMap:Ljava/util/Map;

    aget-object v4, p3, v2

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;

    .line 180
    .local v1, "manager":Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
    if-eqz v1, :cond_5

    .line 181
    const/4 v4, 0x0

    .line 182
    .local v4, "recordRef":I
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 183
    :try_start_0
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;

    .line 184
    .local v7, "record":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    iget v8, v7, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->pid:I

    if-ne v8, v0, :cond_1

    .line 185
    aget-object v8, p3, v3

    invoke-virtual {v7, v8}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->removeDevice(Ljava/lang/String;)V

    goto :goto_3

    .line 188
    :cond_1
    aget-object v8, p3, v3

    invoke-virtual {v7, v8}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->hasDevice(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 189
    add-int/lit8 v4, v4, 0x1

    .line 190
    goto :goto_4

    .line 193
    .end local v7    # "record":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    :cond_2
    :goto_3
    goto :goto_2

    .line 194
    :cond_3
    :goto_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    if-nez v4, :cond_4

    .line 196
    const-string v5, "IoTManagerService##"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disable monitor@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    aget-object v3, p3, v3

    invoke-virtual {v1, v3, v2}, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;->monitorDevice(Ljava/lang/String;Z)V

    goto :goto_5

    .line 199
    :cond_4
    const-string v3, "IoTManagerService##"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable monitor,still has monitors@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .end local v4    # "recordRef":I
    :goto_5
    goto :goto_6

    .line 194
    .restart local v4    # "recordRef":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 202
    .end local v4    # "recordRef":I
    :cond_5
    const-string v4, "IoTManagerService##"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO_REMOVE_MONITOR_DEVICE,get device manager fail,id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .end local v1    # "manager":Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
    :goto_6
    goto :goto_a

    .line 159
    :pswitch_4
    if-eqz p3, :cond_9

    array-length v1, p3

    if-le v1, v3, :cond_9

    .line 160
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mTypeManagerMap:Ljava/util/Map;

    aget-object v4, p3, v2

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;

    .line 161
    .restart local v1    # "manager":Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
    if-eqz v1, :cond_8

    .line 162
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 163
    :try_start_2
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;

    .line 164
    .local v6, "record":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    iget v7, v6, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->pid:I

    if-ne v7, v0, :cond_6

    .line 165
    aget-object v5, p3, v3

    invoke-virtual {v6, v5}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->addDevice(Ljava/lang/String;)V

    .line 166
    goto :goto_8

    .line 168
    .end local v6    # "record":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    :cond_6
    goto :goto_7

    .line 169
    :cond_7
    :goto_8
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 170
    aget-object v4, p3, v3

    invoke-virtual {v1, v4, v3}, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;->monitorDevice(Ljava/lang/String;Z)V

    goto :goto_9

    .line 169
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 172
    :cond_8
    const-string v4, "IoTManagerService##"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO_ADD_MONITOR_DEVICE,get device manager fail,id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .end local v1    # "manager":Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
    :goto_9
    nop

    .line 219
    :cond_9
    :goto_a
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x29819e0a -> :sswitch_4
        -0x781fbc7 -> :sswitch_3
        0x167df530 -> :sswitch_2
        0x6735b4e8 -> :sswitch_1
        0x7ffffa06 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I
    .locals 3
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "dataIn"    # Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;
    .param p4, "dataOut"    # Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    .line 241
    const-string v0, "IoTManagerService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControlWithParcelable not implemented yet,mod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/4 v0, -0x1

    return v0
.end method

.method public ioControlWithPocket(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/String;
    .param p4, "results"    # [Ljava/lang/String;

    .line 224
    const-string v0, "IoTManagerService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControlWithPocket,module="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7fe77e44

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const v1, 0x2c6fbf5f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "get_device"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_1
    const-string v0, "get_properties"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 231
    :pswitch_0
    invoke-direct {p0, p3, p4}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->ioPocketGetDeviceProperties([Ljava/lang/String;[Ljava/lang/String;)V

    .line 232
    goto :goto_2

    .line 228
    :pswitch_1
    invoke-direct {p0, p3, p4}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->ioPocketGetDevice([Ljava/lang/String;[Ljava/lang/String;)V

    .line 229
    nop

    .line 236
    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDeviceAdd(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;",
            ">;)V"
        }
    .end annotation

    .line 333
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/iot/BaseDevice;>;"
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/iot/utils/DeviceBuilder;->toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "listStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 335
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;

    .line 336
    .local v3, "record":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    invoke-direct {p0, v3, v0}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->notifyDeviceAdd(Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;Ljava/lang/String;)V

    .line 337
    .end local v3    # "record":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    goto :goto_0

    .line 338
    :cond_0
    monitor-exit v1

    .line 339
    return-void

    .line 338
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onDeviceEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "jsonString"    # Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    const-string v1, "IoTManagerService##"

    const-string v2, "onDeviceEvent, mPipeListeners is empty!"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;

    .line 312
    .local v2, "record":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    const-string v3, "IoTManagerService##"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeviceEvent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v2, p1, p2}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .end local v2    # "record":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    goto :goto_0

    .line 315
    :cond_1
    monitor-exit v0

    .line 316
    return-void

    .line 315
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDeviceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    const-string v1, "IoTManagerService##"

    const-string v2, "onDeviceEvent, mPipeListeners is empty!"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;

    .line 325
    .local v2, "record":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    const-string v3, "IoTManagerService##"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeviceEvent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v2, p1, p2, p3}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .end local v2    # "record":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    goto :goto_0

    .line 328
    :cond_1
    monitor-exit v0

    .line 329
    return-void

    .line 328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onScan(Ljava/util/List;I)V
    .locals 5
    .param p2, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;",
            ">;I)V"
        }
    .end annotation

    .line 343
    .local p1, "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/iot/BaseDevice;>;"
    const/4 v0, 0x0

    .line 344
    .local v0, "validRecord":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 345
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;

    .line 346
    .local v3, "record":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    iget v4, v3, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->pid:I

    if-ne v4, p2, :cond_0

    .line 347
    move-object v0, v3

    .line 348
    goto :goto_1

    .line 350
    .end local v3    # "record":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    :cond_0
    goto :goto_0

    .line 351
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/iot/utils/DeviceBuilder;->toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->notifyDeviceAdd(Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;Ljava/lang/String;)V

    .line 354
    return-void

    .line 351
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 260
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 261
    .local v1, "uid":I
    const-string v2, "IoTManagerService##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerListener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 264
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->findIndexOfPipeListenerLocked(Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;)I

    move-result v3

    .line 265
    .local v3, "index":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 266
    const-string v4, "IoTManagerService##"

    const-string v5, "PipeListener is already added, ignoring"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    monitor-exit v2

    return-void

    .line 269
    :cond_0
    new-instance v4, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;-><init>(Lcom/xiaopeng/xuiservice/iot/IoTManagerService;Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 271
    .local v4, "record":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    :try_start_1
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 275
    nop

    .line 276
    :try_start_2
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 277
    :try_start_3
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 279
    .end local v3    # "index":I
    .end local v4    # "record":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 280
    return-void

    .line 278
    .restart local v3    # "index":I
    .restart local v4    # "record":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6

    .line 272
    :catch_0
    move-exception v5

    .line 273
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "IoTManagerService##"

    const-string v7, "PipeListener is dead, ignoring it"

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    monitor-exit v2

    return-void

    .line 279
    .end local v3    # "index":I
    .end local v4    # "record":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    .end local v5    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3
.end method

.method public registerListenerEx(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;)V
    .locals 3
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    .line 249
    const-string v0, "IoTManagerService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not implement registerListenerEx,mod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public unRegisterListener(Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 285
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 286
    .local v1, "uid":I
    const-string v2, "IoTManagerService##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unRegisterListener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 288
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->findIndexOfPipeListenerLocked(Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;)I

    move-result v3

    .line 289
    .local v3, "index":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 290
    const/4 v4, 0x0

    .line 291
    .local v4, "record":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 292
    :try_start_1
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;

    move-object v4, v6

    .line 293
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    if-eqz v4, :cond_0

    .line 296
    :try_start_2
    iget-object v5, v4, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->listener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    invoke-interface {v5}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 299
    goto :goto_0

    .line 297
    :catch_0
    move-exception v5

    .end local v3    # "index":I
    .end local v4    # "record":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    goto :goto_0

    .line 293
    .restart local v3    # "index":I
    .restart local v4    # "record":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6

    .line 302
    .end local v3    # "index":I
    .end local v4    # "record":Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 303
    return-void

    .line 302
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method public unRegisterListenerEx(Ljava/lang/String;)V
    .locals 3
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 254
    const-string v0, "IoTManagerService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not implement unRegisterListenerEx,mod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method
