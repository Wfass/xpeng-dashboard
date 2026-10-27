.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging;
.super Ljava/lang/Object;
.source "IMessaging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;,
        Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;
    }
.end annotation


# static fields
.field public static final DEFAULT_MESSAGE_ID:J


# virtual methods
.method public abstract available()Z
.end method

.method public abstract initChannelWithContext(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;Landroid/app/Application;)V
.end method

.method public abstract initChannelWithContext(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;Landroid/content/Context;)V
.end method

.method public abstract publish(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public abstract publish(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;)J
.end method

.method public abstract publish(Ljava/lang/String;[B)J
.end method

.method public abstract publish(Ljava/lang/String;[BLcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;)J
.end method

.method public abstract subscribe(Ljava/lang/String;)V
.end method
