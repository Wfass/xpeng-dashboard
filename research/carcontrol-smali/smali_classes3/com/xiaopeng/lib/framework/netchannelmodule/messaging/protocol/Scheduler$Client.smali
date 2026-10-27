.class public interface abstract Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;
.super Ljava/lang/Object;
.source "Scheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Client"
.end annotation


# virtual methods
.method public abstract disconnect()V
.end method

.method public abstract disconnectedDueToException(Ljava/lang/Throwable;)V
.end method

.method public abstract scheduleReopen()V
.end method

.method public abstract startBackgroundReconnection(I)V
.end method

.method public abstract startConnectImmediately(I)V
.end method

.method public abstract startExtremePingSender()V
.end method

.method public abstract stopBackgroundReconnection()V
.end method

.method public abstract stopExtremePingSender()V
.end method

.method public abstract stopReopenAction()V
.end method
