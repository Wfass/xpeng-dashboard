.class Lcom/xiaopeng/speech/ConnectManager$2;
.super Ljava/lang/Object;
.source "ConnectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/ConnectManager;->queryBinder(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/ConnectManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/ConnectManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/ConnectManager;

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/speech/ConnectManager$2;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager$2;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    invoke-static {v0}, Lcom/xiaopeng/speech/ConnectManager;->access$200(Lcom/xiaopeng/speech/ConnectManager;)Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 106
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 107
    iget-object v1, p0, Lcom/xiaopeng/speech/ConnectManager$2;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    invoke-static {v1}, Lcom/xiaopeng/speech/ConnectManager;->access$000(Lcom/xiaopeng/speech/ConnectManager;)Lcom/xiaopeng/speech/ISpeechEngine;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/speech/ConnectManager$2;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    invoke-static {v1}, Lcom/xiaopeng/speech/ConnectManager;->access$000(Lcom/xiaopeng/speech/ConnectManager;)Lcom/xiaopeng/speech/ISpeechEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaopeng/speech/ISpeechEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/speech/ConnectManager$2;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    invoke-static {v1}, Lcom/xiaopeng/speech/ConnectManager;->access$000(Lcom/xiaopeng/speech/ConnectManager;)Lcom/xiaopeng/speech/ISpeechEngine;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/speech/ConnectManager$2$1;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/speech/ConnectManager$2$1;-><init>(Lcom/xiaopeng/speech/ConnectManager$2;[Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lcom/xiaopeng/speech/ISpeechEngine;->addInitCallback(Lcom/xiaopeng/speech/IInitCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Landroid/os/RemoteException;
    instance-of v2, v1, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    .line 120
    const-string v2, "DeadObjectException caught, reconnecting..."

    invoke-static {v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcom/xiaopeng/speech/ConnectManager$2;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/ConnectManager;->access$300(Lcom/xiaopeng/speech/ConnectManager;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/String;)V

    .line 128
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->getInstance()Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->onServiceConnect()V

    .line 129
    return-void
.end method
