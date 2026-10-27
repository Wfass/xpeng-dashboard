.class Lcom/qiyi/video/client/IQYSNative$2;
.super Ljava/lang/Object;
.source "IQYSNative.java"

# interfaces
.implements Lcom/qiyi/video/client/IQYSConnection$QYSConnectionStatusListener;


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

.field final synthetic val$reference:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/qiyi/video/client/IQYSNative;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qiyi/video/client/IQYSNative;

    .line 81
    iput-object p1, p0, Lcom/qiyi/video/client/IQYSNative$2;->this$0:Lcom/qiyi/video/client/IQYSNative;

    iput-object p2, p0, Lcom/qiyi/video/client/IQYSNative$2;->val$reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedStatusChanged(Lcom/qiyi/video/client/IQYSConnection;Z)V
    .locals 5
    .param p1, "connection"    # Lcom/qiyi/video/client/IQYSConnection;
    .param p2, "isConnected"    # Z

    .line 84
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative$2;->this$0:Lcom/qiyi/video/client/IQYSNative;

    invoke-static {v0}, Lcom/qiyi/video/client/IQYSNative;->access$300(Lcom/qiyi/video/client/IQYSNative;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    iget-object v1, p0, Lcom/qiyi/video/client/IQYSNative$2;->val$reference:Ljava/util/concurrent/atomic/AtomicReference;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 85
    .local v0, "isCur":Z
    :goto_0
    const-string v1, "IQYSNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register: onConnectedStatusChanged: ref="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qiyi/video/client/IQYSNative$2;->this$0:Lcom/qiyi/video/client/IQYSNative;

    iget-object v4, p0, Lcom/qiyi/video/client/IQYSNative$2;->val$reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v4}, Lcom/qiyi/video/client/IQYSNative;->access$200(Lcom/qiyi/video/client/IQYSNative;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",mRef="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qiyi/video/client/IQYSNative$2;->this$0:Lcom/qiyi/video/client/IQYSNative;

    iget-object v4, p0, Lcom/qiyi/video/client/IQYSNative$2;->this$0:Lcom/qiyi/video/client/IQYSNative;

    invoke-static {v4}, Lcom/qiyi/video/client/IQYSNative;->access$300(Lcom/qiyi/video/client/IQYSNative;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qiyi/video/client/IQYSNative;->access$200(Lcom/qiyi/video/client/IQYSNative;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",cur="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qiyi/video/qsrbase/QYSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz v0, :cond_2

    .line 87
    if-nez p2, :cond_1

    .line 88
    iget-object v1, p0, Lcom/qiyi/video/client/IQYSNative$2;->this$0:Lcom/qiyi/video/client/IQYSNative;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/qiyi/video/client/IQYSNative;->access$302(Lcom/qiyi/video/client/IQYSNative;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 89
    iget-object v1, p0, Lcom/qiyi/video/client/IQYSNative$2;->this$0:Lcom/qiyi/video/client/IQYSNative;

    iget-object v2, p0, Lcom/qiyi/video/client/IQYSNative$2;->this$0:Lcom/qiyi/video/client/IQYSNative;

    invoke-static {v2}, Lcom/qiyi/video/client/IQYSNative;->access$700(Lcom/qiyi/video/client/IQYSNative;)Lcom/qiyi/video/client/IQYSService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qiyi/video/client/IQYSNative;->access$502(Lcom/qiyi/video/client/IQYSNative;Lcom/qiyi/video/client/IQYSService;)Lcom/qiyi/video/client/IQYSService;

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/qiyi/video/client/IQYSNative$2;->this$0:Lcom/qiyi/video/client/IQYSNative;

    invoke-static {v1}, Lcom/qiyi/video/client/IQYSNative;->access$800(Lcom/qiyi/video/client/IQYSNative;)Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;

    move-result-object v1

    .line 92
    .local v1, "changedListener":Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;
    if-eqz v1, :cond_2

    .line 93
    invoke-interface {v1, p2}, Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;->onChanged(Z)V

    .line 96
    .end local v1    # "changedListener":Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;
    :cond_2
    return-void
.end method
