.class Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$2;
.super Ljava/lang/Object;
.source "IQYSConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;


# direct methods
.method constructor <init>(Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;)V
    .locals 0
    .param p1, "this$1"    # Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    .line 165
    iput-object p1, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$2;->this$1:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 168
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$2;->this$1:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    iget-object v0, v0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected time out: isDirty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$2;->this$1:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    invoke-static {v2}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->access$000(Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$2;->this$1:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    invoke-virtual {v0}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->stopConnectedTimeOutCheck()V

    .line 170
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$2;->this$1:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    invoke-static {v0}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->access$000(Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$2;->this$1:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    invoke-static {v0}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->access$200(Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 172
    .local v0, "needCallbackFailure":Z
    iget-object v1, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$2;->this$1:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    invoke-static {v1}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->access$200(Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$2;->this$1:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    iget-object v1, v1, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->this$0:Lcom/qiyi/video/client/IQYSConnection;

    iget-object v2, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$2;->this$1:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    invoke-static {v1, v2}, Lcom/qiyi/video/client/IQYSConnection;->access$300(Lcom/qiyi/video/client/IQYSConnection;Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;)V

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$2;->this$1:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    iget-object v1, v1, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->this$0:Lcom/qiyi/video/client/IQYSConnection;

    iget-object v2, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$2;->this$1:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    iget-object v2, v2, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->this$0:Lcom/qiyi/video/client/IQYSConnection;

    invoke-static {v2}, Lcom/qiyi/video/client/IQYSConnection;->access$400(Lcom/qiyi/video/client/IQYSConnection;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qiyi/video/client/IQYSConnection;->access$500(Lcom/qiyi/video/client/IQYSConnection;Landroid/content/Context;)V

    .line 176
    iget-object v1, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$2;->this$1:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    iget-object v1, v1, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$2;->this$1:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    iget-object v2, v2, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->mRetryConnect:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    .line 182
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 183
    iget-object v1, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$2;->this$1:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    iget-object v1, v1, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->this$0:Lcom/qiyi/video/client/IQYSConnection;

    invoke-static {v1}, Lcom/qiyi/video/client/IQYSConnection;->access$600(Lcom/qiyi/video/client/IQYSConnection;)Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;

    move-result-object v1

    .line 184
    .local v1, "listener":Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;
    if-eqz v1, :cond_1

    .line 185
    new-instance v2, Lcom/qiyi/video/qys/IQYSResponse;

    invoke-direct {v2}, Lcom/qiyi/video/qys/IQYSResponse;-><init>()V

    .line 186
    .local v2, "response":Lcom/qiyi/video/qys/IQYSResponse;
    const/4 v3, -0x8

    iput v3, v2, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    .line 187
    new-instance v3, Lcom/qiyi/video/qys/IQYSString;

    const-string v4, "connect failure, connect time out"

    invoke-direct {v3, v4}, Lcom/qiyi/video/qys/IQYSString;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 188
    invoke-interface {v1, v2}, Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;->onResult(Lcom/qiyi/video/qys/IQYSResponse;)V

    .line 192
    .end local v0    # "needCallbackFailure":Z
    .end local v1    # "listener":Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;
    .end local v2    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    :cond_1
    return-void
.end method
