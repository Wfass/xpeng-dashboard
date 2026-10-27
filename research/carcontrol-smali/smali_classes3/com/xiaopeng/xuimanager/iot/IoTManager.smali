.class public Lcom/xiaopeng/xuimanager/iot/IoTManager;
.super Ljava/lang/Object;
.source "IoTManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/iot/IoTManager$BusListener;,
        Lcom/xiaopeng/xuimanager/iot/IoTManager$IoTManagerHolder;
    }
.end annotation


# static fields
.field private static final MAX_RETRY_CNT:I = 0x96

.field private static final MSG_CONNECT_IOTSVC:I = 0x1

.field private static final SERVICE_NAME:Ljava/lang/String; = "IoTManagerService"

.field private static final TAG:Ljava/lang/String;

.field private static volatile mIoTManager:Lcom/xiaopeng/xuimanager/iot/IoTManager;


# instance fields
.field private connectRetryCount:I

.field private mAppListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/iot/IDeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBusLisener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

.field private mSubscriberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/xiaopeng/xuimanager/iot/IoTManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->setModuleLogLevel(Ljava/lang/String;I)V

    const/4 v2, 0x1

    const-string v3, "IoTManager created"

    .line 63
    invoke-static {v2, v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    iput v1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->connectRetryCount:I

    .line 65
    new-instance v0, Lcom/xiaopeng/xuimanager/iot/IoTManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuimanager/iot/IoTManager$1;-><init>(Lcom/xiaopeng/xuimanager/iot/IoTManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mUiHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Lcom/xiaopeng/xuimanager/iot/IoTManager$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/iot/IoTManager$2;-><init>(Lcom/xiaopeng/xuimanager/iot/IoTManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 100
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->selfGetService()Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    return-void
.end method

.method private constructor <init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object p1, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->setModuleLogLevel(Ljava/lang/String;I)V

    const/4 p2, 0x1

    const-string p3, "IoTManager created"

    .line 58
    invoke-static {p2, p1, p3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/iot/IoTManager$1;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/IoTManager;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuimanager/iot/IoTManager;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->selfGetService()Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuimanager/iot/IoTManager;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    return-object p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/xuimanager/iot/IoTManager;Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/iot/IoTManager;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->connectRetryCount:I

    return p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/xuimanager/iot/IoTManager;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->connectRetryCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/xiaopeng/xuimanager/iot/IoTManager;)I
    .locals 2

    .line 37
    iget v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->connectRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->connectRetryCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuimanager/iot/IoTManager;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuimanager/iot/IoTManager;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->selfSubscribeNotifications()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuimanager/iot/IoTManager;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->processEvent(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/iot/IoTManager;
    .locals 1

    .line 234
    invoke-static {}, Lcom/xiaopeng/xuimanager/iot/IoTManager$IoTManagerHolder;->access$800()Lcom/xiaopeng/xuimanager/iot/IoTManager;

    move-result-object v0

    return-object v0
.end method

.method private processEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mAppListenerList:Ljava/util/List;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 132
    sget-object p1, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    const-string p2, "no AppListenerList"

    invoke-static {v1, p1, p2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 135
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    sget-object p1, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    const-string p2, "no AppListener register"

    invoke-static {v1, p1, p2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 139
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "operation_result"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v2, "property_update_with_json"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0

    :sswitch_2
    const-string v2, "device_add"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_0

    :sswitch_3
    const-string v2, "property_update"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v5

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    if-eqz p2, :cond_7

    .line 174
    array-length p1, p2

    if-le p1, v3, :cond_7

    .line 175
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mAppListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/iot/IDeviceListener;

    .line 176
    aget-object v1, p2, v5

    aget-object v2, p2, v4

    aget-object v6, p2, v3

    invoke-interface {v0, v1, v2, v6}, Lcom/xiaopeng/xuimanager/iot/IDeviceListener;->onOperationResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    if-eqz p2, :cond_7

    .line 164
    array-length p1, p2

    if-le p1, v4, :cond_7

    .line 165
    aget-object p1, p2, v4

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/iot/utils/DeviceBuilder;->jsonStrToPropMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mAppListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/iot/IDeviceListener;

    .line 167
    aget-object v2, p2, v5

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xuimanager/iot/IDeviceListener;->onPropertiesUpdated(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 141
    :pswitch_2
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/iot/utils/DeviceBuilder;->fromJsonArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_6

    .line 143
    sget-object p1, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    const-string p2, "EVENT_DEVICE_ADD but get null"

    invoke-static {v1, p1, p2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 146
    :cond_6
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mAppListenerList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/iot/IDeviceListener;

    .line 147
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/iot/IDeviceListener;->onDeviceAdd(Ljava/util/List;)V

    goto :goto_3

    :pswitch_3
    if-eqz p2, :cond_7

    .line 153
    array-length p1, p2

    if-le p1, v3, :cond_7

    .line 154
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 155
    aget-object v0, p2, v4

    aget-object v1, p2, v3

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mAppListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/iot/IDeviceListener;

    .line 157
    aget-object v2, p2, v5

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xuimanager/iot/IDeviceListener;->onPropertiesUpdated(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    :cond_7
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x13e5f18d -> :sswitch_3
        0x2e94ab38 -> :sswitch_2
        0x55c055f5 -> :sswitch_1
        0x5b525df5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private selfGetService()Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;
    .locals 6

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    if-nez v0, :cond_0

    const-string v0, "IoTManagerService"

    .line 105
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 110
    sget-object v3, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "linkToDeath exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mAppListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mBusLisener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    if-eqz v0, :cond_0

    .line 116
    :try_start_1
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    invoke-interface {v2, v0}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->registerListener(Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 118
    sget-object v2, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auto registerListener exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    return-object v0
.end method

.method private selfSubscribeNotifications()V
    .locals 8

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mSubscriberList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 211
    :cond_1
    sget-object v0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selfSubscribeNotifications,suber size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mSubscriberList:Ljava/util/List;

    .line 212
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 211
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 216
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mSubscriberList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const/4 v4, 0x0

    const-string v5, "device_type"

    .line 217
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v4

    const-string v4, "device_id"

    .line 218
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 220
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    const-string v4, "module_iot"

    const-string v5, "add_monitor_device"

    invoke-interface {v3, v4, v5, v0}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->ioControl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v4, 0x4

    .line 223
    sget-object v5, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subscribeNotifications fail,e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getDevice(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;",
            ">;"
        }
    .end annotation

    .line 303
    sget-object v0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDevice,type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->selfGetService()Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    .line 305
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v2

    new-array p1, v2, [Ljava/lang/String;

    const-string p2, "module_iot"

    const-string v5, "get_device"

    .line 311
    invoke-interface {v1, p2, v5, v3, p1}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->ioControlWithPocket(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    .line 314
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDevice0="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    aget-object v1, p1, v4

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ",size="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v0, p2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 316
    aget-object p2, p1, v4

    if-eqz p2, :cond_0

    .line 317
    aget-object p1, p1, v4

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/iot/utils/DeviceBuilder;->fromJsonArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 p2, 0x4

    .line 321
    sget-object v0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDevice fail,e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDeviceProperties(Lcom/xiaopeng/xuimanager/iot/BaseDevice;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 414
    sget-object v0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceProperties,type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",device id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 415
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 414
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->selfGetService()Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    .line 417
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "by_dev_type"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 421
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x2

    .line 422
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    new-array p1, v2, [Ljava/lang/String;

    .line 424
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    const-string v5, "module_iot"

    const-string v6, "get_properties"

    invoke-interface {v3, v5, v6, v1, p1}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->ioControlWithPocket(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceProperties0="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, p1, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 429
    aget-object v0, p1, v4

    if-eqz v0, :cond_0

    .line 430
    aget-object p1, p1, v4

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/iot/utils/DeviceBuilder;->jsonStrToPropMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x4

    .line 434
    sget-object v1, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceProperties fail,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 251
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onXUIDisconnected()V
    .locals 3

    .line 242
    sget-object v0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "onXUIDisconnected"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/iot/IDeviceListener;)V
    .locals 5

    monitor-enter p0

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mAppListenerList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mAppListenerList:Ljava/util/List;

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mAppListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mBusLisener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    if-nez v0, :cond_1

    .line 365
    new-instance v0, Lcom/xiaopeng/xuimanager/iot/IoTManager$BusListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuimanager/iot/IoTManager$BusListener;-><init>(Lcom/xiaopeng/xuimanager/iot/IoTManager;Lcom/xiaopeng/xuimanager/iot/IoTManager$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mBusLisener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    .line 367
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->selfGetService()Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 370
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mBusLisener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->registerListener(Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x4

    .line 372
    :try_start_2
    sget-object v2, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerListener exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 376
    iput v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->connectRetryCount:I

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 381
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mAppListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mAppListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 384
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public requestDeviceList(Ljava/lang/String;)V
    .locals 4

    .line 335
    sget-object v0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestDeviceList,filter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->selfGetService()Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    if-eqz v0, :cond_0

    :try_start_0
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "module_iot"

    const-string v2, "request_device"

    .line 341
    invoke-interface {v0, p1, v2, v1}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->ioControl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x4

    .line 344
    sget-object v1, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ioControl fail,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 6

    monitor-enter p0

    .line 263
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    const-string v1, "reset"

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mAppListenerList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mAppListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 271
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->selfGetService()Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 275
    :try_start_1
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mBusLisener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    invoke-interface {v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->unRegisterListener(Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;)V

    .line 276
    iput-object v1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mBusLisener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x4

    .line 278
    :try_start_2
    sget-object v3, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reset exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mAppListenerList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 284
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 285
    iput-object v1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mAppListenerList:Ljava/util/List;

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mSubscriberList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mSubscriberList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 292
    iput-object v1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mSubscriberList:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendCommand(Lcom/xiaopeng/xuimanager/iot/BaseDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, ",params="

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 553
    sget-object v2, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCommand,type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 554
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 553
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 557
    :cond_0
    sget-object v2, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCommand,cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 559
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->selfGetService()Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    .line 560
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 564
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v4, "ScanDevice"

    .line 565
    aget-object v3, v2, v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 567
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/iot/utils/DeviceBuilder;->toJson(Lcom/xiaopeng/xuimanager/iot/BaseDevice;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    goto :goto_1

    .line 569
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    aput-object p1, v2, v3

    aput-object p1, v2, v1

    :goto_1
    const/4 p1, 0x2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    aput-object p3, v2, p1

    .line 577
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    const-string p2, "module_iot"

    const-string p3, "send_device_cmd"

    invoke-interface {p1, p2, p3, v2}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->ioControl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 580
    sget-object p2, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCommand fail,e="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public setDeviceProperties(Lcom/xiaopeng/xuimanager/iot/BaseDevice;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 446
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 450
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceProperties,type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 451
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",device id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 450
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->selfGetService()Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    .line 453
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 456
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 457
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const/4 p1, 0x2

    .line 458
    invoke-static {p2}, Lcom/xiaopeng/xuimanager/iot/utils/DeviceBuilder;->propToJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    .line 459
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    const-string p2, "module_iot"

    const-string v1, "set_properties"

    invoke-interface {p1, p2, v1, v0}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->ioControl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x4

    .line 462
    sget-object v0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceProperties fail,e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    .line 447
    :cond_2
    :goto_1
    sget-object p1, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    const-string p2, "setDeviceProperties,invalid propMap"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized subscribeNotifications(Lcom/xiaopeng/xuimanager/iot/BaseDevice;)V
    .locals 8

    monitor-enter p0

    .line 473
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribeNotifications,type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 474
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 473
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 476
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 477
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 478
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v4, "device_type"

    .line 479
    aget-object v5, v0, v3

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "device_id"

    .line 480
    aget-object v5, v0, v2

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object v4, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mSubscriberList:Ljava/util/List;

    if-nez v4, :cond_0

    .line 482
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mSubscriberList:Ljava/util/List;

    .line 484
    :cond_0
    iget-object v4, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mSubscriberList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 485
    iget-object v4, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mSubscriberList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 486
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "device_id"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x3

    .line 488
    sget-object v1, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore repeat subscribe device,class="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 489
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceClass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 488
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    monitor-exit p0

    return-void

    .line 494
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mSubscriberList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->selfGetService()Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    .line 496
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    :try_start_2
    const-string v1, "module_iot"

    const-string v2, "add_monitor_device"

    .line 498
    invoke-interface {p1, v1, v2, v0}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->ioControl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x4

    .line 501
    :try_start_3
    sget-object v1, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscribeNotifications fail,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_3
    iput v3, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->connectRetryCount:I

    .line 506
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 508
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unRegisterListener(Lcom/xiaopeng/xuimanager/iot/IDeviceListener;)V
    .locals 4

    monitor-enter p0

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mAppListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 392
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 393
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mAppListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 395
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->selfGetService()Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    .line 396
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 398
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mBusLisener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->unRegisterListener(Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;)V

    const/4 p1, 0x0

    .line 399
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mBusLisener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x4

    .line 401
    :try_start_2
    sget-object v1, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterListener exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 406
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unSubscribeNotifications(Lcom/xiaopeng/xuimanager/iot/BaseDevice;)V
    .locals 5

    monitor-enter p0

    .line 515
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unSubscribeNotifications,type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 516
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 515
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 518
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 519
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 520
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mSubscriberList:Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 521
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mSubscriberList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 522
    aget-object v3, v1, v2

    const-string v4, "device_id"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 523
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mSubscriberList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 534
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->selfGetService()Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    .line 535
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    :try_start_1
    const-string v0, "module_iot"

    const-string v2, "remove_monitor_device"

    .line 537
    invoke-interface {p1, v0, v2, v1}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->ioControl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x4

    .line 540
    :try_start_2
    sget-object v1, Lcom/xiaopeng/xuimanager/iot/IoTManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unSubscribeNotifications fail,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 543
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    const/4 v1, 0x3

    .line 530
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unSubscribeNotifications invalid,device class="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 531
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceClass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 530
    invoke-static {v1, v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 532
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
