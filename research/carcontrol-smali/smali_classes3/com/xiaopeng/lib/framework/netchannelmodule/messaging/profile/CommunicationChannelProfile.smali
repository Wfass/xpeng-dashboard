.class public final Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/CommunicationChannelProfile;
.super Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;
.source "CommunicationChannelProfile.java"


# static fields
.field private static final FUNCTION_PUBLISH:Z = true

.field private static final FUNCTION_SUBSCRIBE:Z = true

.field private static final KEY_ALIAS:Ljava/lang/String; = "DCMqttKeyAlias"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 20
    invoke-direct {p0, v0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;-><init>(ZZ)V

    return-void
.end method

.method private getMQTTPassword()Ljava/lang/String;
    .locals 2

    .line 81
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/CommunicationChannelProfile;->SYSTEM_PROPERTY_MQTT_COMM_PASS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/CommunicationChannelProfile;->SYSTEM_PROPERTY_MQTT_PASS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/CommunicationChannelProfile;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/CommunicationChannelProfile;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMQTTUserName()Ljava/lang/String;
    .locals 2

    .line 72
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/CommunicationChannelProfile;->SYSTEM_PROPERTY_MQTT_COMM_USER:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/CommunicationChannelProfile;->SYSTEM_PROPERTY_MQTT_USER:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/CommunicationChannelProfile;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/CommunicationChannelProfile;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildConnectOptions()Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    .locals 2

    .line 58
    invoke-super {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->buildConnectOptions()Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    move-result-object v0

    .line 59
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setSocketFactory(Ljavax/net/SocketFactory;)V

    .line 60
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/CommunicationChannelProfile;->getMQTTUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setUserName(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/CommunicationChannelProfile;->getMQTTPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setPassword([C)V

    return-object v0
.end method

.method public channel()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;
    .locals 1

    .line 53
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;->COMMUNICATION:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    return-object v0
.end method

.method public clientId()Ljava/lang/String;
    .locals 2

    .line 46
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/CommunicationChannelProfile;->SYSTEM_PROPERTY_MQTT_COMM_ID:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/CommunicationChannelProfile;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getSystemVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "DCMqttKeyAlias"

    .line 25
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->decryptByKeystore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public enableExtremePing()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public logTag()Ljava/lang/String;
    .locals 1

    const-string v0, "PahoBizLogger"

    return-object v0
.end method

.method public serverUrl()Ljava/lang/String;
    .locals 3

    .line 37
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/CommunicationChannelProfile;->SYSTEM_PROPERTY_MQTT_COMM_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/CommunicationChannelProfile;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    return-object v0

    .line 41
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ssl://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/CommunicationChannelProfile;->resolveWithDns(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
