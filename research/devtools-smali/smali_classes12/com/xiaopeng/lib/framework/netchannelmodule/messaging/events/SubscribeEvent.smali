.class public Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/SubscribeEvent;
.super Ljava/lang/Object;
.source "SubscribeEvent.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;


# instance fields
.field private mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

.field private mTopic:Ljava/lang/String;

.field private mType:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/SubscribeEvent;->mType:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    .line 19
    return-void
.end method


# virtual methods
.method public channel()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/SubscribeEvent;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    return-object v0
.end method

.method public channel(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/SubscribeEvent;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/SubscribeEvent;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 28
    return-object p0
.end method

.method public messageContent()[B
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public messageId()J
    .locals 2

    .line 53
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public messageTopic()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/SubscribeEvent;->mTopic:Ljava/lang/String;

    return-object v0
.end method

.method public protocolReasonCode()I
    .locals 1

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public reasonCode()I
    .locals 1

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public topic(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/SubscribeEvent;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/SubscribeEvent;->mTopic:Ljava/lang/String;

    .line 23
    return-object p0
.end method

.method public type()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/SubscribeEvent;->mType:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    return-object v0
.end method
