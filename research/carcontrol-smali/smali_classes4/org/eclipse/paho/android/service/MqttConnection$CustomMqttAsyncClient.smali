.class Lorg/eclipse/paho/android/service/MqttConnection$CustomMqttAsyncClient;
.super Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;
.source "MqttConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/MqttConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomMqttAsyncClient"
.end annotation


# instance fields
.field private mPingMessage:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingReq;

.field final synthetic this$0:Lorg/eclipse/paho/android/service/MqttConnection;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/android/service/MqttConnection;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/MqttPingSender;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "serverURI",
            "clientId",
            "persistence",
            "pingSender"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttConnection$CustomMqttAsyncClient;->this$0:Lorg/eclipse/paho/android/service/MqttConnection;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 164
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/MqttPingSender;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 161
    new-instance p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingReq;

    invoke-direct {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingReq;-><init>()V

    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttConnection$CustomMqttAsyncClient;->mPingMessage:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingReq;

    return-void
.end method


# virtual methods
.method public checkPing(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttConnection$CustomMqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttConnection$CustomMqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-virtual {p0}, Lorg/eclipse/paho/android/service/MqttConnection$CustomMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setActionCallback(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    const/4 p1, 0x0

    .line 171
    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setUserContext(Ljava/lang/Object;)V

    .line 172
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttConnection$CustomMqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttConnection$CustomMqttAsyncClient;->mPingMessage:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingReq;

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->sendNoWait(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    :cond_0
    return-void
.end method
