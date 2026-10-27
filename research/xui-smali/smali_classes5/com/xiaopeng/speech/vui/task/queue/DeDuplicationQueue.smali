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
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    .local p1, "e":Lcom/xiaopeng/speech/vui/task/base/BaseTask;, "TT;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 31
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    check-cast p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->add(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 0

    .line 147
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 82
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 122
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TT;>;)I"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 1
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TT;>;I)I"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public element()Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 201
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic element()Ljava/lang/Object;
    .locals 1

    .line 31
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->element()Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 66
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    const/4 v0, 0x0

    .line 68
    .local v0, "isEmpty":Z
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 69
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 71
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 73
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 74
    nop

    .line 76
    return v0

    .line 73
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 74
    throw v2
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

    .line 98
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public offer(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 157
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    .local p1, "e":Lcom/xiaopeng/speech/vui/task/base/BaseTask;, "TT;"
    const/4 v0, 0x0

    return v0
.end method

.method public offer(Lcom/xiaopeng/speech/vui/task/base/BaseTask;JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
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

    .line 167
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    .local p1, "t":Lcom/xiaopeng/speech/vui/task/base/BaseTask;, "TT;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 31
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
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
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
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

    .line 207
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 31
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
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

    .line 195
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
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

    .line 178
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 31
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
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
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
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

    .line 163
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    .local p1, "t":Lcom/xiaopeng/speech/vui/task/base/BaseTask;, "TT;"
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
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    check-cast p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->put(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)V

    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    .line 183
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
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

    .line 189
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic remove()Ljava/lang/Object;
    .locals 1

    .line 31
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->remove()Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 116
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 134
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized removeTask(Ljava/lang/String;)V
    .locals 6
    .param p1, "sceneId"    # Ljava/lang/String;

    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    monitor-enter p0

    .line 211
    :try_start_0
    const-string v0, "DeDuplicationQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 214
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->sceneMap:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->sceneMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->sceneMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 216
    .local v0, "taskList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/task/base/BaseTask;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 217
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    .line 218
    .local v2, "task":Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 219
    iget-object v3, v2, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getVid()Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "id":Ljava/lang/String;
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 221
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_1
    iget-object v4, v2, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getView()Ljava/lang/ref/SoftReference;

    move-result-object v4

    .line 224
    .local v4, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->map:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 225
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->map:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .end local v2    # "task":Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->sceneMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    .end local v0    # "taskList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/task/base/BaseTask;>;"
    :cond_4
    goto :goto_1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "DeDuplicationQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-void

    .line 210
    .end local p1    # "sceneId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    throw p1
.end method

.method public removeTaskFromSceneMap(Lcom/xiaopeng/speech/vui/task/base/BaseTask;)V
    .locals 4
    .param p1, "task"    # Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    .line 236
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    iget-object v0, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 237
    .local v0, "sceneId":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->sceneMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->sceneMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->sceneMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 239
    .local v1, "taskList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/task/base/BaseTask;>;"
    if-eqz v1, :cond_1

    .line 240
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 241
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 242
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 246
    .end local v1    # "taskList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/task/base/BaseTask;>;"
    .end local v2    # "index":I
    :cond_1
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 140
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 2

    .line 54
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 55
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
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

    .line 57
    return v1

    .line 59
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

    .line 173
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
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
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->take()Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 104
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;, "Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue<TK;TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    return-object v0
.end method
