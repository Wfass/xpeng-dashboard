.class public Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;
.super Ljava/lang/Object;
.source "ConnectionEvent.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

.field private mProtocolReasonCode:I

.field private mReasonCode:I

.field private mServerUri:[B

.field private mType:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;->mProtocolReasonCode:I

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;->mType:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    return-void
.end method


# virtual methods
.method public channel()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    return-object v0
.end method

.method public channel(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    return-object p0
.end method

.method public messageContent()[B
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;->mServerUri:[B

    return-object v0
.end method

.method public messageId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public messageTopic()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public protocolReasonCode()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;->mProtocolReasonCode:I

    return v0
.end method

.method public protocolReasonCode(I)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;
    .locals 0

    .line 29
    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;->mProtocolReasonCode:I

    return-object p0
.end method

.method public reasonCode()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;->mReasonCode:I

    return v0
.end method

.method public reasonCode(I)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;
    .locals 0

    .line 24
    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;->mReasonCode:I

    return-object p0
.end method

.method public serverUri(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;
    .locals 0

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;->mServerUri:[B

    return-object p0
.end method

.method public type()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ConnectionEvent;->mType:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    return-object v0
.end method
