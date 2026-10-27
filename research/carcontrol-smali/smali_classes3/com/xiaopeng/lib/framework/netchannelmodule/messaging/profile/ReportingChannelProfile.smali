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

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;-><init>(ZZ)V

    return-void
.end method

.method private getMQTTPassword()Ljava/lang/String;
    .locals 1

    .line 94
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ReportingChannelProfile;->SYSTEM_PROPERTY_MQTT_PASS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ReportingChannelProfile;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMQTTUserName()Ljava/lang/String;
    .locals 1

    .line 90
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

    .line 81
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;-><init>()V

    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;->setBufferEnabled(Z)V

    const/16 v2, 0x3e8

    .line 83
    invoke-virtual {v0, v2}, Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;->setBufferSize(I)V

    .line 84
    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;->setDeleteOldestMessages(Z)V

    .line 85
    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;->setPersistBuffer(Z)V

    return-object v0
.end method

.method public buildConnectOptions()Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    .locals 2

    .line 65
    invoke-super {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->buildConnectOptions()Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    move-result-object v0

    .line 66
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setSocketFactory(Ljavax/net/SocketFactory;)V

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ReportingChannelProfile;->getMQTTUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setUserName(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ReportingChannelProfile;->getMQTTPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setPassword([C)V

    return-object v0
.end method

.method public channel()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;
    .locals 1

    .line 55
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;->REPORTING:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    return-object v0
.end method

.method public clientId()Ljava/lang/String;
    .locals 2

    .line 46
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ReportingChannelProfile;->SYSTEM_PROPERTY_MQTT_ID:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ReportingChannelProfile;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Initialization failure!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "0000037e0020f93e026600000000105125b34884533a94fb319990325744ee0a9cec7a5fd42faaee182296df465f016caed78124e8dba1ad17b618611f21958b56f1ac5b4be4afef560d982c9b1d684b94c8165845c8740f3c0731b56f7a75157694f311bf0304643a2b8ae755a2efa708f416bd4ff33a3938589b7c8811eabf50501f1f682cec5a399f6ff4f86aececabc1747ee7f925366cdac24363dd980f0bfc404f5656b55f6322beef905c89"

    .line 31
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/crypt/XpEncryptUtils;->decrypt(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->decryptWithBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public defaultQoSLevel()I
    .locals 1

    .line 60
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;->LEVEL_1:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;->value()I

    move-result v0

    return v0
.end method

.method public serverUrl()Ljava/lang/String;
    .locals 3

    .line 37
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ReportingChannelProfile;->SYSTEM_PROPERTY_MQTT_REPORTING_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ReportingChannelProfile;->decode(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ReportingChannelProfile;->resolveWithDns(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
