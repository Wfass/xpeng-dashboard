.class Lcom/qiyi/video/client/IQYSNative$1;
.super Ljava/lang/Object;
.source "IQYSNative.java"

# interfaces
.implements Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiyi/video/client/IQYSNative;->register(Landroid/content/Context;Lcom/qiyi/video/client/IQYSManager$RegisterListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiyi/video/client/IQYSNative;

.field final synthetic val$connection:Lcom/qiyi/video/client/IQYSConnection;

.field final synthetic val$reference:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/qiyi/video/client/IQYSNative;Ljava/util/concurrent/atomic/AtomicReference;Lcom/qiyi/video/client/IQYSConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qiyi/video/client/IQYSNative;

    .line 62
    iput-object p1, p0, Lcom/qiyi/video/client/IQYSNative$1;->this$0:Lcom/qiyi/video/client/IQYSNative;

    iput-object p2, p0, Lcom/qiyi/video/client/IQYSNative$1;->val$reference:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/qiyi/video/client/IQYSNative$1;->val$connection:Lcom/qiyi/video/client/IQYSConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/qiyi/video/qys/IQYSResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/qiyi/video/qys/IQYSResponse;

    .line 65
    const-string v0, "IQYSNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register: onResult ref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qiyi/video/client/IQYSNative$1;->this$0:Lcom/qiyi/video/client/IQYSNative;

    iget-object v3, p0, Lcom/qiyi/video/client/IQYSNative$1;->val$reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v3}, Lcom/qiyi/video/client/IQYSNative;->access$200(Lcom/qiyi/video/client/IQYSNative;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qiyi/video/qsrbase/QYSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative$1;->this$0:Lcom/qiyi/video/client/IQYSNative;

    invoke-static {v0}, Lcom/qiyi/video/client/IQYSNative;->access$300(Lcom/qiyi/video/client/IQYSNative;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    iget-object v1, p0, Lcom/qiyi/video/client/IQYSNative$1;->val$reference:Ljava/util/concurrent/atomic/AtomicReference;

    if-eq v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative$1;->val$connection:Lcom/qiyi/video/client/IQYSConnection;

    invoke-virtual {v0}, Lcom/qiyi/video/client/IQYSConnection;->disConnect()V

    .line 68
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative$1;->this$0:Lcom/qiyi/video/client/IQYSNative;

    iget-object v1, p0, Lcom/qiyi/video/client/IQYSNative$1;->val$reference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, -0x2

    const-string v3, "service disconnected already"

    invoke-static {v0, v1, v2, v3}, Lcom/qiyi/video/client/IQYSNative;->access$400(Lcom/qiyi/video/client/IQYSNative;Ljava/lang/Object;ILjava/lang/String;)V

    .line 69
    return-void

    .line 71
    :cond_0
    iget v0, p1, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 72
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative$1;->this$0:Lcom/qiyi/video/client/IQYSNative;

    new-instance v1, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;

    iget-object v2, p0, Lcom/qiyi/video/client/IQYSNative$1;->val$connection:Lcom/qiyi/video/client/IQYSConnection;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;-><init>(Lcom/qiyi/video/client/IQYSConnection;Lcom/qiyi/video/client/IQYSNative$1;)V

    invoke-static {v0, v1}, Lcom/qiyi/video/client/IQYSNative;->access$502(Lcom/qiyi/video/client/IQYSNative;Lcom/qiyi/video/client/IQYSService;)Lcom/qiyi/video/client/IQYSService;

    .line 73
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative$1;->val$reference:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/qiyi/video/client/IQYSNative$1;->val$connection:Lcom/qiyi/video/client/IQYSConnection;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative$1;->this$0:Lcom/qiyi/video/client/IQYSNative;

    iget-object v1, p0, Lcom/qiyi/video/client/IQYSNative$1;->val$reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v1}, Lcom/qiyi/video/client/IQYSNative;->access$600(Lcom/qiyi/video/client/IQYSNative;Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative$1;->this$0:Lcom/qiyi/video/client/IQYSNative;

    invoke-virtual {v0}, Lcom/qiyi/video/client/IQYSNative;->unRegister()V

    .line 77
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative$1;->this$0:Lcom/qiyi/video/client/IQYSNative;

    iget-object v1, p0, Lcom/qiyi/video/client/IQYSNative$1;->val$reference:Ljava/util/concurrent/atomic/AtomicReference;

    iget v2, p1, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    iget-object v3, p1, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    invoke-interface {v3}, Lcom/qiyi/video/qys/IQYSStringWrapper;->get()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/qiyi/video/client/IQYSNative;->access$400(Lcom/qiyi/video/client/IQYSNative;Ljava/lang/Object;ILjava/lang/String;)V

    .line 79
    :goto_0
    return-void
.end method
