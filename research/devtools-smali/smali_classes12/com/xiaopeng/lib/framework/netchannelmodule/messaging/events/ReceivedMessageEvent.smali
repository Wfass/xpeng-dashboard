.class public Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;
.super Ljava/lang/Object;
.source "ReceivedMessageEvent.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

.field private mMessageBody:[B

.field private mTopic:Ljava/lang/String;

.field private mType:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;->mType:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    .line 18
    return-void
.end method


# virtual methods
.method public channel()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    return-object v0
.end method

.method public channel(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 39
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;
    .locals 0

    .line 26
    nop

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;->mMessageBody:[B

    .line 28
    return-object p0
.end method

.method public message([B)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;
    .locals 0

    .line 32
    nop

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;->mMessageBody:[B

    .line 34
    return-object p0
.end method

.method public messageContent()[B
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;->mMessageBody:[B

    return-object v0
.end method

.method public messageId()J
    .locals 2

    .line 64
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public messageTopic()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;->mTopic:Ljava/lang/String;

    return-object v0
.end method

.method public protocolReasonCode()I
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public reasonCode()I
    .locals 1

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public topic(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;->mTopic:Ljava/lang/String;

    .line 22
    return-object p0
.end method

.method public type()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReceivedMessageEvent;->mType:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    return-object v0
.end method
