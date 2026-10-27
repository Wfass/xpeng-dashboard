.class public abstract Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;
.super Ljava/lang/Object;
.source "AbstractChannelProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile$MqttClientPersistenceFactory;
    }
.end annotation


# static fields
.field private static final AES_KEY:Ljava/lang/String; = "@!chxpzi#0109$+/"

.field private static final CONNECTION_TIMEOUT:I = 0xa

.field private static final DEBUG_FLAG_FILE:Ljava/lang/String; = "/sdcard/MQTTTRACE.xp"

.field private static final MAX_INFLIGHT:I = 0x78

.field protected static final SSL_PREFIX:Ljava/lang/String; = "ssl://"

.field public static final SYSTEM_PROPERTY_MQTT_COMM_ID:Ljava/lang/String;

.field public static final SYSTEM_PROPERTY_MQTT_COMM_PASS:Ljava/lang/String;

.field public static final SYSTEM_PROPERTY_MQTT_COMM_URL:Ljava/lang/String;

.field public static final SYSTEM_PROPERTY_MQTT_COMM_USER:Ljava/lang/String;

.field public static final SYSTEM_PROPERTY_MQTT_ID:Ljava/lang/String;

.field public static final SYSTEM_PROPERTY_MQTT_PASS:Ljava/lang/String;

.field public static final SYSTEM_PROPERTY_MQTT_REPORTING_URL:Ljava/lang/String;

.field public static final SYSTEM_PROPERTY_MQTT_USER:Ljava/lang/String;

.field private static final sShorterAccountEncoding:Z


# instance fields
.field private mCanPublish:Z

.field private mCanSubscribe:Z

.field private mDebugging:Z

.field private sPersistenceFactory:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile$MqttClientPersistenceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->sShorterAccountEncoding:Z

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys.mqtt.user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getBid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->SYSTEM_PROPERTY_MQTT_USER:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys.mqtt.pass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getBid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->SYSTEM_PROPERTY_MQTT_PASS:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys.mqtt.id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getBid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->SYSTEM_PROPERTY_MQTT_ID:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys.mqtt.url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getBid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->SYSTEM_PROPERTY_MQTT_REPORTING_URL:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys.mqtt.comm_url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getBid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->SYSTEM_PROPERTY_MQTT_COMM_URL:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys.mqtt.comm_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getBid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->SYSTEM_PROPERTY_MQTT_COMM_ID:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys.mqtt.comm_user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getBid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->SYSTEM_PROPERTY_MQTT_COMM_USER:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys.mqtt.comm_pass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getBid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->SYSTEM_PROPERTY_MQTT_COMM_PASS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "canPublish"    # Z
    .param p2, "canSubscribe"    # Z

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->mCanPublish:Z

    .line 75
    iput-boolean p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->mCanSubscribe:Z

    .line 76
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->checkDebuggingFlag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->mDebugging:Z

    .line 77
    return-void
.end method

.method private static checkDebuggingFlag()Z
    .locals 3

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "result":Z
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isEngVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/MQTTTRACE.xp"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    const/4 v0, 0x1

    .line 225
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return v0
.end method

.method protected static resolveWithDns(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "originHost"    # Ljava/lang/String;

    .line 192
    move-object v0, p0

    .line 193
    .local v0, "result":Ljava/lang/String;
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 195
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->lookupAsync(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 196
    .local v2, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 197
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 198
    .local v4, "adr":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 199
    :cond_0
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    const-string v6, "10."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 200
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "://"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 201
    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v3

    if-lez v3, :cond_3

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_1

    .line 206
    .end local v4    # "adr":Ljava/net/InetAddress;
    :cond_2
    goto :goto_0

    .line 209
    .end local v2    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :cond_3
    :goto_1
    goto :goto_2

    .line 208
    :catch_0
    move-exception v2

    .line 210
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update server uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 211
    return-object v0
.end method


# virtual methods
.method public buildBufferOptions()Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;
    .locals 1

    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public buildConnectOptions()Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    .locals 2

    .line 158
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;-><init>()V

    .line 159
    .local v0, "options":Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setAutomaticReconnect(Z)V

    .line 160
    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setCleanSession(Z)V

    .line 161
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setMqttVersion(I)V

    .line 162
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setMaxInflight(I)V

    .line 163
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setConnectionTimeout(I)V

    .line 164
    return-object v0
.end method

.method public canPublish()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->mCanPublish:Z

    return v0
.end method

.method public canSubscribe()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->mCanSubscribe:Z

    return v0
.end method

.method public abstract channel()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;
.end method

.method public abstract clientId()Ljava/lang/String;
.end method

.method protected abstract decode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public defaultQoSLevel()I
    .locals 1

    .line 103
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;->LEVEL_2:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;->value()I

    move-result v0

    return v0
.end method

.method public enableExtremePing()Z
    .locals 1

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public enableTrace()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->mDebugging:Z

    return v0
.end method

.method public getAcceptedLogList()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 175
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->mDebugging:Z

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x0

    return-object v0

    .line 179
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "309"

    const-string v2, "627"

    const-string v3, "633"

    const-string v4, "802"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public logTag()Ljava/lang/String;
    .locals 1

    .line 80
    const-string v0, "PahoLogger"

    return-object v0
.end method

.method public mqttClientPersistence()Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->sPersistenceFactory:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile$MqttClientPersistenceFactory;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->sPersistenceFactory:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile$MqttClientPersistenceFactory;

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile$MqttClientPersistenceFactory;->makePersistence()Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    move-result-object v0

    return-object v0

    .line 232
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;-><init>()V

    return-object v0
.end method

.method public needToCollectData()Z
    .locals 1

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public sendOutAllLogs()Z
    .locals 1

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public abstract serverUrl()Ljava/lang/String;
.end method

.method public setPersistenceFactory(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile$MqttClientPersistenceFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile$MqttClientPersistenceFactory;

    .line 236
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->sPersistenceFactory:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile$MqttClientPersistenceFactory;

    .line 237
    return-void
.end method
