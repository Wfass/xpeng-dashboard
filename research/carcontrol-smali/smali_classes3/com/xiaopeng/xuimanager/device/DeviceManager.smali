.class public Lcom/xiaopeng/xuimanager/device/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/device/DeviceManager$Holder;,
        Lcom/xiaopeng/xuimanager/device/DeviceManager$DeviceListener;,
        Lcom/xiaopeng/xuimanager/device/DeviceManager$DeviceManagerListenerImpl;,
        Lcom/xiaopeng/xuimanager/device/DeviceManager$StateEvent;,
        Lcom/xiaopeng/xuimanager/device/DeviceManager$AngleEvent;
    }
.end annotation


# static fields
.field public static final KEY_SCREEN_VIBRATE_PERCENTAGE:Ljava/lang/String; = "screen_vibrate_percentage"

.field private static final MODULE_NAME:Ljava/lang/String; = "device"

.field private static final MSG_ANGLE_EVENT_NOTIFY:I = 0x0

.field private static final MSG_STATE_EVENT_NOTIFY:I = 0x1

.field private static final RET_REMOTE_EXCEPTION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DeviceManager"

.field private static final busServiceName:Ljava/lang/String; = "xuiservice"

.field private static mServiceName:Ljava/lang/String;

.field private static sInstance:Lcom/xiaopeng/xuimanager/device/DeviceManager;


# instance fields
.field private final busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

.field private mDeviceManagerListenerImpl:Lcom/xiaopeng/xuimanager/device/DeviceManager$DeviceManagerListenerImpl;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuimanager/device/DeviceManager$DeviceListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mService:Lcom/xiaopeng/xuimanager/device/IDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mService:Lcom/xiaopeng/xuimanager/device/IDeviceManager;

    .line 31
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mDeviceManagerListenerImpl:Lcom/xiaopeng/xuimanager/device/DeviceManager$DeviceManagerListenerImpl;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mListeners:Ljava/util/HashMap;

    .line 39
    new-instance v0, Lcom/xiaopeng/xuimanager/device/DeviceManager$1;

    invoke-static {}, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->getInstance()Lcom/xiaopeng/xuimanager/utils/WorkHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuimanager/device/DeviceManager$1;-><init>(Lcom/xiaopeng/xuimanager/device/DeviceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mHandler:Landroid/os/Handler;

    .line 367
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "xuiservice"

    const-string v2, "device"

    .line 366
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClientManager;->getBusAgent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v1, "devicer"

    .line 368
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->setTagSuffix(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/device/DeviceManager$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/device/DeviceManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuimanager/device/DeviceManager;IIZLjava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/device/DeviceManager;->notifyAngleEvent(IIZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuimanager/device/DeviceManager;IIZLjava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/device/DeviceManager;->notifyStateEvent(IIZLjava/lang/String;)V

    return-void
.end method

.method public static get()Lcom/xiaopeng/xuimanager/device/DeviceManager;
    .locals 1

    .line 372
    invoke-static {}, Lcom/xiaopeng/xuimanager/device/DeviceManager$Holder;->access$300()Lcom/xiaopeng/xuimanager/device/DeviceManager;

    move-result-object v0

    return-object v0
.end method

.method private notifyAngleEvent(IIZLjava/lang/String;)V
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAngleEvent- screenId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " angle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isForceOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/device/DeviceManager$DeviceListener;

    .line 65
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/device/DeviceManager$DeviceListener;->onDeviceAngleChange(IIZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    const-string p1, "notifyAngleEvent no listener!"

    .line 61
    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private notifyStateEvent(IIZLjava/lang/String;)V
    .locals 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyStateEvent- screenId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isForceOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 76
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/device/DeviceManager$DeviceListener;

    .line 77
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/device/DeviceManager$DeviceListener;->onDeviceStateChange(IIZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    const-string p1, "notifyStateEvent no listener!"

    .line 73
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public forceSetXpDeviceOpenEx(I)I
    .locals 4

    const-string v0, "DeviceManager"

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mService:Lcom/xiaopeng/xuimanager/device/IDeviceManager;

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/device/IDeviceManager;->forceSetXpDeviceOpenEx(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceSetXpDeviceOpenEx e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 137
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceSetXpDeviceOpenEx screenId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " result="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getDeviceAngle(I)I
    .locals 4

    const-string v0, "DeviceManager"

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mService:Lcom/xiaopeng/xuimanager/device/IDeviceManager;

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/device/IDeviceManager;->getDeviceAngle(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceAngle e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 173
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceAngle screenId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " result="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getDeviceState(I)I
    .locals 4

    const-string v0, "DeviceManager"

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mService:Lcom/xiaopeng/xuimanager/device/IDeviceManager;

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/device/IDeviceManager;->getDeviceState(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceState e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 155
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceState screenId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " result="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public registerDeviceManagerListener(ILcom/xiaopeng/xuimanager/device/DeviceManager$DeviceListener;)V
    .locals 4

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerDeviceManagerListener- screenId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " listen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p1, "registerDeviceManagerListener null!"

    .line 281
    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mDeviceManagerListenerImpl:Lcom/xiaopeng/xuimanager/device/DeviceManager$DeviceManagerListenerImpl;

    if-nez v0, :cond_1

    .line 286
    new-instance v0, Lcom/xiaopeng/xuimanager/device/DeviceManager$DeviceManagerListenerImpl;

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v2}, Lcom/xiaopeng/xuimanager/device/DeviceManager$DeviceManagerListenerImpl;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mDeviceManagerListenerImpl:Lcom/xiaopeng/xuimanager/device/DeviceManager$DeviceManagerListenerImpl;

    .line 288
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mService:Lcom/xiaopeng/xuimanager/device/IDeviceManager;

    invoke-interface {v2, v0}, Lcom/xiaopeng/xuimanager/device/IDeviceManager;->setDeviceManagerListener(Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerDeviceManagerListener e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_2

    .line 295
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 297
    :cond_2
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDeviceAngle(IIZLjava/lang/String;)I
    .locals 4

    const-string v0, "DeviceManager"

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mService:Lcom/xiaopeng/xuimanager/device/IDeviceManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/device/IDeviceManager;->setDeviceAngle(IIZLjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceAngle e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 119
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceAngle screenId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " angle="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " isForceOpen="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " source="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " result="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public setDeviceDisable(IILjava/lang/String;)I
    .locals 4

    const-string v0, "DeviceManager"

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mService:Lcom/xiaopeng/xuimanager/device/IDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/device/IDeviceManager;->setDeviceDisable(IILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceDisable e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 193
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceDisable screenId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " disable="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " source="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " result="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public setDeviceState(IIZLjava/lang/String;)I
    .locals 4

    const-string v0, "DeviceManager"

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mService:Lcom/xiaopeng/xuimanager/device/IDeviceManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/device/IDeviceManager;->setDeviceState(IIZLjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceState e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 98
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceState screenId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " state="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " isForceOpen="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " source="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " result="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public setVibratePercentage(II)V
    .locals 4

    .line 206
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 207
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput p2, v2, p1

    .line 208
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIntArray([I)V

    .line 209
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string p2, "device"

    const-string v2, "device.setVibratePercentage"

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    return-void
.end method

.method public startTouchVibrate(II)V
    .locals 4

    .line 198
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 199
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput p2, v2, p1

    .line 200
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIntArray([I)V

    .line 201
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string p2, "device"

    const-string v2, "device.queryVibrate"

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    return-void
.end method

.method public unregisterDeviceListener(ILcom/xiaopeng/xuimanager/device/DeviceManager$DeviceListener;)V
    .locals 4

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterDeviceListener-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mService:Lcom/xiaopeng/xuimanager/device/IDeviceManager;

    .line 309
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-eqz v2, :cond_3

    .line 310
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 314
    :cond_0
    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 315
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 316
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 320
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mDeviceManagerListenerImpl:Lcom/xiaopeng/xuimanager/device/DeviceManager$DeviceManagerListenerImpl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/device/IDeviceManager;->removeDeviceManagerListener(Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 322
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unregisterDeviceListener e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 324
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager;->mDeviceManagerListenerImpl:Lcom/xiaopeng/xuimanager/device/DeviceManager$DeviceManagerListenerImpl;

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p1, "unregisterDeviceListener no listener!"

    .line 311
    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
