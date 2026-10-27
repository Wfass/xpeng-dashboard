.class public Lorg/eclipse/paho/android/service/MqttService;
.super Landroid/app/Service;
.source "MqttService.java"

# interfaces
.implements Lorg/eclipse/paho/android/service/MqttTraceHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/android/service/MqttService$BackgroundDataPreferenceReceiver;,
        Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "MqttService"


# instance fields
.field private XMART_ENABLE_NETWORK_MONITOR:Z

.field private volatile backgroundDataEnabled:Z

.field private backgroundDataPreferenceMonitor:Lorg/eclipse/paho/android/service/MqttService$BackgroundDataPreferenceReceiver;

.field private connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/paho/android/service/MqttConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mHanlerThread:Landroid/os/HandlerThread;

.field private mThreadHandler:Landroid/os/Handler;

.field messageStore:Lorg/eclipse/paho/android/service/MessageStore;

.field private mqttServiceBinder:Lorg/eclipse/paho/android/service/MqttServiceBinder;

.field private networkConnectionMonitor:Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;

.field private oldNetType:I

.field private traceCallbackId:Ljava/lang/String;

.field private traceEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 268
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->traceEnabled:Z

    const/4 v1, 0x0

    .line 243
    iput-boolean v1, p0, Lorg/eclipse/paho/android/service/MqttService;->XMART_ENABLE_NETWORK_MONITOR:Z

    .line 257
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->backgroundDataEnabled:Z

    .line 263
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->connections:Ljava/util/Map;

    const/4 v0, -0x1

    .line 868
    iput v0, p0, Lorg/eclipse/paho/android/service/MqttService;->oldNetType:I

    return-void
.end method

.method static synthetic access$200(Lorg/eclipse/paho/android/service/MqttService;)Landroid/os/HandlerThread;
    .locals 0

    .line 232
    iget-object p0, p0, Lorg/eclipse/paho/android/service/MqttService;->mHanlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$202(Lorg/eclipse/paho/android/service/MqttService;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    .line 232
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->mHanlerThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$300(Lorg/eclipse/paho/android/service/MqttService;)Landroid/os/Handler;
    .locals 0

    .line 232
    iget-object p0, p0, Lorg/eclipse/paho/android/service/MqttService;->mThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$302(Lorg/eclipse/paho/android/service/MqttService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 232
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->mThreadHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$400(Lorg/eclipse/paho/android/service/MqttService;)I
    .locals 0

    .line 232
    iget p0, p0, Lorg/eclipse/paho/android/service/MqttService;->oldNetType:I

    return p0
.end method

.method static synthetic access$402(Lorg/eclipse/paho/android/service/MqttService;I)I
    .locals 0

    .line 232
    iput p1, p0, Lorg/eclipse/paho/android/service/MqttService;->oldNetType:I

    return p1
.end method

.method static synthetic access$500(Lorg/eclipse/paho/android/service/MqttService;)V
    .locals 0

    .line 232
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttService;->notifyClientsOffline()V

    return-void
.end method

.method static synthetic access$600(Lorg/eclipse/paho/android/service/MqttService;)Z
    .locals 0

    .line 232
    iget-boolean p0, p0, Lorg/eclipse/paho/android/service/MqttService;->backgroundDataEnabled:Z

    return p0
.end method

.method static synthetic access$602(Lorg/eclipse/paho/android/service/MqttService;Z)Z
    .locals 0

    .line 232
    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/MqttService;->backgroundDataEnabled:Z

    return p1
.end method

.method private notifyClientsOffline()V
    .locals 2

    .line 954
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->connections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/android/service/MqttConnection;

    .line 955
    invoke-virtual {v1}, Lorg/eclipse/paho/android/service/MqttConnection;->offline()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private registerBroadcastReceivers()V
    .locals 4

    .line 835
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->networkConnectionMonitor:Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 836
    new-instance v0, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;-><init>(Lorg/eclipse/paho/android/service/MqttService;Lorg/eclipse/paho/android/service/MqttService$1;)V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->networkConnectionMonitor:Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;

    .line 837
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/paho/android/service/MqttService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 841
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    const-string v0, "connectivity"

    .line 843
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/android/service/MqttService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 844
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->backgroundDataEnabled:Z

    .line 845
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->backgroundDataPreferenceMonitor:Lorg/eclipse/paho/android/service/MqttService$BackgroundDataPreferenceReceiver;

    if-nez v0, :cond_1

    .line 846
    new-instance v0, Lorg/eclipse/paho/android/service/MqttService$BackgroundDataPreferenceReceiver;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/paho/android/service/MqttService$BackgroundDataPreferenceReceiver;-><init>(Lorg/eclipse/paho/android/service/MqttService;Lorg/eclipse/paho/android/service/MqttService$1;)V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->backgroundDataPreferenceMonitor:Lorg/eclipse/paho/android/service/MqttService$BackgroundDataPreferenceReceiver;

    .line 847
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private traceCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "severity",
            "tag",
            "message"
        }
    .end annotation

    .line 801
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->traceCallbackId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->traceEnabled:Z

    if-eqz v0, :cond_0

    .line 802
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.callbackAction"

    const-string v2, "trace"

    .line 803
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.traceSeverity"

    .line 804
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MqttService.traceTag"

    .line 805
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MqttService.errorMessage"

    .line 807
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->traceCallbackId:Ljava/lang/String;

    sget-object p2, Lorg/eclipse/paho/android/service/Status;->ERROR:Lorg/eclipse/paho/android/service/Status;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/paho/android/service/MqttService;->callbackToActivity(Ljava/lang/String;Lorg/eclipse/paho/android/service/Status;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private unregisterBroadcastReceivers()V
    .locals 2

    .line 856
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->networkConnectionMonitor:Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;

    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/android/service/MqttService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 858
    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->networkConnectionMonitor:Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;

    .line 861
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 862
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->backgroundDataPreferenceMonitor:Lorg/eclipse/paho/android/service/MqttService$BackgroundDataPreferenceReceiver;

    if-eqz v0, :cond_1

    .line 863
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/android/service/MqttService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public acknowledgeMessageArrival(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/android/service/Status;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clientHandle",
            "id"
        }
    .end annotation

    .line 670
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->messageStore:Lorg/eclipse/paho/android/service/MessageStore;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/paho/android/service/MessageStore;->discardArrived(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 671
    sget-object p1, Lorg/eclipse/paho/android/service/Status;->OK:Lorg/eclipse/paho/android/service/Status;

    return-object p1

    .line 673
    :cond_0
    sget-object p1, Lorg/eclipse/paho/android/service/Status;->ERROR:Lorg/eclipse/paho/android/service/Status;

    return-object p1
.end method

.method callbackToActivity(Ljava/lang/String;Lorg/eclipse/paho/android/service/Status;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clientHandle",
            "status",
            "dataBundle"
        }
    .end annotation

    .line 283
    new-instance v0, Landroid/content/Intent;

    const-string v1, "MqttService.callbackToActivity.v0"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "MqttService.clientHandle"

    .line 286
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p1, "MqttService.callbackStatus"

    .line 289
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p3, :cond_1

    .line 291
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 293
    :cond_1
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public checkPing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clientHandle",
            "activityToken"
        }
    .end annotation

    .line 1065
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->getConnection(Ljava/lang/String;)Lorg/eclipse/paho/android/service/MqttConnection;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 1070
    invoke-virtual {p1, p2}, Lorg/eclipse/paho/android/service/MqttConnection;->checkPing(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public close(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientHandle"
        }
    .end annotation

    const-string v0, "close: "

    const-string v1, "MqttService"

    .line 360
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->getConnection(Ljava/lang/String;)Lorg/eclipse/paho/android/service/MqttConnection;

    move-result-object p1

    .line 361
    invoke-virtual {p1}, Lorg/eclipse/paho/android/service/MqttConnection;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public connect(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "clientHandle",
            "connectOptions",
            "invocationContext",
            "activityToken"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 331
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->getConnection(Ljava/lang/String;)Lorg/eclipse/paho/android/service/MqttConnection;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 335
    invoke-virtual {p1, p2, p3, p4}, Lorg/eclipse/paho/android/service/MqttConnection;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteBufferedMessage(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clientHandle",
            "bufferIndex"
        }
    .end annotation

    const-string v0, "deleteBufferedMessage: "

    const-string v1, "MqttService"

    .line 1031
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->getConnection(Ljava/lang/String;)Lorg/eclipse/paho/android/service/MqttConnection;

    move-result-object p1

    .line 1032
    invoke-virtual {p1, p2}, Lorg/eclipse/paho/android/service/MqttConnection;->deleteBufferedMessage(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1036
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1034
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public disconnect(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "clientHandle",
            "quiesceTimeout",
            "invocationContext",
            "activityToken"
        }
    .end annotation

    const-string v0, "disconnect: "

    const-string v1, "MqttService"

    .line 406
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->getConnection(Ljava/lang/String;)Lorg/eclipse/paho/android/service/MqttConnection;

    move-result-object v2

    .line 407
    invoke-virtual {v2, p2, p3, p4, p5}, Lorg/eclipse/paho/android/service/MqttConnection;->disconnect(JLjava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->close(Ljava/lang/String;)V

    .line 409
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttService;->connections:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 413
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 411
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/paho/android/service/MqttService;->stopSelf()V

    return-void
.end method

.method public disconnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clientHandle",
            "invocationContext",
            "activityToken"
        }
    .end annotation

    const-string v0, "disconnect: "

    const-string v1, "MqttService"

    .line 379
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->getConnection(Ljava/lang/String;)Lorg/eclipse/paho/android/service/MqttConnection;

    move-result-object v2

    .line 380
    invoke-virtual {v2, p2, p3}, Lorg/eclipse/paho/android/service/MqttConnection;->disconnect(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->close(Ljava/lang/String;)V

    .line 382
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttService;->connections:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 386
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 384
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/paho/android/service/MqttService;->stopSelf()V

    return-void
.end method

.method public disconnectConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clientHandle",
            "invocationContext",
            "activityToken"
        }
    .end annotation

    const-string v0, "disconnectConnection: "

    const-string v1, "MqttService"

    .line 431
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->getConnection(Ljava/lang/String;)Lorg/eclipse/paho/android/service/MqttConnection;

    move-result-object v2

    .line 432
    invoke-virtual {v2, p2, p3}, Lorg/eclipse/paho/android/service/MqttConnection;->disconnectForcibly(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->close(Ljava/lang/String;)V

    .line 434
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttService;->connections:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 438
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 436
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/paho/android/service/MqttService;->stopSelf()V

    return-void
.end method

.method public getBufferedMessage(Ljava/lang/String;I)Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clientHandle",
            "bufferIndex"
        }
    .end annotation

    const-string v0, "getBufferedMessage: "

    const-string v1, "MqttService"

    .line 1018
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->getConnection(Ljava/lang/String;)Lorg/eclipse/paho/android/service/MqttConnection;

    move-result-object p1

    .line 1019
    invoke-virtual {p1, p2}, Lorg/eclipse/paho/android/service/MqttConnection;->getBufferedMessage(I)Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1023
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1021
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getBufferedMessageCount(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientHandle"
        }
    .end annotation

    const-string v0, "getBufferedMessageCount: "

    const-string v1, "MqttService"

    .line 1004
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->getConnection(Ljava/lang/String;)Lorg/eclipse/paho/android/service/MqttConnection;

    move-result-object p1

    .line 1005
    invoke-virtual {p1}, Lorg/eclipse/paho/android/service/MqttConnection;->getBufferedMessageCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1009
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public getClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "serverURI",
            "clientId",
            "contextId",
            "persistence"
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 310
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->connections:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    new-instance v6, Lorg/eclipse/paho/android/service/MqttConnection;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/paho/android/service/MqttConnection;-><init>(Lorg/eclipse/paho/android/service/MqttService;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Ljava/lang/String;)V

    .line 313
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->connections:Ljava/util/Map;

    invoke-interface {p1, p3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p3
.end method

.method public getConnection(Ljava/lang/String;)Lorg/eclipse/paho/android/service/MqttConnection;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientHandle"
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->connections:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 654
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/android/service/MqttConnection;

    if-eqz p1, :cond_1

    return-object p1

    .line 656
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid ClientHandle"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPendingDeliveryTokens(Ljava/lang/String;)[Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientHandle"
        }
    .end annotation

    const-string v0, "getPendingDeliveryTokens: "

    const-string v1, "MqttService"

    .line 636
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->getConnection(Ljava/lang/String;)Lorg/eclipse/paho/android/service/MqttConnection;

    move-result-object p1

    .line 637
    invoke-virtual {p1}, Lorg/eclipse/paho/android/service/MqttConnection;->getPendingDeliveryTokens()[Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public isConnected(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientHandle"
        }
    .end annotation

    .line 455
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->getConnection(Ljava/lang/String;)Lorg/eclipse/paho/android/service/MqttConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 457
    invoke-virtual {p1}, Lorg/eclipse/paho/android/service/MqttConnection;->isConnected()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 460
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isOnline()Z
    .locals 2

    const-string v0, "connectivity"

    .line 937
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/android/service/MqttService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 938
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 941
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 942
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->backgroundDataEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .line 775
    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->traceEnabled:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const-string v0, "MqttService.activityToken"

    .line 731
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 732
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->mqttServiceBinder:Lorg/eclipse/paho/android/service/MqttServiceBinder;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/android/service/MqttServiceBinder;->setActivityToken(Ljava/lang/String;)V

    .line 733
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->mqttServiceBinder:Lorg/eclipse/paho/android/service/MqttServiceBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 684
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 688
    new-instance v0, Lorg/eclipse/paho/android/service/MqttServiceBinder;

    invoke-direct {v0, p0}, Lorg/eclipse/paho/android/service/MqttServiceBinder;-><init>(Lorg/eclipse/paho/android/service/MqttService;)V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->mqttServiceBinder:Lorg/eclipse/paho/android/service/MqttServiceBinder;

    .line 692
    new-instance v0, Lorg/eclipse/paho/android/service/DatabaseMessageStore;

    invoke-direct {v0, p0, p0}, Lorg/eclipse/paho/android/service/DatabaseMessageStore;-><init>(Lorg/eclipse/paho/android/service/MqttService;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->messageStore:Lorg/eclipse/paho/android/service/MessageStore;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "MqttService"

    const-string v1, "onDestroy"

    .line 701
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->connections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/android/service/MqttConnection;

    .line 704
    invoke-virtual {v1, v2, v2}, Lorg/eclipse/paho/android/service/MqttConnection;->disconnect(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 708
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->mqttServiceBinder:Lorg/eclipse/paho/android/service/MqttServiceBinder;

    if-eqz v0, :cond_1

    .line 709
    iput-object v2, p0, Lorg/eclipse/paho/android/service/MqttService;->mqttServiceBinder:Lorg/eclipse/paho/android/service/MqttServiceBinder;

    .line 712
    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->XMART_ENABLE_NETWORK_MONITOR:Z

    if-eqz v0, :cond_2

    .line 713
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttService;->unregisterBroadcastReceivers()V

    .line 716
    :cond_2
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->messageStore:Lorg/eclipse/paho/android/service/MessageStore;

    if-eqz v0, :cond_3

    .line 717
    invoke-interface {v0}, Lorg/eclipse/paho/android/service/MessageStore;->close()V

    .line 719
    :cond_3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "intent",
            "flags",
            "startId"
        }
    .end annotation

    .line 743
    iget-boolean p1, p0, Lorg/eclipse/paho/android/service/MqttService;->XMART_ENABLE_NETWORK_MONITOR:Z

    if-eqz p1, :cond_0

    .line 744
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttService;->registerBroadcastReceivers()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public publish(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "clientHandle",
            "topic",
            "message",
            "invocationContext",
            "activityToken"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const-string v0, "publish: "

    const-string v1, "MqttService"

    .line 513
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->getConnection(Ljava/lang/String;)Lorg/eclipse/paho/android/service/MqttConnection;

    move-result-object p1

    .line 514
    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/eclipse/paho/android/service/MqttConnection;->publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 518
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 516
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public publish(Ljava/lang/String;Ljava/lang/String;[BIZLjava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "clientHandle",
            "topic",
            "payload",
            "qos",
            "retained",
            "invocationContext",
            "activityToken"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const-string v1, "publish: "

    const-string v2, "MqttService"

    .line 485
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->getConnection(Ljava/lang/String;)Lorg/eclipse/paho/android/service/MqttConnection;

    move-result-object v3

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 486
    invoke-virtual/range {v3 .. v9}, Lorg/eclipse/paho/android/service/MqttConnection;->publish(Ljava/lang/String;[BIZLjava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method reconnect()V
    .locals 4

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reconnect to server, client size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttService;->connections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService"

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->connections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/android/service/MqttConnection;

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    invoke-virtual {v1}, Lorg/eclipse/paho/android/service/MqttConnection;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/eclipse/paho/android/service/MqttConnection;->getServerURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Reconnect Client:"

    .line 345
    invoke-virtual {p0, v3, v2}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lorg/eclipse/paho/android/service/MqttService;->isOnline()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    invoke-virtual {v1}, Lorg/eclipse/paho/android/service/MqttConnection;->reconnect()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeConnection(Lorg/eclipse/paho/android/service/MqttConnection;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connection"
        }
    .end annotation

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove connection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService"

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "connection is null, return!"

    .line 1043
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1046
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->connections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1047
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connection\'s key is \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\', disconnect, close and remove it"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1049
    invoke-virtual {p1, v0, v0}, Lorg/eclipse/paho/android/service/MqttConnection;->disconnect(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p1}, Lorg/eclipse/paho/android/service/MqttConnection;->close()V

    .line 1051
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->connections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public setBufferOpts(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clientHandle",
            "bufferOpts"
        }
    .end annotation

    const-string v0, "setBufferOpts: "

    const-string v1, "MqttService"

    .line 992
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->getConnection(Ljava/lang/String;)Lorg/eclipse/paho/android/service/MqttConnection;

    move-result-object p1

    .line 993
    invoke-virtual {p1, p2}, Lorg/eclipse/paho/android/service/MqttConnection;->setBufferOpts(Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 997
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 995
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setTraceCallbackId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "traceCallbackId"
        }
    .end annotation

    .line 757
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->traceCallbackId:Ljava/lang/String;

    return-void
.end method

.method public setTraceEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "traceEnabled"
        }
    .end annotation

    .line 766
    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/MqttService;->traceEnabled:Z

    return-void
.end method

.method public subscribe(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "clientHandle",
            "topic",
            "qos",
            "invocationContext",
            "activityToken"
        }
    .end annotation

    const-string v0, "subscribe: "

    const-string v1, "MqttService"

    .line 535
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->getConnection(Ljava/lang/String;)Lorg/eclipse/paho/android/service/MqttConnection;

    move-result-object p1

    .line 536
    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/eclipse/paho/android/service/MqttConnection;->subscribe(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 540
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 538
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public subscribe(Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "clientHandle",
            "topic",
            "qos",
            "invocationContext",
            "activityToken"
        }
    .end annotation

    const-string v0, "subscribe: "

    const-string v1, "MqttService"

    .line 556
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->getConnection(Ljava/lang/String;)Lorg/eclipse/paho/android/service/MqttConnection;

    move-result-object p1

    .line 557
    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/eclipse/paho/android/service/MqttConnection;->subscribe([Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 561
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 559
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public subscribe(Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;[Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "clientHandle",
            "topicFilters",
            "qos",
            "invocationContext",
            "activityToken",
            "messageListeners"
        }
    .end annotation

    const-string v0, "subscribe: "

    const-string v1, "MqttService"

    .line 577
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->getConnection(Ljava/lang/String;)Lorg/eclipse/paho/android/service/MqttConnection;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 578
    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/paho/android/service/MqttConnection;->subscribe([Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;[Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 582
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 580
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public traceDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    const-string v0, "debug"

    .line 786
    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/paho/android/service/MqttService;->traceCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public traceError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    const-string v0, "error"

    .line 797
    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/paho/android/service/MqttService;->traceCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "e"
        }
    .end annotation

    .line 821
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->traceCallbackId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 822
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.callbackAction"

    const-string v2, "trace"

    .line 823
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.traceSeverity"

    const-string v2, "exception"

    .line 824
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.errorMessage"

    .line 825
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "MqttService.exception"

    .line 826
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p2, "MqttService.traceTag"

    .line 827
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->traceCallbackId:Ljava/lang/String;

    sget-object p2, Lorg/eclipse/paho/android/service/Status;->ERROR:Lorg/eclipse/paho/android/service/Status;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/paho/android/service/MqttService;->callbackToActivity(Ljava/lang/String;Lorg/eclipse/paho/android/service/Status;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0,
            0x0
        }
        names = {
            "clientHandle",
            "topic",
            "invocationContext",
            "activityToken"
        }
    .end annotation

    const-string v0, "unsubscribe: "

    const-string v1, "MqttService"

    .line 597
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->getConnection(Ljava/lang/String;)Lorg/eclipse/paho/android/service/MqttConnection;

    move-result-object p1

    .line 598
    invoke-virtual {p1, p2, p3, p4}, Lorg/eclipse/paho/android/service/MqttConnection;->unsubscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 602
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 600
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0,
            0x0
        }
        names = {
            "clientHandle",
            "topic",
            "invocationContext",
            "activityToken"
        }
    .end annotation

    const-string v0, "unsubscribe: "

    const-string v1, "MqttService"

    .line 618
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->getConnection(Ljava/lang/String;)Lorg/eclipse/paho/android/service/MqttConnection;

    move-result-object p1

    .line 619
    invoke-virtual {p1, p2, p3, p4}, Lorg/eclipse/paho/android/service/MqttConnection;->unsubscribe([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 623
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 621
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
