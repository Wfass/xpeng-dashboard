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

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/MessagingImpl;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    .line 37
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/MessagingImpl;->mChannelProfile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    invoke-virtual {p1, p2, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->init(Landroid/app/Application;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;)V

    return-void
.end method

.method public publish(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1
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

    move-result-wide p1

    return-wide p1

    .line 82
    :cond_0
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw p1

    .line 78
    :cond_1
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 p2, 0x11

    invoke-direct {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw p1
.end method

.method public publish(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;)J
    .locals 1
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

    move-result-object p2

    invoke-virtual {p3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;->value()I

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->publishMessage(Ljava/lang/String;[BI)J

    move-result-wide p1

    return-wide p1

    .line 122
    :cond_0
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw p1

    .line 118
    :cond_1
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 p2, 0x11

    invoke-direct {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw p1
.end method

.method public publish(Ljava/lang/String;[B)J
    .locals 1
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

    move-result-wide p1

    return-wide p1

    .line 101
    :cond_0
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw p1

    .line 97
    :cond_1
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 p2, 0x11

    invoke-direct {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw p1
.end method

.method public publish(Ljava/lang/String;[BLcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;)J
    .locals 1
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

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->publishMessage(Ljava/lang/String;[BI)J

    move-result-wide p1

    return-wide p1

    .line 142
    :cond_0
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw p1

    .line 138
    :cond_1
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 p2, 0x11

    invoke-direct {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw p1
.end method

.method public subscribe(Ljava/lang/String;)V
    .locals 1
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

    return-void

    .line 63
    :cond_0
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 v0, 0x21

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw p1

    .line 59
    :cond_1
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 v0, 0x11

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw p1
.end method
