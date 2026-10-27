.class Lcom/xiaopeng/xuiservice/operation/OperationHalService$3;
.super Ljava/lang/Object;
.source "OperationHalService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/operation/OperationHalService;->registerStoreDownloadListener()V
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

    .line 1132
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$3;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCancel(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 2
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 1159
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$3;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$200(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1160
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1161
    return-void
.end method

.method public onDownloadCompleted(Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/String;)V
    .locals 1
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 1148
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$3;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->addNewResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/String;)I

    .line 1149
    return-void
.end method

.method public onDownloadError(Lcom/xiaopeng/xuimanager/operation/OperationResource;I)V
    .locals 3
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .param p2, "reason"    # I

    .line 1165
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$3;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$200(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x14

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1166
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1167
    return-void
.end method

.method public onDownloadInProgress(Lcom/xiaopeng/xuimanager/operation/OperationResource;F)V
    .locals 3
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .param p2, "progress"    # F

    .line 1142
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$3;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$200(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x11

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1143
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1144
    return-void
.end method

.method public onDownloadPaused(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 2
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 1153
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$3;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$200(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1154
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1155
    return-void
.end method

.method public onDownloadStart(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 2
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 1136
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$3;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$200(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1137
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1138
    return-void
.end method
