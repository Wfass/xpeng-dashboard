.class Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$1;
.super Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;
.source "SysConfigManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector<",
        "Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;",
        "Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$SysConfigListenerToService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$1;->this$0:Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;

    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createServiceListener()Landroid/os/IInterface;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$1;->createServiceListener()Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$SysConfigListenerToService;

    move-result-object v0

    return-object v0
.end method

.method protected createServiceListener()Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$SysConfigListenerToService;
    .locals 2

    .line 39
    new-instance v0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$SysConfigListenerToService;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$1;->this$0:Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$SysConfigListenerToService;-><init>(Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;)V

    return-object v0
.end method

.method protected bridge synthetic getService()Landroid/os/IInterface;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$1;->getService()Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getService()Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$1;->this$0:Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->access$100(Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;)Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic registerServiceListener(Landroid/os/IInterface;Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    check-cast p1, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;

    check-cast p2, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$SysConfigListenerToService;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$1;->registerServiceListener(Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$SysConfigListenerToService;)V

    return-void
.end method

.method protected registerServiceListener(Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$SysConfigListenerToService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    invoke-interface {p1, p2}, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;->registerSysConfigListener(Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;)V

    return-void
.end method

.method protected bridge synthetic unregisterServiceListener(Landroid/os/IInterface;Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    check-cast p1, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;

    check-cast p2, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$SysConfigListenerToService;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$1;->unregisterServiceListener(Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$SysConfigListenerToService;)V

    return-void
.end method

.method protected unregisterServiceListener(Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$SysConfigListenerToService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    invoke-interface {p1, p2}, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;->unregisterSysConfigListener(Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;)V

    return-void
.end method
