.class Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$2;
.super Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;
.source "XuiSrManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector<",
        "Lcom/xiaopeng/xuimanager/sr/ISr;",
        "Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$ISrListenerToService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$2;->this$0:Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;

    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createServiceListener()Landroid/os/IInterface;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$2;->createServiceListener()Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$ISrListenerToService;

    move-result-object v0

    return-object v0
.end method

.method protected createServiceListener()Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$ISrListenerToService;
    .locals 2

    .line 46
    new-instance v0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$ISrListenerToService;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$2;->this$0:Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$ISrListenerToService;-><init>(Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;)V

    return-object v0
.end method

.method protected bridge synthetic getService()Landroid/os/IInterface;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$2;->getService()Lcom/xiaopeng/xuimanager/sr/ISr;

    move-result-object v0

    return-object v0
.end method

.method protected getService()Lcom/xiaopeng/xuimanager/sr/ISr;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$2;->this$0:Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->access$100(Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;)Lcom/xiaopeng/xuimanager/sr/ISr;

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

    .line 38
    check-cast p1, Lcom/xiaopeng/xuimanager/sr/ISr;

    check-cast p2, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$ISrListenerToService;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$2;->registerServiceListener(Lcom/xiaopeng/xuimanager/sr/ISr;Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$ISrListenerToService;)V

    return-void
.end method

.method protected registerServiceListener(Lcom/xiaopeng/xuimanager/sr/ISr;Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$ISrListenerToService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    invoke-interface {p1, p2}, Lcom/xiaopeng/xuimanager/sr/ISr;->registerSrListener(Lcom/xiaopeng/xuimanager/sr/ISrListener;)V

    return-void
.end method

.method protected bridge synthetic unregisterServiceListener(Landroid/os/IInterface;Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    check-cast p1, Lcom/xiaopeng/xuimanager/sr/ISr;

    check-cast p2, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$ISrListenerToService;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$2;->unregisterServiceListener(Lcom/xiaopeng/xuimanager/sr/ISr;Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$ISrListenerToService;)V

    return-void
.end method

.method protected unregisterServiceListener(Lcom/xiaopeng/xuimanager/sr/ISr;Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$ISrListenerToService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    invoke-interface {p1, p2}, Lcom/xiaopeng/xuimanager/sr/ISr;->unregisterSrListener(Lcom/xiaopeng/xuimanager/sr/ISrListener;)V

    return-void
.end method
