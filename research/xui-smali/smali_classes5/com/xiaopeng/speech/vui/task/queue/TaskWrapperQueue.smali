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

    .line 17
    const-string v0, "TaskWrapperQueue"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->TAG:Ljava/lang/String;

    return-void
.end method

.method private putTaskToQueue(Lcom/xiaopeng/speech/vui/task/base/BaseTask;Z)Z
    .locals 6
    .param p1, "task"    # Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    .param p2, "isPut"    # Z

    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "currTask":Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    if-nez v2, :cond_0

    .line 47
    const/4 v1, 0x0

    return v1

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u961f\u5217\u7f13\u5b58\u5927\u5c0f: offer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v2, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getVid()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "uniqueKey":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 58
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->TAG:Ljava/lang/String;

    const-string v4, "\u53d1\u73b0\u961f\u5217\u4e2d\u76f8\u540cid\u6709\u6570\u636e"

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    move-object v0, v3

    .line 60
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    if-eqz v3, :cond_3

    .line 61
    iget-object v3, v0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getTaskType()Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-result-object v3

    iget-object v4, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getTaskType()Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 62
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 63
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_1
    iget-object v3, v0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

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
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 68
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return v1

    .line 72
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->removeTaskFromSceneMap(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)V

    .line 74
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 76
    :cond_4
    iget-object v3, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getView()Ljava/lang/ref/SoftReference;

    move-result-object v3

    .line 77
    .local v3, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    if-eqz v3, :cond_8

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->viewMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 78
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->TAG:Ljava/lang/String;

    const-string v5, "\u53d1\u73b0\u961f\u5217\u4e2d\u6709\u76f8\u540cview\u6570\u636e"

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->viewMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    move-object v0, v4

    .line 80
    if-eqz v0, :cond_7

    iget-object v4, v0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    if-eqz v4, :cond_7

    .line 81
    iget-object v4, v0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getTaskType()Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-result-object v4

    iget-object v5, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getTaskType()Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-result-object v5

    if-ne v4, v5, :cond_5

    .line 82
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 83
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->viewMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 85
    :cond_5
    iget-object v4, v0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getTaskType()Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-result-object v4

    sget-object v5, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->ADD:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    if-ne v4, v5, :cond_6

    iget-object v4, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    .line 86
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getTaskType()Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-result-object v4

    sget-object v5, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->REMOVE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    if-ne v4, v5, :cond_6

    .line 87
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 88
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->viewMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return v1

    .line 92
    :cond_6
    :goto_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->removeTaskFromSceneMap(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)V

    .line 94
    :cond_7
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->viewMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v3    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->sceneMap:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 99
    .local v3, "taskList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/task/base/BaseTask;>;"
    if-nez v3, :cond_9

    .line 100
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 102
    :cond_9
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->sceneMap:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    if-eqz p2, :cond_a

    .line 107
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_3

    .line 109
    :cond_a
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "currTask":Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    .end local v2    # "uniqueKey":Ljava/lang/String;
    .end local v3    # "taskList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/task/base/BaseTask;>;"
    goto :goto_3

    .line 116
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putTaskToQueue e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    nop

    .line 120
    return v1

    .line 116
    :goto_4
    nop

    .line 118
    throw v0
.end method

.method private takeTaskFromQueue(Z)Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    .locals 7
    .param p1, "isTake"    # Z

    .line 124
    const/4 v0, 0x0

    move-object v1, v0

    .line 130
    .local v1, "task":Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    if-eqz p1, :cond_0

    .line 131
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    move-object v1, v2

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 157
    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    move-object v1, v2

    .line 135
    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    if-eqz v2, :cond_3

    .line 137
    iget-object v2, v1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getVid()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "uniqueKey":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 140
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_1
    iget-object v3, v1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getView()Ljava/lang/ref/SoftReference;

    move-result-object v3

    .line 143
    .local v3, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->viewMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 144
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->viewMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_2
    invoke-virtual {p0, v1}, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->removeTaskFromSceneMap(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)V

    .line 149
    iget-object v4, v1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getTaskType()Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-result-object v4

    sget-object v5, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->BUILD:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    if-eq v4, v5, :cond_3

    .line 150
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 151
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 152
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "takeTaskFromQueue no cache:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    return-object v0

    .line 161
    .end local v2    # "uniqueKey":Ljava/lang/String;
    .end local v3    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    :cond_3
    :goto_1
    goto :goto_3

    .line 157
    :goto_2
    nop

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "takeTaskFromQueue e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 163
    :goto_3
    return-object v1

    .line 159
    :goto_4
    nop

    .line 161
    throw v0
.end method


# virtual methods
.method public offer(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)Z
    .locals 1
    .param p1, "task"    # Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->putTaskToQueue(Lcom/xiaopeng/speech/vui/task/base/BaseTask;Z)Z

    move-result v0

    return v0
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

    .line 25
    const/4 v0, 0x0

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
    .param p1, "task"    # Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;->putTaskToQueue(Lcom/xiaopeng/speech/vui/task/base/BaseTask;Z)Z

    .line 32
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

    .line 38
    const/4 v0, 0x1

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
