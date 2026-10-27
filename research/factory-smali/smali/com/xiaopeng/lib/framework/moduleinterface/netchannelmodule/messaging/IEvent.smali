.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;
.super Ljava/lang/Object;
.source "IEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;
    }
.end annotation


# virtual methods
.method public abstract channel()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;
.end method

.method public abstract messageContent()[B
.end method

.method public abstract messageId()J
.end method

.method public abstract messageTopic()Ljava/lang/String;
.end method

.method public abstract protocolReasonCode()I
.end method

.method public abstract reasonCode()I
.end method

.method public abstract type()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;
.end method
