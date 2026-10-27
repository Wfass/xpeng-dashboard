.class public Lcom/xiaopeng/speech/vui/task/TaskDispatcher;
.super Ljava/lang/Object;
.source "TaskDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispatchTask(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/task/TaskWrapper;",
            ">;)V"
        }
    .end annotation

    .line 19
    .local p1, "viewWrappers":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/task/TaskWrapper;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 23
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    .line 29
    .local v1, "viewWrapper":Lcom/xiaopeng/speech/vui/task/TaskWrapper;
    sget-object v2, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$1;->$SwitchMap$com$xiaopeng$speech$vui$task$TaskDispatcher$TaskType:[I

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getTaskType()Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 49
    new-instance v2, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;

    invoke-direct {v2, v1}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    goto :goto_1

    .line 46
    :pswitch_0
    new-instance v2, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;

    invoke-direct {v2, v1}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    .line 47
    .local v2, "task":Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    goto :goto_1

    .line 43
    .end local v2    # "task":Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    :pswitch_1
    new-instance v2, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;

    invoke-direct {v2, v1}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    .line 44
    .restart local v2    # "task":Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    goto :goto_1

    .line 40
    .end local v2    # "task":Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    :pswitch_2
    new-instance v2, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;

    invoke-direct {v2, v1}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    .line 41
    .restart local v2    # "task":Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    goto :goto_1

    .line 37
    .end local v2    # "task":Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    :pswitch_3
    new-instance v2, Lcom/xiaopeng/speech/vui/task/RemoveTask;

    invoke-direct {v2, v1}, Lcom/xiaopeng/speech/vui/task/RemoveTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    .line 38
    .restart local v2    # "task":Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    goto :goto_1

    .line 34
    .end local v2    # "task":Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    :pswitch_4
    new-instance v2, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;

    invoke-direct {v2, v1}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    .line 35
    .restart local v2    # "task":Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    goto :goto_1

    .line 31
    .end local v2    # "task":Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    :pswitch_5
    new-instance v2, Lcom/xiaopeng/speech/vui/task/AddSceneTask;

    invoke-direct {v2, v1}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    .line 32
    .restart local v2    # "task":Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    nop

    .line 49
    :goto_1
    nop

    .line 53
    invoke-virtual {p0, v2}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;->submitTask(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)V

    .line 54
    .end local v1    # "viewWrapper":Lcom/xiaopeng/speech/vui/task/TaskWrapper;
    .end local v2    # "task":Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    goto :goto_0

    .line 56
    :cond_1
    return-void

    .line 20
    :cond_2
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeTask(Ljava/lang/String;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxyFactory;->getThreadPool()Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->removeTask(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public submitTask(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)V
    .locals 4
    .param p1, "task"    # Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    .line 60
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    if-nez v0, :cond_0

    goto :goto_1

    .line 66
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxyFactory;->getThreadPool()Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "submitTask e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 61
    :cond_1
    :goto_1
    return-void
.end method
