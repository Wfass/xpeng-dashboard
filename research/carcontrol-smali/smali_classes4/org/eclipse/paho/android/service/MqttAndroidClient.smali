.class public Lorg/eclipse/paho/android/service/MqttAndroidClient;
.super Landroid/content/BroadcastReceiver;
.source "MqttAndroidClient.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection;,
        Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;
    }
.end annotation


# static fields
.field private static final BIND_SERVICE_FLAG:I = 0x0

.field private static final SERVICE_NAME:Ljava/lang/String; = "org.eclipse.paho.android.service.MqttService"

.field private static final TAG:Ljava/lang/String; = "MqttAndroidClient"

.field private static final pool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private volatile bindedService:Z

.field private callback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

.field private clientHandle:Ljava/lang/String;

.field private final clientId:Ljava/lang/String;

.field private connectOptions:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

.field private connectToken:Lorg/eclipse/paho/client/mqttv3/IMqttToken;

.field private final messageAck:Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

.field private mqttService:Lorg/eclipse/paho/android/service/MqttService;

.field private myContext:Landroid/content/Context;

.field private persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

.field private volatile receiverRegistered:Z

.field private final serverURI:Ljava/lang/String;

.field private final serviceConnection:Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection;

.field private final tokenMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/eclipse/paho/client/mqttv3/IMqttToken;",
            ">;"
        }
    .end annotation
.end field

.field private tokenNumber:I

.field private traceCallback:Lorg/eclipse/paho/android/service/MqttTraceHandler;

.field private traceEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->pool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "serverURI",
            "clientId"
        }
    .end annotation

    .line 189
    sget-object v5, Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;->AUTO_ACK:Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/paho/android/service/MqttAndroidClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "serverURI",
            "clientId",
            "ackType"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 209
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/paho/android/service/MqttAndroidClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "serverURI",
            "clientId",
            "persistence"
        }
    .end annotation

    .line 228
    sget-object v5, Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;->AUTO_ACK:Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/paho/android/service/MqttAndroidClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;)V
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
            "context",
            "serverURI",
            "clientId",
            "persistence",
            "ackType"
        }
    .end annotation

    .line 251
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 141
    new-instance v0, Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Lorg/eclipse/paho/android/service/MqttAndroidClient$1;)V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->serviceConnection:Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection;

    .line 154
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->tokenMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->tokenNumber:I

    .line 160
    iput-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    .line 170
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->traceEnabled:Z

    .line 172
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->receiverRegistered:Z

    .line 173
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->bindedService:Z

    .line 252
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->myContext:Landroid/content/Context;

    .line 253
    iput-object p2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->serverURI:Ljava/lang/String;

    .line 254
    iput-object p3, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientId:Ljava/lang/String;

    .line 255
    iput-object p4, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    .line 256
    iput-object p5, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->messageAck:Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    return-void
.end method

.method static synthetic access$002(Lorg/eclipse/paho/android/service/MqttAndroidClient;Lorg/eclipse/paho/android/service/MqttService;)Lorg/eclipse/paho/android/service/MqttService;
    .locals 0

    .line 78
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    return-object p1
.end method

.method static synthetic access$102(Lorg/eclipse/paho/android/service/MqttAndroidClient;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->bindedService:Z

    return p1
.end method

.method static synthetic access$200(Lorg/eclipse/paho/android/service/MqttAndroidClient;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->doConnect()V

    return-void
.end method

.method static synthetic access$300()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 78
    sget-object v0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->pool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$500(Lorg/eclipse/paho/android/service/MqttAndroidClient;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->receiverRegistered:Z

    return p0
.end method

.method static synthetic access$600(Lorg/eclipse/paho/android/service/MqttAndroidClient;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->registerReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private connectAction(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1544
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->connectToken:Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    .line 1545
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->removeMqttToken(Landroid/os/Bundle;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    .line 1547
    invoke-direct {p0, v0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->simpleAction(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Landroid/os/Bundle;)V

    return-void
.end method

.method private connectExtendedAction(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1584
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->callback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    instance-of v0, v0, Lorg/eclipse/paho/client/mqttv3/MqttCallbackExtended;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "MqttService.reconnect"

    .line 1585
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "MqttService.serverURI"

    .line 1586
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1587
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->callback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/MqttCallbackExtended;

    invoke-interface {v1, v0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttCallbackExtended;->connectComplete(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private connectionLostAction(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1574
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->callback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    if-eqz v0, :cond_0

    const-string v0, "MqttService.exception"

    .line 1576
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Exception;

    .line 1577
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->callback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    invoke-interface {v0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttCallback;->connectionLost(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private disconnected(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1558
    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    .line 1559
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->removeMqttToken(Landroid/os/Bundle;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1561
    check-cast p1, Lorg/eclipse/paho/android/service/MqttTokenAndroid;

    invoke-virtual {p1}, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->notifyComplete()V

    .line 1563
    :cond_0
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->callback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    if-eqz p1, :cond_1

    .line 1564
    invoke-interface {p1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttCallback;->connectionLost(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private declared-synchronized doConnect()V
    .locals 6

    monitor-enter p0

    .line 486
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 487
    monitor-exit p0

    return-void

    .line 495
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 497
    :try_start_2
    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    invoke-virtual {v2, v0}, Lorg/eclipse/paho/android/service/MqttService;->getConnection(Ljava/lang/String;)Lorg/eclipse/paho/android/service/MqttConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 499
    :catch_0
    :try_start_3
    iput-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    .line 503
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 504
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->serverURI:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientId:Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->myContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/eclipse/paho/android/service/MqttService;->getClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    .line 507
    :cond_2
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-boolean v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->traceEnabled:Z

    invoke-virtual {v0, v2}, Lorg/eclipse/paho/android/service/MqttService;->setTraceEnabled(Z)V

    .line 508
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/eclipse/paho/android/service/MqttService;->setTraceCallbackId(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->connectToken:Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->storeToken(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 512
    :try_start_4
    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v3, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->connectOptions:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v2, v3, v4, v1, v0}, Lorg/eclipse/paho/android/service/MqttService;->connect(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 516
    :try_start_5
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->connectToken:Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->getActionCallback()Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 518
    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->connectToken:Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    invoke-interface {v1, v2, v0}, Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;->onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 521
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getMqttToken(Landroid/os/Bundle;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "MqttService.activityToken"

    .line 1763
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1764
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->tokenMap:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isMqttServiceAvailable()Z
    .locals 1

    .line 1855
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private messageArrivedAction(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1674
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->callback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    if-eqz v0, :cond_2

    const-string v0, "MqttService.messageId"

    .line 1676
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService.destinationName"

    .line 1678
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MqttService.PARCEL"

    .line 1681
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/android/service/ParcelableMqttMessage;

    .line 1683
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->messageAck:Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    sget-object v3, Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;->AUTO_ACK:Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    if-ne v2, v3, :cond_1

    .line 1684
    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->callback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    invoke-interface {v2, v1, p1}, Lorg/eclipse/paho/client/mqttv3/MqttCallback;->messageArrived(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V

    .line 1685
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1688
    :cond_0
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/paho/android/service/MqttService;->acknowledgeMessageArrival(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/android/service/Status;

    goto :goto_0

    .line 1691
    :cond_1
    iput-object v0, p1, Lorg/eclipse/paho/android/service/ParcelableMqttMessage;->messageId:Ljava/lang/String;

    .line 1692
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->callback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    invoke-interface {v0, v1, p1}, Lorg/eclipse/paho/client/mqttv3/MqttCallback;->messageArrived(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method private messageDeliveredAction(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1656
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->removeMqttToken(Landroid/os/Bundle;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1658
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->callback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    if-eqz v1, :cond_0

    const-string v1, "MqttService.callbackStatus"

    .line 1660
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/android/service/Status;

    .line 1661
    sget-object v1, Lorg/eclipse/paho/android/service/Status;->OK:Lorg/eclipse/paho/android/service/Status;

    if-ne p1, v1, :cond_0

    instance-of p1, v0, Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    if-eqz p1, :cond_0

    .line 1662
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->callback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    invoke-interface {p1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttCallback;->deliveryComplete(Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;)V

    :cond_0
    return-void
.end method

.method private registerReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiver"
        }
    .end annotation

    .line 476
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "MqttService.callbackToActivity.v0"

    .line 477
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->myContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 p1, 0x1

    .line 479
    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->receiverRegistered:Z

    return-void
.end method

.method private declared-synchronized removeMqttToken(Landroid/os/Bundle;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "MqttService.activityToken"

    .line 1745
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1747
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1748
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->tokenMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    .line 1749
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->tokenMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1750
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 1752
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private sendAction(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1625
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->getMqttToken(Landroid/os/Bundle;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    .line 1627
    invoke-direct {p0, v0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->simpleAction(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Landroid/os/Bundle;)V

    return-void
.end method

.method private simpleAction(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "token",
            "data"
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "MqttService.callbackStatus"

    .line 1603
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/android/service/Status;

    .line 1604
    sget-object v1, Lorg/eclipse/paho/android/service/Status;->OK:Lorg/eclipse/paho/android/service/Status;

    if-ne v0, v1, :cond_0

    .line 1605
    check-cast p1, Lorg/eclipse/paho/android/service/MqttTokenAndroid;

    invoke-virtual {p1}, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->notifyComplete()V

    goto :goto_0

    :cond_0
    const-string v0, "MqttService.exception"

    .line 1608
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/lang/Exception;

    .line 1609
    check-cast p1, Lorg/eclipse/paho/android/service/MqttTokenAndroid;

    invoke-virtual {p1, p2}, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->notifyFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1612
    :cond_1
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 1615
    :cond_2
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    const-string p2, "MqttService"

    const-string v0, "simpleAction : token is null"

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/paho/android/service/MqttService;->traceError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private declared-synchronized storeToken(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    monitor-enter p0

    .line 1733
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->tokenMap:Landroid/util/SparseArray;

    iget v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->tokenNumber:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1734
    iget p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->tokenNumber:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->tokenNumber:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private subscribeAction(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1636
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->removeMqttToken(Landroid/os/Bundle;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    .line 1637
    invoke-direct {p0, v0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->simpleAction(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Landroid/os/Bundle;)V

    return-void
.end method

.method private traceAction(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1710
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->traceCallback:Lorg/eclipse/paho/android/service/MqttTraceHandler;

    if-eqz v0, :cond_2

    const-string v0, "MqttService.traceSeverity"

    .line 1711
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService.errorMessage"

    .line 1712
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MqttService.traceTag"

    .line 1713
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug"

    .line 1714
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1715
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->traceCallback:Lorg/eclipse/paho/android/service/MqttTraceHandler;

    invoke-interface {p1, v2, v1}, Lorg/eclipse/paho/android/service/MqttTraceHandler;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "error"

    .line 1716
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1717
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->traceCallback:Lorg/eclipse/paho/android/service/MqttTraceHandler;

    invoke-interface {p1, v2, v1}, Lorg/eclipse/paho/android/service/MqttTraceHandler;->traceError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "MqttService.exception"

    .line 1720
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Exception;

    .line 1721
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->traceCallback:Lorg/eclipse/paho/android/service/MqttTraceHandler;

    invoke-interface {v0, v2, v1, p1}, Lorg/eclipse/paho/android/service/MqttTraceHandler;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private unSubscribeAction(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1646
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->removeMqttToken(Landroid/os/Bundle;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    .line 1647
    invoke-direct {p0, v0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->simpleAction(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public acknowledgeMessage(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageId"
        }
    .end annotation

    .line 1519
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->messageAck:Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    sget-object v1, Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;->MANUAL_ACK:Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 1520
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 1523
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/paho/android/service/MqttService;->acknowledgeMessageArrival(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/android/service/Status;

    move-result-object p1

    .line 1524
    sget-object v0, Lorg/eclipse/paho/android/service/Status;->OK:Lorg/eclipse/paho/android/service/Status;

    if-ne p1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public checkPing(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .line 1903
    new-instance v0, Lorg/eclipse/paho/android/service/MqttDeliveryTokenAndroid;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, v1}, Lorg/eclipse/paho/android/service/MqttDeliveryTokenAndroid;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V

    .line 1905
    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->storeToken(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)Ljava/lang/String;

    move-result-object p1

    .line 1906
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1909
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/paho/android/service/MqttService;->checkPing(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 5

    .line 316
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    if-eqz v0, :cond_1

    .line 317
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 318
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->serverURI:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientId:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->myContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/android/service/MqttService;->getClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    .line 320
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->close(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public connect()Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 340
    invoke-virtual {p0, v0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->connect(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userContext",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 385
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object p1

    return-object p1
.end method

.method public connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0, p1, v0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object p1

    return-object p1
.end method

.method public connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "options",
            "userContext",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 426
    new-instance v0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;

    invoke-direct {v0, p0, p2, p3}, Lorg/eclipse/paho/android/service/MqttTokenAndroid;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    .line 429
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->connectOptions:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 430
    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->connectToken:Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    .line 438
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    if-nez p1, :cond_1

    .line 439
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 440
    new-instance p2, Landroid/content/ComponentName;

    iget-object p3, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->myContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v1, "org.eclipse.paho.android.service.MqttService"

    invoke-direct {p2, p3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 441
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->myContext:Landroid/content/Context;

    sget-object p3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p2

    if-nez p2, :cond_0

    .line 444
    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->getActionCallback()Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 446
    new-instance p3, Ljava/lang/RuntimeException;

    const-string v1, "cannot start service org.eclipse.paho.android.service.MqttService"

    invoke-direct {p3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0, p3}, Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;->onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V

    .line 453
    :cond_0
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->myContext:Landroid/content/Context;

    iget-object p3, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->serviceConnection:Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, p3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 456
    iget-boolean p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->receiverRegistered:Z

    if-nez p1, :cond_2

    invoke-direct {p0, p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->registerReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 459
    :cond_1
    sget-object p1, Lorg/eclipse/paho/android/service/MqttAndroidClient;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lorg/eclipse/paho/android/service/MqttAndroidClient$1;

    invoke-direct {p2, p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient$1;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public deleteBufferedMessage(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferIndex"
        }
    .end annotation

    .line 1793
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1796
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/paho/android/service/MqttService;->deleteBufferedMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public disconnect()Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 540
    new-instance v0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/eclipse/paho/android/service/MqttTokenAndroid;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    .line 542
    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->storeToken(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)Ljava/lang/String;

    move-result-object v2

    .line 543
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v1

    .line 546
    :cond_0
    iget-object v3, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v4, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v2}, Lorg/eclipse/paho/android/service/MqttService;->disconnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public disconnect(J)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quiesceTimeout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 572
    new-instance v0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/eclipse/paho/android/service/MqttTokenAndroid;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    .line 574
    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->storeToken(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)Ljava/lang/String;

    move-result-object v7

    .line 575
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 578
    :cond_0
    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v3, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    const/4 v6, 0x0

    move-wide v4, p1

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/paho/android/service/MqttService;->disconnect(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public disconnect(JLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "quiesceTimeout",
            "userContext",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 663
    new-instance v0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;

    invoke-direct {v0, p0, p3, p4}, Lorg/eclipse/paho/android/service/MqttTokenAndroid;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    .line 665
    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->storeToken(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)Ljava/lang/String;

    move-result-object v6

    .line 666
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 669
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    const/4 v5, 0x0

    move-wide v3, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/paho/android/service/MqttService;->disconnect(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public disconnect(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userContext",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 607
    new-instance v0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/paho/android/service/MqttTokenAndroid;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    .line 609
    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->storeToken(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)Ljava/lang/String;

    move-result-object p1

    .line 610
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return-object v1

    .line 613
    :cond_0
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    invoke-virtual {p2, v2, v1, p1}, Lorg/eclipse/paho/android/service/MqttService;->disconnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public disconnectConnection(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 685
    new-instance v0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lorg/eclipse/paho/android/service/MqttTokenAndroid;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    .line 687
    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->storeToken(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)Ljava/lang/String;

    move-result-object p1

    .line 688
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 691
    :cond_0
    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v3, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, p1}, Lorg/eclipse/paho/android/service/MqttService;->disconnectConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public disconnectForcibly()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 1840
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public disconnectForcibly(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disconnectTimeout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 1845
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public disconnectForcibly(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "quiesceTimeout",
            "disconnectTimeout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 1851
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getBufferedMessage(I)Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferIndex"
        }
    .end annotation

    .line 1786
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1789
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/paho/android/service/MqttService;->getBufferedMessage(Ljava/lang/String;I)Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object p1

    return-object p1
.end method

.method public getBufferedMessageCount()I
    .locals 2

    .line 1779
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1782
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->getBufferedMessageCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingDeliveryTokens()[Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
    .locals 2

    .line 1384
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1387
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->getPendingDeliveryTokens(Ljava/lang/String;)[Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSocketFactory(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyStore",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    :try_start_0
    const-string v0, "BKS"

    .line 1822
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 1823
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string p1, "X509"

    .line 1824
    invoke-static {p1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p1

    .line 1825
    invoke-virtual {p1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1826
    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    const-string p2, "TLSv1"

    .line 1827
    invoke-static {p2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p2

    const/4 v0, 0x0

    .line 1828
    invoke-virtual {p2, v0, p1, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 1830
    invoke-virtual {p2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    .line 1834
    :goto_0
    new-instance p2, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {p2, p1}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getServerURI()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->serverURI:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 3

    .line 267
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    if-eqz v2, :cond_0

    .line 269
    :try_start_0
    invoke-virtual {v2, v0}, Lorg/eclipse/paho/android/service/MqttService;->isConnected(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public isServiceConnected()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->bindedService:Z

    return v0
.end method

.method public messageArrivedComplete(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageId",
            "qos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 1531
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 1457
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "MqttService.clientHandle"

    .line 1460
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 1462
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    .line 1463
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p2, "MqttService.callbackAction"

    .line 1467
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "connect"

    .line 1469
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1470
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->connectAction(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "connectExtended"

    .line 1472
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1473
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->connectExtendedAction(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "messageArrived"

    .line 1475
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1476
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->messageArrivedAction(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    const-string v0, "subscribe"

    .line 1478
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1479
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->subscribeAction(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    const-string v0, "unsubscribe"

    .line 1481
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1482
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->unSubscribeAction(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    const-string v0, "send"

    .line 1484
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1485
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->sendAction(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    const-string v0, "messageDelivered"

    .line 1487
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1488
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->messageDeliveredAction(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_7
    const-string v0, "onConnectionLost"

    .line 1491
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1492
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->connectionLostAction(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_8
    const-string v0, "disconnect"

    .line 1494
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1495
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->disconnected(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_9
    const-string v0, "trace"

    .line 1497
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1498
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->traceAction(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1500
    :cond_a
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 1503
    :cond_b
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    const-string p2, "MqttService"

    const-string v0, "Callback action doesn\'t exist."

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/paho/android/service/MqttService;->traceError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_0
    return-void
.end method

.method public publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "topic",
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 751
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    move-result-object p1

    return-object p1
.end method

.method public publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "topic",
            "message",
            "userContext",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .line 893
    new-instance v0, Lorg/eclipse/paho/android/service/MqttDeliveryTokenAndroid;

    invoke-direct {v0, p0, p3, p4, p2}, Lorg/eclipse/paho/android/service/MqttDeliveryTokenAndroid;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V

    .line 895
    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->storeToken(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)Ljava/lang/String;

    move-result-object v6

    .line 896
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 899
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/paho/android/service/MqttService;->publish(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    move-result-object p1

    .line 901
    invoke-virtual {v0, p1}, Lorg/eclipse/paho/android/service/MqttDeliveryTokenAndroid;->setDelegate(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)V

    return-object v0
.end method

.method public publish(Ljava/lang/String;[BIZ)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "topic",
            "payload",
            "qos",
            "retained"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 725
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->publish(Ljava/lang/String;[BIZLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    move-result-object p1

    return-object p1
.end method

.method public publish(Ljava/lang/String;[BIZLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
    .locals 11
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
            "topic",
            "payload",
            "qos",
            "retained",
            "userContext",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    move-object v0, p0

    .line 792
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-object v5, p2

    invoke-direct {v1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    move v6, p3

    .line 793
    invoke-virtual {v1, p3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setQos(I)V

    move v7, p4

    .line 794
    invoke-virtual {v1, p4}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setRetained(Z)V

    .line 795
    new-instance v10, Lorg/eclipse/paho/android/service/MqttDeliveryTokenAndroid;

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v10, p0, v2, v3, v1}, Lorg/eclipse/paho/android/service/MqttDeliveryTokenAndroid;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V

    .line 797
    invoke-direct {p0, v10}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->storeToken(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)Ljava/lang/String;

    move-result-object v9

    .line 798
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 801
    :cond_0
    iget-object v2, v0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v3, v0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v9}, Lorg/eclipse/paho/android/service/MqttService;->publish(Ljava/lang/String;Ljava/lang/String;[BIZLjava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    move-result-object v1

    .line 803
    invoke-virtual {v10, v1}, Lorg/eclipse/paho/android/service/MqttDeliveryTokenAndroid;->setDelegate(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)V

    return-object v10
.end method

.method public declared-synchronized registerResources(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1888
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->myContext:Landroid/content/Context;

    .line 1889
    iget-boolean p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->receiverRegistered:Z

    if-nez p1, :cond_0

    .line 1890
    invoke-direct {p0, p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->registerReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 1893
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public setBufferOpts(Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferOpts"
        }
    .end annotation

    .line 1772
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1775
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/paho/android/service/MqttService;->setBufferOpts(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;)V

    return-void
.end method

.method public setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1415
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->callback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    return-void
.end method

.method public setManualAcks(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "manualAcks"
        }
    .end annotation

    .line 1535
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setTraceCallback(Lorg/eclipse/paho/android/service/MqttTraceHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "traceCallback"
        }
    .end annotation

    .line 1426
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->traceCallback:Lorg/eclipse/paho/android/service/MqttTraceHandler;

    return-void
.end method

.method public setTraceEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "traceEnabled"
        }
    .end annotation

    .line 1439
    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->traceEnabled:Z

    .line 1440
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    if-eqz v0, :cond_0

    .line 1441
    invoke-virtual {v0, p1}, Lorg/eclipse/paho/android/service/MqttService;->setTraceEnabled(Z)V

    :cond_0
    return-void
.end method

.method public subscribe(Ljava/lang/String;I)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "topic",
            "qos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 928
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->subscribe(Ljava/lang/String;ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object p1

    return-object p1
.end method

.method public subscribe(Ljava/lang/String;ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "topic",
            "qos",
            "userContext",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 990
    new-instance v0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, p0, p3, p4, v1}, Lorg/eclipse/paho/android/service/MqttTokenAndroid;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;[Ljava/lang/String;)V

    .line 992
    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->storeToken(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)Ljava/lang/String;

    move-result-object v8

    .line 993
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 996
    :cond_0
    iget-object v3, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v4, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/paho/android/service/MqttService;->subscribe(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public subscribe(Ljava/lang/String;ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "topicFilter",
            "qos",
            "userContext",
            "callback",
            "messageListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v2, v1

    new-array v3, v0, [I

    aput p2, v3, v1

    new-array v6, v0, [Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;

    aput-object p5, v6, v1

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    .line 1164
    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;[Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object p1

    return-object p1
.end method

.method public subscribe(Ljava/lang/String;ILorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "topicFilter",
            "qos",
            "messageListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    .line 1184
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->subscribe(Ljava/lang/String;ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object p1

    return-object p1
.end method

.method public subscribe([Ljava/lang/String;[I)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "topic",
            "qos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 960
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object p1

    return-object p1
.end method

.method public subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "topic",
            "qos",
            "userContext",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 1133
    new-instance v0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;

    invoke-direct {v0, p0, p3, p4, p1}, Lorg/eclipse/paho/android/service/MqttTokenAndroid;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;[Ljava/lang/String;)V

    .line 1135
    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->storeToken(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)Ljava/lang/String;

    move-result-object v6

    .line 1136
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1139
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/paho/android/service/MqttService;->subscribe(Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;[Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "topicFilters",
            "qos",
            "userContext",
            "callback",
            "messageListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 1235
    new-instance v0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;

    invoke-direct {v0, p0, p3, p4, p1}, Lorg/eclipse/paho/android/service/MqttTokenAndroid;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;[Ljava/lang/String;)V

    .line 1236
    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->storeToken(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)Ljava/lang/String;

    move-result-object v6

    .line 1237
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_0

    return-object p4

    .line 1240
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/paho/android/service/MqttService;->subscribe(Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;[Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)V

    return-object p4
.end method

.method public subscribe([Ljava/lang/String;[I[Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "topicFilters",
            "qos",
            "messageListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 1208
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;[Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized unregisterResources()V
    .locals 3

    monitor-enter p0

    .line 1863
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->myContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->receiverRegistered:Z

    if-eqz v0, :cond_0

    .line 1864
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1865
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->myContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1866
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->receiverRegistered:Z

    .line 1867
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1868
    :try_start_2
    iget-boolean v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->bindedService:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    .line 1870
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->myContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->serviceConnection:Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1871
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->bindedService:Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1867
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1877
    :catch_0
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unsubscribe(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "topic"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1261
    invoke-virtual {p0, p1, v0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->unsubscribe(Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object p1

    return-object p1
.end method

.method public unsubscribe(Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "topic",
            "userContext",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 1304
    new-instance v0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;

    invoke-direct {v0, p0, p2, p3}, Lorg/eclipse/paho/android/service/MqttTokenAndroid;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    .line 1306
    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->storeToken(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)Ljava/lang/String;

    move-result-object p2

    .line 1307
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_0

    return-object v1

    .line 1310
    :cond_0
    iget-object p3, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    invoke-virtual {p3, v2, p1, v1, p2}, Lorg/eclipse/paho/android/service/MqttService;->unsubscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public unsubscribe([Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "topic"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1279
    invoke-virtual {p0, p1, v0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->unsubscribe([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object p1

    return-object p1
.end method

.method public unsubscribe([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "topic",
            "userContext",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 1354
    new-instance v0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;

    invoke-direct {v0, p0, p2, p3}, Lorg/eclipse/paho/android/service/MqttTokenAndroid;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    .line 1356
    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->storeToken(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)Ljava/lang/String;

    move-result-object p2

    .line 1357
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->isMqttServiceAvailable()Z

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_0

    return-object v1

    .line 1360
    :cond_0
    iget-object p3, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->mqttService:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient;->clientHandle:Ljava/lang/String;

    invoke-virtual {p3, v2, p1, v1, p2}, Lorg/eclipse/paho/android/service/MqttService;->unsubscribe(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
