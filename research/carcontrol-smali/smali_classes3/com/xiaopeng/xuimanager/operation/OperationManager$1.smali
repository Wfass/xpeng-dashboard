.class Lcom/xiaopeng/xuimanager/operation/OperationManager$1;
.super Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;
.source "OperationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/operation/OperationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector<",
        "Lcom/xiaopeng/xuimanager/operation/IOperation;",
        "Lcom/xiaopeng/xuimanager/operation/OperationManager$ServiceEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/operation/OperationManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/operation/OperationManager;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager$1;->this$0:Lcom/xiaopeng/xuimanager/operation/OperationManager;

    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createServiceListener()Landroid/os/IInterface;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationManager$1;->createServiceListener()Lcom/xiaopeng/xuimanager/operation/OperationManager$ServiceEventListener;

    move-result-object v0

    return-object v0
.end method

.method protected createServiceListener()Lcom/xiaopeng/xuimanager/operation/OperationManager$ServiceEventListener;
    .locals 2

    .line 57
    new-instance v0, Lcom/xiaopeng/xuimanager/operation/OperationManager$ServiceEventListener;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager$1;->this$0:Lcom/xiaopeng/xuimanager/operation/OperationManager;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/operation/OperationManager$ServiceEventListener;-><init>(Lcom/xiaopeng/xuimanager/operation/OperationManager;)V

    return-object v0
.end method

.method protected bridge synthetic getService()Landroid/os/IInterface;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationManager$1;->getService()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v0

    return-object v0
.end method

.method protected getService()Lcom/xiaopeng/xuimanager/operation/IOperation;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager$1;->this$0:Lcom/xiaopeng/xuimanager/operation/OperationManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->access$000(Lcom/xiaopeng/xuimanager/operation/OperationManager;)Lcom/xiaopeng/xuimanager/operation/IOperation;

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

    .line 49
    check-cast p1, Lcom/xiaopeng/xuimanager/operation/IOperation;

    check-cast p2, Lcom/xiaopeng/xuimanager/operation/OperationManager$ServiceEventListener;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/operation/OperationManager$1;->registerServiceListener(Lcom/xiaopeng/xuimanager/operation/IOperation;Lcom/xiaopeng/xuimanager/operation/OperationManager$ServiceEventListener;)V

    return-void
.end method

.method protected registerServiceListener(Lcom/xiaopeng/xuimanager/operation/IOperation;Lcom/xiaopeng/xuimanager/operation/OperationManager$ServiceEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    invoke-interface {p1, p2}, Lcom/xiaopeng/xuimanager/operation/IOperation;->registerListener(Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;)V

    return-void
.end method

.method protected bridge synthetic unregisterServiceListener(Landroid/os/IInterface;Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    check-cast p1, Lcom/xiaopeng/xuimanager/operation/IOperation;

    check-cast p2, Lcom/xiaopeng/xuimanager/operation/OperationManager$ServiceEventListener;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/operation/OperationManager$1;->unregisterServiceListener(Lcom/xiaopeng/xuimanager/operation/IOperation;Lcom/xiaopeng/xuimanager/operation/OperationManager$ServiceEventListener;)V

    return-void
.end method

.method protected unregisterServiceListener(Lcom/xiaopeng/xuimanager/operation/IOperation;Lcom/xiaopeng/xuimanager/operation/OperationManager$ServiceEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    invoke-interface {p1, p2}, Lcom/xiaopeng/xuimanager/operation/IOperation;->unregisterListener(Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;)V

    return-void
.end method
