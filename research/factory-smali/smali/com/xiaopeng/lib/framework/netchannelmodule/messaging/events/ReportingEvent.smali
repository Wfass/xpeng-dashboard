.class public Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;
.super Ljava/lang/Object;
.source "ReportingEvent.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;


# instance fields
.field private mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

.field private mMessageBody:[B

.field private mMessageId:J

.field private mProtocolReasonCode:I

.field private mReasonCode:I

.field private mType:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;)V
    .locals 0
    .param p1, "eventType"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;->mType:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    .line 21
    return-void
.end method


# virtual methods
.method public channel()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    return-object v0
.end method

.method public channel(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;
    .locals 0
    .param p1, "channel"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;->mChannel:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 45
    return-object p0
.end method

.method public message([B)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;
    .locals 0
    .param p1, "body"    # [B

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;->mMessageBody:[B

    .line 35
    return-object p0
.end method

.method public messageContent()[B
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;->mMessageBody:[B

    return-object v0
.end method

.method public messageId()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;->mMessageId:J

    return-wide v0
.end method

.method public messageId(J)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;
    .locals 0
    .param p1, "id"    # J

    .line 29
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;->mMessageId:J

    .line 30
    return-object p0
.end method

.method public messageTopic()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public protocolReasonCode()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;->mProtocolReasonCode:I

    return v0
.end method

.method public protocolReasonCode(I)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;
    .locals 0
    .param p1, "code"    # I

    .line 39
    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;->mProtocolReasonCode:I

    .line 40
    return-object p0
.end method

.method public reasonCode()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;->mReasonCode:I

    return v0
.end method

.method public reasonCode(I)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;
    .locals 0
    .param p1, "code"    # I

    .line 24
    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;->mReasonCode:I

    .line 25
    return-object p0
.end method

.method public type()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/ReportingEvent;->mType:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    return-object v0
.end method
