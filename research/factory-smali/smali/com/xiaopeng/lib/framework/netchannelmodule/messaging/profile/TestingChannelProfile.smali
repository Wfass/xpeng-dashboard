.class public final Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/TestingChannelProfile;
.super Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;
.source "TestingChannelProfile.java"


# static fields
.field private static final DEFAULT_CLIENT_ID:Ljava/lang/String; = "ExampleAndroidClient"

.field private static final DEFAULT_SERVER_URI:Ljava/lang/String; = "tcp://10.192.152.118:1883"

.field private static final FUNCTION_PUBLISH:Z = true

.field private static final FUNCTION_SUBSCRIBE:Z = true

.field private static final MAX_CACHABLE_BUFFER_SIZE:I = 0x1388

.field private static final MAX_INFLIGHT:I = 0x78

.field private static final SYSTEM_PROPERTY_MQTT_CLIENT_ID:Ljava/lang/String; = "persist.sys.mqtt.test.clientid"

.field private static final SYSTEM_PROPERTY_MQTT_TESTING_URL:Ljava/lang/String; = "persist.sys.mqtt.test.url"


# instance fields
.field private mPreference:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;-><init>(ZZ)V

    .line 39
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/TestingChannelProfile;->mPreference:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    .line 40
    return-void
.end method


# virtual methods
.method public buildBufferOptions()Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;
    .locals 3

    .line 113
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;-><init>()V

    .line 114
    .local v0, "bufferOptions":Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;->setBufferEnabled(Z)V

    .line 115
    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;->setBufferSize(I)V

    .line 116
    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;->setDeleteOldestMessages(Z)V

    .line 117
    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;->setPersistBuffer(Z)V

    .line 118
    return-object v0
.end method

.method public buildConnectOptions()Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    .locals 2

    .line 99
    invoke-super {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->buildConnectOptions()Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    move-result-object v0

    .line 100
    .local v0, "options":Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setMaxInflight(I)V

    .line 102
    return-object v0
.end method

.method public channel()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;
    .locals 1

    .line 44
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;->TESTING:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    return-object v0
.end method

.method public clientId()Ljava/lang/String;
    .locals 4

    .line 84
    const-string v0, "persist.sys.mqtt.test.clientid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    return-object v0

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/TestingChannelProfile;->mPreference:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    const-string v2, "persist.sys.mqtt.test.clientid"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 94
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExampleAndroidClient"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public enableExtremePing()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public enableTrace()Z
    .locals 1

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public getAcceptedLogList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public needToCollectData()Z
    .locals 1

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public sendOutAllLogs()Z
    .locals 1

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public serverUrl()Ljava/lang/String;
    .locals 3

    .line 69
    const-string v0, "persist.sys.mqtt.test.url"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    return-object v0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/TestingChannelProfile;->mPreference:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    const-string v2, "persist.sys.mqtt.test.url"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    return-object v0

    .line 79
    :cond_1
    const-string v1, "tcp://10.192.152.118:1883"

    return-object v1
.end method
