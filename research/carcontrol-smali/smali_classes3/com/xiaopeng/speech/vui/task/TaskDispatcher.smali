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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/task/TaskWrapper;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 19
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 23
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    .line 29
    sget-object v1, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$1;->$SwitchMap$com$xiaopeng$speech$vui$task$TaskDispatcher$TaskType:[I

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getTaskType()Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 49
    new-instance v1, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;

    invoke-direct {v1, v0}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    goto :goto_1

    .line 46
    :pswitch_0
    new-instance v1, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;

    invoke-direct {v1, v0}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    goto :goto_1

    .line 43
    :pswitch_1
    new-instance v1, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;

    invoke-direct {v1, v0}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    goto :goto_1

    .line 40
    :pswitch_2
    new-instance v1, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;

    invoke-direct {v1, v0}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    goto :goto_1

    .line 37
    :pswitch_3
    new-instance v1, Lcom/xiaopeng/speech/vui/task/RemoveTask;

    invoke-direct {v1, v0}, Lcom/xiaopeng/speech/vui/task/RemoveTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    goto :goto_1

    .line 34
    :pswitch_4
    new-instance v1, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;

    invoke-direct {v1, v0}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    goto :goto_1

    .line 31
    :pswitch_5
    new-instance v1, Lcom/xiaopeng/speech/vui/task/AddSceneTask;

    invoke-direct {v1, v0}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    .line 53
    :goto_1
    invoke-virtual {p0, v1}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;->submitTask(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)V

    goto :goto_0

    :cond_1
    :goto_2
    return-void

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

    .line 75
    invoke-static {}, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxyFactory;->getThreadPool()Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->removeTask(Ljava/lang/String;)V

    return-void
.end method

.method public submitTask(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 60
    iget-object v0, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    if-nez v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxyFactory;->getThreadPool()Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submitTask e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
