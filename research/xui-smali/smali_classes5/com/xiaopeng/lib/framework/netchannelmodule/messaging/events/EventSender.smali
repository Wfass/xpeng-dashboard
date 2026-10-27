.class public Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;
.super Ljava/lang/Object;
.source "EventSender.java"


# static fields
.field private static final THREAD_NAME:Ljava/lang/String; = "EventSender"

.field private static mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

.field private static volatile sCurrentSender:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;


# instance fields
.field private mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->sCurrentSender:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;)V
    .locals 2
    .param p1, "channel"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 30
    sput-object p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->sCurrentSender:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;

    .line 32
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    const-string v1, "EventSender"

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    .line 33
    return-void
.end method

.method public static getCurrent()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;
    .locals 1

    .line 25
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->sCurrentSender:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;

    return-object v0
.end method

.method private post(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;

    .line 130
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->post(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method

.method private postAtFront(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;

    .line 140
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender$2;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->postAtFront(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method


# virtual methods
.method public changeChannel(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;)V
    .locals 0
    .param p1, "channel"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 37
    return-void
.end method

.method public close()V
    .locals 1

    .line 125
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->stop()V

    .line 126
    return-void
.end method

.method public postConnected(Ljava/lang/String;)V
    .locals 2
    .param p1, "serverUrl"    # Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->CONNECTED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;)V

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 77
    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;->channel(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;->serverUri(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;

    move-result-object v0

    .line 79
    .local v0, "event":Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->postAtFront(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V

    .line 80
    return-void
.end method

.method public postDeliveryCompleted(J)V
    .locals 2
    .param p1, "messageId"    # J

    .line 53
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->DELIVERY_COMPLETED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;)V

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 54
    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;->channel(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;->messageId(J)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;

    move-result-object v0

    .line 56
    .local v0, "event":Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->post(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V

    .line 57
    return-void
.end method

.method public postDeliveryCompleted(J[B)V
    .locals 2
    .param p1, "messageId"    # J
    .param p3, "message"    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->DELIVERY_COMPLETED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;)V

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 46
    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;->channel(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;->messageId(J)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;

    move-result-object v0

    .line 48
    invoke-virtual {v0, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;->message([B)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;

    move-result-object v0

    .line 49
    .local v0, "event":Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->post(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V

    .line 50
    return-void
.end method

.method public postDeliveryFailure(JI)V
    .locals 2
    .param p1, "messageId"    # J
    .param p3, "reasonCode"    # I

    .line 60
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->DELIVERY_FAILURE:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;)V

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 61
    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;->channel(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;->messageId(J)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;->reasonCode(I)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;

    move-result-object v0

    .line 64
    .local v0, "event":Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->post(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V

    .line 65
    return-void
.end method

.method public postDisconnected(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "cause"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "reasonCode":I
    move v1, v0

    .line 85
    .local v1, "protocolReasonCode":I
    const/4 v2, 0x0

    .line 86
    .local v2, "errMsg":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 88
    instance-of v3, p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz v3, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 90
    move-object v3, p1

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getReasonCode()I

    move-result v1

    goto :goto_0

    .line 91
    :cond_0
    instance-of v3, p1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;

    if-eqz v3, :cond_1

    .line 92
    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;

    invoke-virtual {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;->getReasonCode()I

    move-result v0

    .line 96
    :cond_1
    :goto_0
    new-instance v3, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;

    sget-object v4, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->DISCONNECTED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    invoke-direct {v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;)V

    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 97
    invoke-virtual {v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;->channel(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;

    move-result-object v3

    .line 98
    invoke-virtual {v3, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;->reasonCode(I)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;

    move-result-object v3

    if-nez v2, :cond_2

    const-string v4, ""

    goto :goto_1

    .line 99
    :cond_2
    move-object v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;->serverUri(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;

    move-result-object v3

    .line 100
    invoke-virtual {v3, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;->protocolReasonCode(I)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;

    move-result-object v3

    .line 101
    .local v3, "event":Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;
    invoke-direct {p0, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->postAtFront(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V

    .line 102
    return-void
.end method

.method public postReceivedMessage(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "message"    # [B

    .line 68
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->RECEIVED_MESSAGE:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;)V

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 69
    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;->channel(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;->topic(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;->message([B)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;

    move-result-object v0

    .line 72
    .local v0, "event":Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->postAtFront(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V

    .line 73
    return-void
.end method

.method public postSubscribed(Ljava/lang/String;)V
    .locals 2
    .param p1, "topic"    # Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/SubscribeEvent;

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->SUBSCRIBED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/SubscribeEvent;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;)V

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 106
    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/SubscribeEvent;->channel(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/SubscribeEvent;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/SubscribeEvent;->topic(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/SubscribeEvent;

    move-result-object v0

    .line 108
    .local v0, "event":Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/SubscribeEvent;
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->post(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V

    .line 109
    return-void
.end method

.method public postTracingLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 118
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 119
    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;->channel(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;->message(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;

    move-result-object v0

    .line 121
    .local v0, "event":Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->post(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V

    .line 122
    return-void
.end method

.method public postUnsubscribed()V
    .locals 2

    .line 112
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/SubscribeEvent;

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->UNSUBSCRIBED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/SubscribeEvent;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;)V

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 113
    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/SubscribeEvent;->channel(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/SubscribeEvent;

    move-result-object v0

    .line 114
    .local v0, "event":Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/SubscribeEvent;
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->post(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V

    .line 115
    return-void
.end method
