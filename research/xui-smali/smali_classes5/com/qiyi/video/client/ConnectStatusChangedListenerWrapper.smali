.class Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;
.super Ljava/lang/Object;
.source "ConnectStatusChangedListenerWrapper.java"

# interfaces
.implements Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;


# instance fields
.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;->mList:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;->mProcessList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;

    .line 12
    iget-object v0, p0, Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;->mList:Ljava/util/List;

    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 14
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onChanged(Z)V
    .locals 3
    .param p1, "isConnected"    # Z

    .line 25
    iget-object v0, p0, Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;->mList:Ljava/util/List;

    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;->mProcessList:Ljava/util/List;

    iget-object v2, p0, Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;->mList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    iget-object v1, p0, Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;->mProcessList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;

    .line 28
    .local v2, "listener":Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;
    if-nez v2, :cond_0

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {v2, p1}, Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;->onChanged(Z)V

    .line 32
    .end local v2    # "listener":Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;
    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;->mProcessList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 34
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeListener(Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;

    .line 18
    iget-object v0, p0, Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;->mList:Ljava/util/List;

    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 20
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
