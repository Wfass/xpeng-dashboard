.class final Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$EventCallbackHandler;
.super Landroid/os/Handler;
.source "SysConfigManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventCallbackHandler"
.end annotation


# instance fields
.field mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;Landroid/os/Looper;)V
    .locals 0

    .line 97
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 98
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$EventCallbackHandler;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$EventCallbackHandler;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 110
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->access$400(Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;)Lcom/xiaopeng/xuimanager/sysconfig/SysConfigListenerRegisterAndNotify;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigListenerRegisterAndNotify;->onSysConfigUpdated(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
