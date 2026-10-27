.class public Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;
.super Ljava/lang/Object;
.source "MqttChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;,
        Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;,
        Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$MqttCallbackImpl;,
        Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$MqttChannelHolder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CLASS_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "NetChannel-MqttChannel"


# instance fields
.field private mApplicationContext:Landroid/app/Application;

.field private volatile mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

.field private mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;

.field private mEventSender:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;

.field private volatile mExtremePingSender:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

.field private volatile mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

.field private mMemoryPersistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

.field private volatile mMqttAndroidClient:Lorg/eclipse/paho/android/service/MqttAndroidClient;

.field private mMqttCallback:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$MqttCallbackImpl;

.field private mMqttConnectOptions:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

.field private volatile mScheduler:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

.field private volatile mSchedulerClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

.field private mSendOutAllLogs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    nop

    .line 37
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;
    .param p1, "x1"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->reInitMqtt(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;
    .param p1, "x1"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->logInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lorg/eclipse/paho/android/service/MqttAndroidClient;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttAndroidClient:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mEventSender:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mSchedulerClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->realNetworkException(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;
    .param p1, "x1"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->subscribeInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->reInitMqttWithLastProfile()V

    return-void
.end method

.method static synthetic access$2900(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mExtremePingSender:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mScheduler:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->disconnectConnection()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->networkAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->connectMqtt()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;
    .param p1, "x1"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->log(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized closeCurrentConnection()V
    .locals 3

    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttAndroidClient:Lorg/eclipse/paho/android/service/MqttAndroidClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 216
    monitor-exit p0

    return-void

    .line 219
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->clearRunnables()V

    .line 220
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mSchedulerClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->stopBackgroundReconnection()V

    .line 221
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mSchedulerClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->stopReopenAction()V

    .line 223
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mScheduler:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->reset()V

    .line 224
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttAndroidClient:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    invoke-virtual {v1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->unregisterResources()V

    .line 225
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttAndroidClient:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    invoke-virtual {v1, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->disconnectConnection(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "Failed to disconnectConnection current connection!!!"

    invoke-direct {p0, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->log(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttAndroidClient:Lorg/eclipse/paho/android/service/MqttAndroidClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;
    throw v0
.end method

.method private connectMqtt()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;
        }
    .end annotation

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "result":Z
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttAndroidClient:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttConnectOptions:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    if-nez v1, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mScheduler:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->allowToConnect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mScheduler:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->increaseFail()V

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already connected or connecting! State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mScheduler:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    invoke-virtual {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->state()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->log(Ljava/lang/String;)V

    .line 282
    return v0

    .line 286
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttConnectOptions:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->log(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mScheduler:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->CONNECTING:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->moveTo(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;)V

    .line 288
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttAndroidClient:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttConnectOptions:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mApplicationContext:Landroid/app/Application;

    new-instance v4, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$5;

    invoke-direct {v4, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$5;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    const/4 v0, 0x1

    .line 353
    nop

    .line 354
    return v0

    .line 348
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mScheduler:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    sget-object v3, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->DISCONNECTED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->moveTo(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;)V

    .line 350
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->log(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 352
    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw v2

    .line 274
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mScheduler:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->increaseFail()V

    .line 275
    const-string v1, "mMqttAndroidClient == null || mMqttConnectOptions == null, return..."

    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->log(Ljava/lang/String;)V

    .line 276
    return v0
.end method

.method private disconnectConnection()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mScheduler:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mScheduler:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->connected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mScheduler:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->DISCONNECTING:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->moveTo(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;)V

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttAndroidClient:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->disconnectConnection(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mScheduler:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->DISCONNECTED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->moveTo(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;)V

    .line 250
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMemoryPersistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMemoryPersistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    :cond_1
    goto :goto_1

    .line 253
    :catch_1
    move-exception v0

    .line 254
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 238
    :cond_2
    :goto_2
    return-void
.end method

.method public static getCurrentChannelProfile()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;
    .locals 1

    .line 65
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;
    .locals 1

    .line 61
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$MqttChannelHolder;->access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object v0

    return-object v0
.end method

.method private initAndroidClientSuccess()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;
        }
    .end annotation

    .line 365
    const-string v0, "NetChannel-MqttChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAndroidClientSuccess mMqttAndroidClient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttAndroidClient:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->serverUrl()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->increaseInitFailedCount()V

    .line 372
    :cond_0
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw v1

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->clientId()Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMemoryPersistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    if-nez v2, :cond_2

    .line 377
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    invoke-virtual {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->mqttClientPersistence()Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMemoryPersistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    .line 380
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMemoryPersistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v2, v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->open(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    goto :goto_0

    .line 381
    :catch_0
    move-exception v2

    .line 382
    .local v2, "ex":Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->logInternal(Ljava/lang/String;)V

    .line 383
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMemoryPersistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    .line 385
    .end local v2    # "ex":Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMemoryPersistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    instance-of v2, v2, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;

    if-eqz v2, :cond_3

    .line 386
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMemoryPersistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    check-cast v2, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    invoke-virtual {v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->enableTrace()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->setTraceEnabled(Z)V

    .line 388
    :cond_3
    new-instance v2, Lorg/eclipse/paho/android/service/MqttAndroidClient;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mApplicationContext:Landroid/app/Application;

    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMemoryPersistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {v2, v3, v0, v1, v4}, Lorg/eclipse/paho/android/service/MqttAndroidClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V

    iput-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttAndroidClient:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    .line 389
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttAndroidClient:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttCallback:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$MqttCallbackImpl;

    invoke-virtual {v2, v3}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V

    .line 390
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttAndroidClient:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    invoke-virtual {v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->enableTrace()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->setTraceEnabled(Z)V

    .line 391
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttAndroidClient:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    new-instance v3, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$6;

    invoke-direct {v3, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$6;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)V

    invoke-virtual {v2, v3}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->setTraceCallback(Lorg/eclipse/paho/android/service/MqttTraceHandler;)V

    .line 407
    const/4 v2, 0x1

    return v2
.end method

.method private initMqttClient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttAndroidClient:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    if-nez v0, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->initAndroidClientSuccess()Z

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->buildConnectOptions()Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttConnectOptions:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 362
    return-void
.end method

.method private initMqttConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;
        }
    .end annotation

    .line 259
    monitor-enter p0

    .line 260
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->initMqttClient()V

    .line 261
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mScheduler:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->DISCONNECTED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->moveTo(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;)V

    .line 265
    return-void

    .line 261
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 548
    const-string v0, "NetChannel-MqttChannel"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method private logInternal(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 541
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isUserVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    return-void

    .line 544
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->log(Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method private networkAvailable()Z
    .locals 2

    .line 897
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mApplicationContext:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 898
    return v1

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mApplicationContext:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isMobileNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 902
    invoke-static {}, Lcom/xiaopeng/lib/utils/NetUtils;->isSystemApnReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 903
    return v1

    .line 905
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized reInitMqtt(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 204
    if-nez p1, :cond_0

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    move-object p1, v0

    goto :goto_0

    .line 203
    .end local p1    # "profile":Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 208
    .restart local p1    # "profile":Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->closeCurrentConnection()V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mEventSender:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->channel()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->changeChannel(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;)V

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mScheduler:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->reset()V

    .line 211
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->initMqttConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    .line 203
    .end local p1    # "profile":Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;
    throw p1
.end method

.method private reInitMqttWithLastProfile()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;
        }
    .end annotation

    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->reInitMqtt(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;)V

    .line 201
    return-void
.end method

.method private realNetworkException(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 531
    if-nez p1, :cond_0

    .line 532
    const/4 v0, 0x0

    return v0

    .line 535
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->log(Ljava/lang/String;)V

    .line 537
    instance-of v0, p1, Ljava/io/EOFException;

    return v0
.end method

.method private subscribeInternal(Ljava/lang/String;)V
    .locals 4
    .param p1, "topic"    # Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mScheduler:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->allowToSubscribe()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    return-void

    .line 430
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttAndroidClient:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->defaultQoSLevel()I

    move-result v1

    const/4 v2, 0x0

    new-instance v3, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$8;

    invoke-direct {v3, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$8;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->subscribe(Ljava/lang/String;ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 457
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->log(Ljava/lang/String;)V

    .line 459
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public disconnectedDueToException()V
    .locals 1

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->disconnectedDueToException(Ljava/lang/Throwable;)V

    .line 145
    return-void
.end method

.method public disconnectedDueToException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 148
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->realNetworkException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mScheduler:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->resetFail()V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mSchedulerClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->disconnectedDueToException(Ljava/lang/Throwable;)V

    .line 152
    return-void
.end method

.method public declared-synchronized init(Landroid/app/Application;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;)V
    .locals 4
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "profile"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 69
    nop

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mApplicationContext:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$1;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 83
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mApplicationContext:Landroid/app/Application;

    .line 84
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    .line 85
    invoke-virtual {p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->sendOutAllLogs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mSendOutAllLogs:Z

    .line 86
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->setLogger(Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->CLASS_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    .line 88
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$MqttCallbackImpl;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$MqttCallbackImpl;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttCallback:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$MqttCallbackImpl;

    .line 89
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;

    invoke-virtual {p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->channel()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mEventSender:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;

    .line 90
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$1;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mExtremePingSender:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    .line 91
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$1;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mSchedulerClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    .line 92
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mSchedulerClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mScheduler:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    .line 94
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor;->registerBroadcastReceiver(Landroid/content/Context;)V

    .line 95
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isEngVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor;->registerBroadcastReceiver()V

    .line 99
    :cond_1
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mApplicationContext:Landroid/app/Application;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    invoke-virtual {v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->needToCollectData()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;Z)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;

    .line 100
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->initMqttConnection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 68
    .end local p1    # "application":Landroid/app/Application;
    .end local p2    # "profile":Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;
    throw p1
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mScheduler:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 114
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mScheduler:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->connected()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;
    throw v0
.end method

.method public networkChanged(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$2;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void
.end method

.method public publishMessage(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;
        }
    .end annotation

    .line 462
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->defaultQoSLevel()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->publishMessage(Ljava/lang/String;[BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public publishMessage(Ljava/lang/String;[B)J
    .locals 2
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->defaultQoSLevel()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->publishMessage(Ljava/lang/String;[BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public publishMessage(Ljava/lang/String;[BI)J
    .locals 6
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "msg"    # [B
    .param p3, "qosLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;
        }
    .end annotation

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publishMessage topic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " msg.length ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->logInternal(Ljava/lang/String;)V

    .line 471
    const-wide/16 v0, 0x0

    .line 472
    .local v0, "messageId":J
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttAndroidClient:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    if-eqz v2, :cond_3

    .line 476
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-direct {v2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>()V

    .line 477
    .local v2, "mqttMessage":Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    invoke-virtual {v2, p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setPayload([B)V

    .line 478
    invoke-virtual {v2, p3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setQos(I)V

    .line 479
    monitor-enter p0

    .line 483
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;

    if-eqz v3, :cond_0

    .line 484
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;

    invoke-virtual {v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->increaseTryingToPublish()V

    .line 486
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttAndroidClient:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    const/4 v4, 0x0

    new-instance v5, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$9;

    invoke-direct {v5, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$9;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)V

    invoke-virtual {v3, p1, v2, v4, v5}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    move-result-object v3

    .line 512
    .local v3, "token":Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    invoke-interface {v3}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->getMessageId()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v4

    .line 522
    goto :goto_0

    .line 523
    .end local v3    # "token":Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 513
    :catch_0
    move-exception v3

    .line 514
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;

    if-eqz v4, :cond_1

    .line 515
    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;

    invoke-virtual {v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->increasePublishFailureCount()V

    .line 517
    :cond_1
    instance-of v4, v3, Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz v4, :cond_2

    .line 518
    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mEventSender:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;

    move-object v5, v3

    check-cast v5, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-virtual {v5}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getReasonCode()I

    move-result v5

    invoke-virtual {v4, v0, v1, v5}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->postDeliveryFailure(JI)V

    goto :goto_0

    .line 520
    :cond_2
    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mEventSender:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v1, v5}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->postDeliveryFailure(JI)V

    .line 523
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    .line 524
    return-wide v0

    .line 523
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 473
    .end local v2    # "mqttMessage":Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    :cond_3
    const-string v2, "publishMessage mMqttAndroidClient not init."

    invoke-direct {p0, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->logInternal(Ljava/lang/String;)V

    .line 474
    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw v2
.end method

.method protected declared-synchronized requestToConnect()V
    .locals 2

    monitor-enter p0

    .line 176
    :try_start_0
    const-string v0, "requestToConnect"

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->logInternal(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 179
    monitor-exit p0

    return-void

    .line 182
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$4;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;
    throw v0
.end method

.method protected declared-synchronized requestToDisconnect()V
    .locals 2

    monitor-enter p0

    .line 159
    :try_start_0
    const-string v0, "requestToDisconnect"

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->logInternal(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 161
    monitor-exit p0

    return-void

    .line 163
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$3;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;
    throw v0
.end method

.method public sendoutAllLogs()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mSendOutAllLogs:Z

    return v0
.end method

.method public declared-synchronized subscribe(Ljava/lang/String;)V
    .locals 2
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mMqttAndroidClient:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$7;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$7;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    monitor-exit p0

    return-void

    .line 412
    :cond_0
    :try_start_1
    const-string v0, "subscribe mMqttAndroidClient not init."

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->log(Ljava/lang/String;)V

    .line 413
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    .end local p1    # "topic":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;
    throw p1
.end method
