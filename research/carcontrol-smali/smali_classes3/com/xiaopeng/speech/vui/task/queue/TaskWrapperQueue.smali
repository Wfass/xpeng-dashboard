.class public Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;
.super Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;
.source "TaskWrapperQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<",
        "Ljava/lang/String;",
        "Lcom/xiaopeng/speech/vui/task/base/BaseTask;",
        ">;"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;-><init>()V

    const-string v0, "TaskWrapperQueue"

    .line 17
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->TAG:Ljava/lang/String;

    return-void
.end method

.method private putTaskToQueue(Lcom/xiaopeng/speech/vui/task/base/BaseTask;Z)Z
    .locals 5

    const/4 v0, 0x1

    .line 46
    :try_start_0
    iget-object v1, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u961f\u5217\u7f13\u5b58\u5927\u5c0f: offer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/PriorityBlockingQueue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v1, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getVid()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 58
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u53d1\u73b0\u961f\u5217\u4e2d\u76f8\u540cid\u6709\u6570\u636e"

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    if-eqz v2, :cond_3

    .line 60
    iget-object v3, v2, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    if-eqz v3, :cond_3

    .line 61
    iget-object v3, v2, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getTaskType()Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-result-object v3

    iget-object v4, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getTaskType()Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 62
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 63
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_1
    iget-object v3, v2, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getTaskType()Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->ADD:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    if-ne v3, v4, :cond_2

    iget-object v3, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    .line 66
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getTaskType()Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->REMOVE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    if-ne v3, v4, :cond_2

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->map:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 72
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->removeTaskFromSceneMap(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)V

    .line 74
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 76
    :cond_4
    iget-object v1, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getView()Ljava/lang/ref/SoftReference;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 77
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->viewMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 78
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u53d1\u73b0\u961f\u5217\u4e2d\u6709\u76f8\u540cview\u6570\u636e"

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->viewMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    if-eqz v2, :cond_7

    .line 80
    iget-object v3, v2, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    if-eqz v3, :cond_7

    .line 81
    iget-object v3, v2, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getTaskType()Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-result-object v3

    iget-object v4, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getTaskType()Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-result-object v4

    if-ne v3, v4, :cond_5

    .line 82
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 83
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->viewMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 85
    :cond_5
    iget-object v3, v2, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getTaskType()Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->ADD:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    if-ne v3, v4, :cond_6

    iget-object v3, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    .line 86
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getTaskType()Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->REMOVE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    if-ne v3, v4, :cond_6

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->viewMap:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 92
    :cond_6
    :goto_1
    invoke-virtual {p0, v2}, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->removeTaskFromSceneMap(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)V

    .line 94
    :cond_7
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->viewMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->sceneMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_9

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    :cond_9
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->sceneMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_a

    .line 107
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_3

    .line 109
    :cond_a
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 114
    :try_start_1
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putTaskToQueue e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    return v0

    .line 118
    :goto_4
    throw p1
.end method

.method private takeTaskFromQueue(Z)Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 131
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    goto :goto_0

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz p1, :cond_3

    .line 135
    :try_start_1
    iget-object v1, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    if-eqz v1, :cond_3

    .line 137
    iget-object v1, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getVid()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_1
    iget-object v1, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getView()Ljava/lang/ref/SoftReference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 143
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->viewMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->viewMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->removeTaskFromSceneMap(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)V

    .line 149
    iget-object v1, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getTaskType()Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->BUILD:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    if-eq v1, v2, :cond_3

    .line 150
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 151
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 152
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takeTaskFromQueue no cache:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 158
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takeTaskFromQueue e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p1, v0

    :cond_3
    return-object p1

    .line 161
    :goto_2
    throw p1
.end method


# virtual methods
.method public offer(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)Z
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->putTaskToQueue(Lcom/xiaopeng/speech/vui/task/base/BaseTask;Z)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 16
    check-cast p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->offer(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)Z

    move-result p1

    return p1
.end method

.method public poll()Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->takeTaskFromQueue(Z)Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->poll()Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)V
    .locals 1

    const/4 v0, 0x1

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->putTaskToQueue(Lcom/xiaopeng/speech/vui/task/base/BaseTask;Z)Z

    return-void
.end method

.method public bridge synthetic put(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 16
    check-cast p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->put(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)V

    return-void
.end method

.method public take()Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    .locals 1

    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->takeTaskFromQueue(Z)Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic take()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->take()Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    move-result-object v0

    return-object v0
.end method
