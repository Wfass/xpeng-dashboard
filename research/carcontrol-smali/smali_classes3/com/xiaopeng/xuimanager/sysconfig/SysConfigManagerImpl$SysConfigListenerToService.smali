.class Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$SysConfigListenerToService;
.super Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener$Stub;
.source "SysConfigManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SysConfigListenerToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener$Stub;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$SysConfigListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onSysConfigChanged(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$SysConfigListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;

    if-eqz v0, :cond_0

    .line 86
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->access$300(Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
