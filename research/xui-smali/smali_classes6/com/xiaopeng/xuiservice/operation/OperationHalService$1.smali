.class Lcom/xiaopeng/xuiservice/operation/OperationHalService$1;
.super Ljava/lang/Object;
.source "OperationHalService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/operation/OperationHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    .line 155
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$1;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSyncCompleted(ILcom/xiaopeng/xuimanager/operation/OperationSyncResult;)V
    .locals 3
    .param p1, "resourceType"    # I
    .param p2, "syncResult"    # Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    .line 159
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncCompleted resourceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", syncResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$1;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$200(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 161
    return-void
.end method
