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
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 30
    sput-object p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->sCurrentSender:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;

    .line 32
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    const-string v0, "EventSender"

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;-><init>(Ljava/lang/String;)V

    sput-object p1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

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

    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->postAtFront(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V

    .line 80
    return-void
.end method

.method public postDeliveryCompleted(J)V
    .locals 2

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

    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->post(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V

    .line 57
    return-void
.end method

.method public postDeliveryCompleted(J[B)V
    .locals 2
    .param p3    # [B
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

    move-result-object p1

    .line 48
    invoke-virtual {p1, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;->message([B)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;

    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->post(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V

    .line 50
    return-void
.end method

.method public postDeliveryFailure(JI)V
    .locals 2

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

    move-result-object p1

    .line 63
    invoke-virtual {p1, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;->reasonCode(I)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;

    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->post(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V

    .line 65
    return-void
.end method

.method public postDisconnected(Ljava/lang/Throwable;)V
    .locals 5
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 83
    nop

    .line 84
    nop

    .line 85
    nop

    .line 86
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 88
    instance-of v2, p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz v2, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 90
    check-cast p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getReasonCode()I

    move-result p1

    goto :goto_0

    .line 91
    :cond_0
    instance-of v2, p1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;

    if-eqz v2, :cond_2

    .line 92
    check-cast p1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;->getReasonCode()I

    move-result p1

    .line 96
    move v4, v0

    move v0, p1

    move p1, v4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    move p1, v0

    :goto_0
    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;

    sget-object v3, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->DISCONNECTED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    invoke-direct {v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;)V

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 97
    invoke-virtual {v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;->channel(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;

    move-result-object v2

    .line 98
    invoke-virtual {v2, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;->reasonCode(I)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;

    move-result-object v0

    if-nez v1, :cond_3

    const-string v1, ""

    .line 99
    :cond_3
    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;->serverUri(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;->protocolReasonCode(I)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;

    move-result-object p1

    .line 101
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->postAtFront(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V

    .line 102
    return-void
.end method

.method public postReceivedMessage(Ljava/lang/String;[B)V
    .locals 2

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

    move-result-object p1

    .line 71
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;->message([B)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;

    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->postAtFront(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V

    .line 73
    return-void
.end method

.method public postSubscribed(Ljava/lang/String;)V
    .locals 2

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

    move-result-object p1

    .line 108
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->post(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V

    .line 109
    return-void
.end method

.method public postTracingLog(Ljava/lang/String;)V
    .locals 2

    .line 118
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 119
    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;->channel(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;->message(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;

    move-result-object p1

    .line 121
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->post(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V

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
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->post(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V

    .line 115
    return-void
.end method
