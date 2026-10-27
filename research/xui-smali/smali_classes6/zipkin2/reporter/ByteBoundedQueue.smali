.class final Lzipkin2/reporter/ByteBoundedQueue;
.super Ljava/lang/Object;
.source "ByteBoundedQueue.java"

# interfaces
.implements Lzipkin2/reporter/SpanWithSizeConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lzipkin2/reporter/SpanWithSizeConsumer<",
        "TS;>;"
    }
.end annotation


# instance fields
.field final available:Ljava/util/concurrent/locks/Condition;

.field count:I

.field final elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TS;"
        }
    .end annotation
.end field

.field final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final maxBytes:I

.field final maxSize:I

.field readPos:I

.field sizeInBytes:I

.field final sizesInBytes:[I

.field writePos:I


# direct methods
.method constructor <init>(II)V
    .locals 2
    .param p1, "maxSize"    # I
    .param p2, "maxBytes"    # I

    .line 40
    .local p0, "this":Lzipkin2/reporter/ByteBoundedQueue;, "Lzipkin2/reporter/ByteBoundedQueue<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    iget-object v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->available:Ljava/util/concurrent/locks/Condition;

    .line 41
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->elements:[Ljava/lang/Object;

    .line 42
    new-array v0, p1, [I

    iput-object v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->sizesInBytes:[I

    .line 43
    iput p1, p0, Lzipkin2/reporter/ByteBoundedQueue;->maxSize:I

    .line 44
    iput p2, p0, Lzipkin2/reporter/ByteBoundedQueue;->maxBytes:I

    .line 45
    return-void
.end method


# virtual methods
.method clear()I
    .locals 3

    .line 94
    .local p0, "this":Lzipkin2/reporter/ByteBoundedQueue;, "Lzipkin2/reporter/ByteBoundedQueue<TS;>;"
    iget-object v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 96
    :try_start_0
    iget v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->count:I

    .line 97
    .local v0, "result":I
    const/4 v1, 0x0

    iput v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->writePos:I

    iput v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->readPos:I

    iput v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->sizeInBytes:I

    iput v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->count:I

    .line 98
    iget-object v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->elements:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    nop

    .line 101
    iget-object v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 99
    return v0

    .line 101
    .end local v0    # "result":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 102
    throw v0
.end method

.method doDrain(Lzipkin2/reporter/SpanWithSizeConsumer;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/reporter/SpanWithSizeConsumer<",
            "TS;>;)I"
        }
    .end annotation

    .line 106
    .local p0, "this":Lzipkin2/reporter/ByteBoundedQueue;, "Lzipkin2/reporter/ByteBoundedQueue<TS;>;"
    .local p1, "consumer":Lzipkin2/reporter/SpanWithSizeConsumer;, "Lzipkin2/reporter/SpanWithSizeConsumer<TS;>;"
    const/4 v0, 0x0

    .line 107
    .local v0, "drainedCount":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 108
    .local v0, "drainedSizeInBytes":I
    .local v2, "drainedCount":I
    :goto_0
    iget v3, p0, Lzipkin2/reporter/ByteBoundedQueue;->count:I

    if-ge v2, v3, :cond_2

    .line 109
    iget-object v3, p0, Lzipkin2/reporter/ByteBoundedQueue;->elements:[Ljava/lang/Object;

    iget v4, p0, Lzipkin2/reporter/ByteBoundedQueue;->readPos:I

    aget-object v3, v3, v4

    .line 110
    .local v3, "next":Ljava/lang/Object;, "TS;"
    iget-object v4, p0, Lzipkin2/reporter/ByteBoundedQueue;->sizesInBytes:[I

    iget v5, p0, Lzipkin2/reporter/ByteBoundedQueue;->readPos:I

    aget v4, v4, v5

    .line 112
    .local v4, "nextSizeInBytes":I
    if-nez v3, :cond_0

    .end local v3    # "next":Ljava/lang/Object;, "TS;"
    .end local v4    # "nextSizeInBytes":I
    goto :goto_1

    .line 113
    .restart local v3    # "next":Ljava/lang/Object;, "TS;"
    .restart local v4    # "nextSizeInBytes":I
    :cond_0
    invoke-interface {p1, v3, v4}, Lzipkin2/reporter/SpanWithSizeConsumer;->offer(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 114
    add-int/lit8 v2, v2, 0x1

    .line 115
    add-int/2addr v0, v4

    .line 117
    iget-object v5, p0, Lzipkin2/reporter/ByteBoundedQueue;->elements:[Ljava/lang/Object;

    iget v6, p0, Lzipkin2/reporter/ByteBoundedQueue;->readPos:I

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 118
    iget v5, p0, Lzipkin2/reporter/ByteBoundedQueue;->readPos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lzipkin2/reporter/ByteBoundedQueue;->readPos:I

    iget-object v6, p0, Lzipkin2/reporter/ByteBoundedQueue;->elements:[Ljava/lang/Object;

    array-length v6, v6

    if-ne v5, v6, :cond_1

    iput v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->readPos:I

    .line 122
    .end local v3    # "next":Ljava/lang/Object;, "TS;"
    .end local v4    # "nextSizeInBytes":I
    :cond_1
    goto :goto_0

    .line 123
    :cond_2
    :goto_1
    iget v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->count:I

    sub-int/2addr v1, v2

    iput v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->count:I

    .line 124
    iget v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->sizeInBytes:I

    sub-int/2addr v1, v0

    iput v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->sizeInBytes:I

    .line 125
    return v2
.end method

.method drainTo(Lzipkin2/reporter/SpanWithSizeConsumer;J)I
    .locals 5
    .param p2, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/reporter/SpanWithSizeConsumer<",
            "TS;>;J)I"
        }
    .end annotation

    .line 76
    .local p0, "this":Lzipkin2/reporter/ByteBoundedQueue;, "Lzipkin2/reporter/ByteBoundedQueue<TS;>;"
    .local p1, "consumer":Lzipkin2/reporter/SpanWithSizeConsumer;, "Lzipkin2/reporter/SpanWithSizeConsumer<TS;>;"
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    move-wide v1, p2

    .line 79
    .local v1, "nanosLeft":J
    :goto_0
    :try_start_1
    iget v3, p0, Lzipkin2/reporter/ByteBoundedQueue;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    .line 80
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 85
    :try_start_2
    iget-object v3, p0, Lzipkin2/reporter/ByteBoundedQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    return v0

    .line 81
    :cond_0
    :try_start_3
    iget-object v3, p0, Lzipkin2/reporter/ByteBoundedQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v3

    move-wide v1, v3

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0, p1}, Lzipkin2/reporter/ByteBoundedQueue;->doDrain(Lzipkin2/reporter/SpanWithSizeConsumer;)I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    :try_start_4
    iget-object v4, p0, Lzipkin2/reporter/ByteBoundedQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 83
    return v3

    .line 85
    .end local v1    # "nanosLeft":J
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lzipkin2/reporter/ByteBoundedQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 86
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/InterruptedException;
    return v0
.end method

.method public offer(Ljava/lang/Object;I)Z
    .locals 4
    .param p2, "nextSizeInBytes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)Z"
        }
    .end annotation

    .line 51
    .local p0, "this":Lzipkin2/reporter/ByteBoundedQueue;, "Lzipkin2/reporter/ByteBoundedQueue<TS;>;"
    .local p1, "next":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 53
    :try_start_0
    iget v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->count:I

    iget v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 53
    return v2

    .line 54
    :cond_0
    :try_start_1
    iget v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->sizeInBytes:I

    add-int/2addr v0, p2

    iget v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->maxBytes:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v0, v1, :cond_1

    .line 67
    iget-object v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 54
    return v2

    .line 56
    :cond_1
    :try_start_2
    iget-object v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->writePos:I

    aput-object p1, v0, v1

    .line 57
    iget-object v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->sizesInBytes:[I

    iget v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->writePos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lzipkin2/reporter/ByteBoundedQueue;->writePos:I

    aput p2, v0, v1

    .line 59
    iget v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->writePos:I

    iget v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->maxSize:I

    if-ne v0, v1, :cond_2

    iput v2, p0, Lzipkin2/reporter/ByteBoundedQueue;->writePos:I

    .line 61
    :cond_2
    iget v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->count:I

    .line 62
    iget v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->sizeInBytes:I

    add-int/2addr v0, p2

    iput v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->sizeInBytes:I

    .line 64
    iget-object v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    nop

    .line 67
    iget-object v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 65
    return v1

    .line 67
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 68
    throw v0
.end method
