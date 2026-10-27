.class Lcom/xiaopeng/xuimanager/operation/OperationManager$ServiceEventListener;
.super Lcom/xiaopeng/xuimanager/operation/IOperationEventListener$Stub;
.source "OperationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/operation/OperationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceEventListener"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/operation/OperationManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/operation/OperationManager;)V
    .locals 1

    .line 647
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/operation/IOperationEventListener$Stub;-><init>()V

    .line 648
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager$ServiceEventListener;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager$ServiceEventListener;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/operation/OperationManager;

    if-eqz v0, :cond_0

    .line 655
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->access$400(Lcom/xiaopeng/xuimanager/operation/OperationManager;II)V

    :cond_0
    return-void
.end method

.method public onEvent(ILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager$ServiceEventListener;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/operation/OperationManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent code :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " &type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OperationManager"

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-static {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->access$500(Lcom/xiaopeng/xuimanager/operation/OperationManager;ILjava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
