.class Lcom/xiaopeng/xuiservice/operation/OperationHalService$5;
.super Ljava/lang/Object;
.source "OperationHalService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/operation/OperationHalService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    .line 1291
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$5;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$5;->val$pw:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$5;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 1304
    return-void
.end method

.method public onEvent(ILjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "event"    # Ljava/lang/String;

    .line 1294
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$5;->val$pw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete success! id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1296
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$5;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->removeEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    .line 1297
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$5;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1299
    :cond_0
    return-void
.end method
