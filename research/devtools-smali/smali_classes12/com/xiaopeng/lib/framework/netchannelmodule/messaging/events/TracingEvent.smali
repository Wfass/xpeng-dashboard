.class public Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;
.super Ljava/lang/Object;
.source "TracingEvent.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

.field private mMessage:[B

.field private mType:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->TRACE:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;->mType:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    .line 19
    return-void
.end method


# virtual methods
.method public channel()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    return-object v0
.end method

.method public channel(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 35
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;
    .locals 0

    .line 22
    nop

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;->mMessage:[B

    .line 24
    return-object p0
.end method

.method public message([B)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;
    .locals 0

    .line 28
    nop

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;->mMessage:[B

    .line 30
    return-object p0
.end method

.method public messageContent()[B
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;->mMessage:[B

    return-object v0
.end method

.method public messageId()J
    .locals 2

    .line 55
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public messageTopic()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public protocolReasonCode()I
    .locals 1

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public reasonCode()I
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public type()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/TracingEvent;->mType:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    return-object v0
.end method
