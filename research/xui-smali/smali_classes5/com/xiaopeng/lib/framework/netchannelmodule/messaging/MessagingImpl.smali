.class public Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/MessagingImpl;
.super Ljava/lang/Object;
.source "MessagingImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging;


# static fields
.field public static final TAG:Ljava/lang/String; = "MessagingImpl"


# instance fields
.field private mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public available()Z
    .locals 1

    .line 45
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    return v0

    .line 48
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->isConnected()Z

    move-result v0

    return v0
.end method

.method public initChannelWithContext(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;Landroid/app/Application;)V
    .locals 2
    .param p1, "channel"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;
    .param p2, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-static {p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->setApplicationContext(Landroid/app/Application;)V

    .line 32
    const-class v0, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    new-instance v1, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    invoke-direct {v1, p2}, Lcom/xiaopeng/datalog/DataLogModuleEntry;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 34
    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ProfileFactory;->channelProfile(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/MessagingImpl;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    .line 37
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/MessagingImpl;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    invoke-virtual {v0, p2, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->init(Landroid/app/Application;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;)V

    .line 38
    return-void
.end method

.method public publish(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/MessagingImpl;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->canPublish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->publishMessage(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 82
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw v0

    .line 78
    :cond_1
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw v0
.end method

.method public publish(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;)J
    .locals 3
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "qosLevel"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/MessagingImpl;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->canPublish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;->value()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->publishMessage(Ljava/lang/String;[BI)J

    move-result-wide v0

    return-wide v0

    .line 122
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw v0

    .line 118
    :cond_1
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw v0
.end method

.method public publish(Ljava/lang/String;[B)J
    .locals 2
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/MessagingImpl;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->canPublish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->publishMessage(Ljava/lang/String;[B)J

    move-result-wide v0

    return-wide v0

    .line 101
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw v0

    .line 97
    :cond_1
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw v0
.end method

.method public publish(Ljava/lang/String;[BLcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;)J
    .locals 2
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "message"    # [B
    .param p3, "qosLevel"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/MessagingImpl;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->canPublish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object v0

    invoke-virtual {p3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;->value()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->publishMessage(Ljava/lang/String;[BI)J

    move-result-wide v0

    return-wide v0

    .line 142
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw v0

    .line 138
    :cond_1
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw v0
.end method

.method public subscribe(Ljava/lang/String;)V
    .locals 2
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/MessagingImpl;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->canSubscribe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->subscribe(Ljava/lang/String;)V

    .line 66
    return-void

    .line 63
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw v0

    .line 59
    :cond_1
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw v0
.end method
