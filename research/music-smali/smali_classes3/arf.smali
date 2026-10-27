.class public Larf;
.super Ljava/lang/Object;
.source "ReissueQueue.java"


# instance fields
.field final a:Ljava/util/concurrent/locks/ReentrantLock;

.field final b:Ljava/util/concurrent/locks/Condition;

.field final c:Ljava/util/concurrent/locks/Condition;

.field private d:I

.field private e:I

.field private f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 23
    iput v0, p0, Larf;->d:I

    const/16 v0, 0x31

    .line 25
    iput v0, p0, Larf;->e:I

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Larf;->f:Ljava/util/LinkedList;

    .line 29
    iget v0, p0, Larf;->d:I

    iput v0, p0, Larf;->g:I

    .line 32
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Larf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 35
    iget-object v0, p0, Larf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Larf;->b:Ljava/util/concurrent/locks/Condition;

    .line 38
    iget-object v0, p0, Larf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Larf;->c:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method private b(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Z
    .locals 2

    .line 54
    iget-object v0, p0, Larf;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Larf;->g:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 57
    :cond_0
    iget-object v0, p0, Larf;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Larf;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 60
    :cond_1
    iget-object p1, p0, Larf;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    const/4 p1, 0x1

    return p1
.end method

.method private b(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;",
            ">;)Z"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Larf;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Larf;->g:I

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 44
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    .line 45
    iget-object v1, p0, Larf;->f:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    iget-object v1, p0, Larf;->f:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object p1, p0, Larf;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    const/4 p1, 0x1

    return p1
.end method

.method private c()Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;
    .locals 6

    .line 68
    iget-object v0, p0, Larf;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_0
    iget-object v0, p0, Larf;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takeReissueInfo sz : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Larf;->f:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReissueQueue"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lars;->a()Lars;

    move-result-object v1

    invoke-virtual {v1, v0}, Lars;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Larf;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 74
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 75
    iget-object v2, p0, Larf;->f:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    .line 76
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    iget v4, p0, Larf;->e:I

    if-ne v3, v4, :cond_1

    .line 83
    :cond_3
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 84
    iget-object v2, p0, Larf;->f:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    .line 86
    :cond_4
    invoke-static {}, Lars;->a()Lars;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lars;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;Ljava/util/LinkedList;)Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    move-result-object v0

    .line 91
    :cond_5
    iget-object v1, p0, Larf;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;
    .locals 2

    .line 132
    :try_start_0
    iget-object v0, p0, Larf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 133
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    :try_start_1
    invoke-direct {p0}, Larf;->c()Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 137
    iget-object v1, p0, Larf;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 142
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "ReissueQueue"

    .line 144
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V
    .locals 2

    .line 116
    :try_start_0
    iget-object v0, p0, Larf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 117
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    :try_start_1
    invoke-direct {p0, p1}, Larf;->b(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    iget-object v1, p0, Larf;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 124
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReissueQueue"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 96
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    :try_start_0
    iget-object v0, p0, Larf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 101
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    :try_start_1
    invoke-direct {p0, p1}, Larf;->b(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    iget-object v1, p0, Larf;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 108
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReissueQueue"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 150
    iget-object v0, p0, Larf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 151
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 153
    :try_start_0
    iget-object v1, p0, Larf;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 154
    iget-object v1, p0, Larf;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 157
    throw v1
.end method
