.class public final Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ReportingChannelProfile;
.super Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;
.source "ReportingChannelProfile.java"


# static fields
.field private static final FUNCTION_PUBLISH:Z = true

.field private static final FUNCTION_SUBSCRIBE:Z = false

.field private static final MAX_CACHABLE_BUFFER_SIZE:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;-><init>(ZZ)V

    .line 23
    return-void
.end method

.method private getMQTTPassword()Ljava/lang/String;
    .locals 1

    .line 80
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ReportingChannelProfile;->SYSTEM_PROPERTY_MQTT_PASS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ReportingChannelProfile;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMQTTUserName()Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ReportingChannelProfile;->SYSTEM_PROPERTY_MQTT_USER:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ReportingChannelProfile;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildBufferOptions()Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;
    .locals 3

    .line 67
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;-><init>()V

    .line 68
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;->setBufferEnabled(Z)V

    .line 69
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;->setBufferSize(I)V

    .line 70
    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;->setDeleteOldestMessages(Z)V

    .line 71
    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;->setPersistBuffer(Z)V

    .line 72
    return-object v0
.end method

.method public buildConnectOptions()Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    .locals 2

    .line 51
    invoke-super {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->buildConnectOptions()Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    move-result-object v0

    .line 52
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setSocketFactory(Ljavax/net/SocketFactory;)V

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ReportingChannelProfile;->getMQTTUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setUserName(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ReportingChannelProfile;->getMQTTPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setPassword([C)V

    .line 56
    return-object v0
.end method

.method public channel()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;
    .locals 1

    .line 41
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;->REPORTING:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    return-object v0
.end method

.method public clientId()Ljava/lang/String;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->clientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public defaultQoSLevel()I
    .locals 1

    .line 46
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;->LEVEL_1:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;->value()I

    move-result v0

    return v0
.end method

.method public serverUrl()Ljava/lang/String;
    .locals 3

    .line 27
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ReportingChannelProfile;->SYSTEM_PROPERTY_MQTT_REPORTING_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ReportingChannelProfile;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    const-string v0, ""

    return-object v0

    .line 31
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ssl://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ReportingChannelProfile;->resolveWithDns(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
