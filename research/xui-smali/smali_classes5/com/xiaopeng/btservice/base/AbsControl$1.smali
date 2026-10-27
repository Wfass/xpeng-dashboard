.class Lcom/xiaopeng/btservice/base/AbsControl$1;
.super Lcom/xiaopeng/btservice/base/AbstractConnection;
.source "AbsControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/btservice/base/AbsControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/btservice/base/AbsControl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/btservice/base/AbsControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/btservice/base/AbsControl;

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/btservice/base/AbsControl$1;->this$0:Lcom/xiaopeng/btservice/base/AbsControl;

    invoke-direct {p0}, Lcom/xiaopeng/btservice/base/AbstractConnection;-><init>()V

    return-void
.end method

.method private notifyConnecteCompletedCallback()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/btservice/base/AbsControl$1;->this$0:Lcom/xiaopeng/btservice/base/AbsControl;

    iget-object v0, v0, Lcom/xiaopeng/btservice/base/AbsControl;->mConnectCompletedCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/base/AbsControl$1;->this$0:Lcom/xiaopeng/btservice/base/AbsControl;

    iget-object v1, v1, Lcom/xiaopeng/btservice/base/AbsControl;->mConnectCompletedCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/btservice/base/AbstractConnection$ConnecteCompletedCallback;

    .line 45
    .local v2, "callback":Lcom/xiaopeng/btservice/base/AbstractConnection$ConnecteCompletedCallback;
    invoke-interface {v2}, Lcom/xiaopeng/btservice/base/AbstractConnection$ConnecteCompletedCallback;->connectServiceCompleted()V

    .line 46
    .end local v2    # "callback":Lcom/xiaopeng/btservice/base/AbstractConnection$ConnecteCompletedCallback;
    goto :goto_0

    .line 47
    :cond_0
    monitor-exit v0

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onDisconnected()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/btservice/base/AbsControl$1;->this$0:Lcom/xiaopeng/btservice/base/AbsControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/base/AbsControl;->release()V

    .line 64
    return-void
.end method

.method public register(Lcom/nforetek/bt/aidl/UiCommand;)V
    .locals 1
    .param p1, "nForeService"    # Lcom/nforetek/bt/aidl/UiCommand;

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/btservice/base/AbsControl$1;->this$0:Lcom/xiaopeng/btservice/base/AbsControl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/base/AbsControl;->registerCallback(Lcom/nforetek/bt/aidl/UiCommand;)V

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/btservice/base/AbsControl$1;->notifyConnecteCompletedCallback()V

    .line 54
    return-void
.end method

.method public registerConnecteCompletedCallback(Lcom/xiaopeng/btservice/base/AbstractConnection$ConnecteCompletedCallback;)V
    .locals 2
    .param p1, "connecteCompleted"    # Lcom/xiaopeng/btservice/base/AbstractConnection$ConnecteCompletedCallback;

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/btservice/base/AbsControl$1;->this$0:Lcom/xiaopeng/btservice/base/AbsControl;

    iget-object v0, v0, Lcom/xiaopeng/btservice/base/AbsControl;->mConnectCompletedCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/base/AbsControl$1;->this$0:Lcom/xiaopeng/btservice/base/AbsControl;

    iget-object v1, v1, Lcom/xiaopeng/btservice/base/AbsControl;->mConnectCompletedCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 32
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unRegister()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/btservice/base/AbsControl$1;->this$0:Lcom/xiaopeng/btservice/base/AbsControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/base/AbsControl;->release()V

    .line 59
    return-void
.end method

.method public unregisterConnecteCompletedCallback(Lcom/xiaopeng/btservice/base/AbstractConnection$ConnecteCompletedCallback;)V
    .locals 2
    .param p1, "connecteCompleted"    # Lcom/xiaopeng/btservice/base/AbstractConnection$ConnecteCompletedCallback;

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/btservice/base/AbsControl$1;->this$0:Lcom/xiaopeng/btservice/base/AbsControl;

    iget-object v0, v0, Lcom/xiaopeng/btservice/base/AbsControl;->mConnectCompletedCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/base/AbsControl$1;->this$0:Lcom/xiaopeng/btservice/base/AbsControl;

    iget-object v1, v1, Lcom/xiaopeng/btservice/base/AbsControl;->mConnectCompletedCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
