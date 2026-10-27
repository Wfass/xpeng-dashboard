.class public Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;
.super Ljava/lang/Object;
.source "DeDuplicationQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Lcom/xiaopeng/speech/vui/task/base/BaseTask;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/BlockingQueue<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeDuplicationQueue"


# instance fields
.field protected lock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;TT;>;"
        }
    .end annotation
.end field

.field protected final queue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final sceneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/task/base/BaseTask;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final viewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Lcom/xiaopeng/speech/vui/task/queue/TaskComparator;

    invoke-direct {v1}, Lcom/xiaopeng/speech/vui/task/queue/TaskComparator;-><init>()V

    const/16 v2, 0x14

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->map:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->viewMap:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->sceneMap:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method


# virtual methods
.method public add(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 31
    check-cast p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->add(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TT;>;)I"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TT;>;I)I"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public element()Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic element()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->element()Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 69
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 74
    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public offer(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public offer(Lcom/xiaopeng/speech/vui/task/base/BaseTask;JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 31
    check-cast p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->offer(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 31
    check-cast p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->offer(Lcom/xiaopeng/speech/vui/task/base/BaseTask;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public peek()Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->peek()Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    move-result-object v0

    return-object v0
.end method

.method public poll()Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->poll()Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->poll(JLjava/util/concurrent/TimeUnit;)Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    move-result-object p1

    return-object p1
.end method

.method public put(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic put(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 31
    check-cast p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->put(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)V

    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public remove()Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic remove()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->remove()Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized removeTask(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "DeDuplicationQueue"

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 212
    monitor-exit p0

    return-void

    .line 214
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->sceneMap:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->sceneMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 216
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 217
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    .line 218
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 219
    iget-object v3, v2, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getVid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 220
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 221
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_1
    iget-object v2, v2, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getView()Ljava/lang/ref/SoftReference;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 224
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 225
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->sceneMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "DeDuplicationQueue"

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeTaskFromSceneMap(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)V
    .locals 2

    .line 236
    iget-object v0, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 237
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->sceneMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->sceneMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 240
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 242
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 60
    throw v1
.end method

.method public take()Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic take()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->take()Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
