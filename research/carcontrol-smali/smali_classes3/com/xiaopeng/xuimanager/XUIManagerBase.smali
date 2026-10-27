.class public interface abstract Lcom/xiaopeng/xuimanager/XUIManagerBase;
.super Ljava/lang/Object;
.source "XUIManagerBase.java"


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public onServerDisconnected()V
    .locals 0

    return-void
.end method

.method public onXUIConnected(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public abstract onXUIDisconnected()V
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
