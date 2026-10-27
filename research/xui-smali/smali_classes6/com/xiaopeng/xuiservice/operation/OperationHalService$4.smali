.class Lcom/xiaopeng/xuiservice/operation/OperationHalService$4;
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

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    .line 1242
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$4;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$4;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$4;->val$pw:Ljava/io/PrintWriter;

    iput-object p4, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$4;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 1261
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$4;->val$pw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", operation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1262
    return-void
.end method

.method public onEvent(ILjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "_id"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "event"    # Ljava/lang/String;

    .line 1245
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$4;->val$id:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1248
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1249
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$4;->val$pw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add success! id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$4;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1250
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$4;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->removeEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    .line 1251
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$4;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 1252
    :cond_1
    const/16 v0, 0xe

    if-ne p1, v0, :cond_2

    .line 1253
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$4;->val$pw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update success! id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$4;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1254
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$4;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->removeEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    .line 1255
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$4;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1257
    :cond_2
    :goto_0
    return-void

    .line 1246
    :cond_3
    :goto_1
    return-void
.end method
