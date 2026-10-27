.class Lcom/xiaopeng/xuimanager/common/PipListenerRegisterAndNotify;
.super Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap;
.source "PipeListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/common/PipeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap<",
        "Ljava/lang/String;",
        "Lcom/xiaopeng/xuimanager/common/PipeListener;",
        ">;",
        "Lcom/xiaopeng/xuimanager/common/PipeListener;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onPiped(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)V
    .locals 2

    monitor-enter p0

    .line 14
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/common/PipListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/common/PipeListener;

    .line 15
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/common/PipeListener;->onPiped(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 17
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
