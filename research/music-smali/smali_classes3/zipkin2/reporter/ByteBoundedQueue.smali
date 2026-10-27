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
.field final a:Ljava/util/concurrent/locks/ReentrantLock;

.field final b:Ljava/util/concurrent/locks/Condition;

.field final c:I

.field final d:I

.field final e:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TS;"
        }
    .end annotation
.end field

.field final f:[I

.field g:I

.field h:I

.field i:I

.field j:I


# direct methods
.method constructor <init>(II)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    iget-object v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->b:Ljava/util/concurrent/locks/Condition;

    .line 41
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->e:[Ljava/lang/Object;

    .line 42
    new-array v0, p1, [I

    iput-object v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->f:[I

    .line 43
    iput p1, p0, Lzipkin2/reporter/ByteBoundedQueue;->c:I

    .line 44
    iput p2, p0, Lzipkin2/reporter/ByteBoundedQueue;->d:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 3

    .line 94
    iget-object v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 96
    :try_start_0
    iget v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->g:I

    const/4 v1, 0x0

    .line 97
    iput v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->i:I

    iput v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->j:I

    iput v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->h:I

    iput v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->g:I

    .line 98
    iget-object v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->e:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 102
    throw v0
.end method

.method a(Lzipkin2/reporter/SpanWithSizeConsumer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/reporter/SpanWithSizeConsumer<",
            "TS;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 108
    :cond_0
    :goto_0
    iget v3, p0, Lzipkin2/reporter/ByteBoundedQueue;->g:I

    if-ge v1, v3, :cond_2

    .line 109
    iget-object v3, p0, Lzipkin2/reporter/ByteBoundedQueue;->e:[Ljava/lang/Object;

    iget v4, p0, Lzipkin2/reporter/ByteBoundedQueue;->j:I

    aget-object v3, v3, v4

    .line 110
    iget-object v5, p0, Lzipkin2/reporter/ByteBoundedQueue;->f:[I

    aget v4, v5, v4

    if-nez v3, :cond_1

    goto :goto_1

    .line 113
    :cond_1
    invoke-interface {p1, v3, v4}, Lzipkin2/reporter/SpanWithSizeConsumer;->offer(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v4

    .line 117
    iget-object v3, p0, Lzipkin2/reporter/ByteBoundedQueue;->e:[Ljava/lang/Object;

    iget v4, p0, Lzipkin2/reporter/ByteBoundedQueue;->j:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 118
    iput v4, p0, Lzipkin2/reporter/ByteBoundedQueue;->j:I

    array-length v3, v3

    if-ne v4, v3, :cond_0

    iput v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->j:I

    goto :goto_0

    .line 123
    :cond_2
    :goto_1
    iget p1, p0, Lzipkin2/reporter/ByteBoundedQueue;->g:I

    sub-int/2addr p1, v1

    iput p1, p0, Lzipkin2/reporter/ByteBoundedQueue;->g:I

    .line 124
    iget p1, p0, Lzipkin2/reporter/ByteBoundedQueue;->h:I

    sub-int/2addr p1, v2

    iput p1, p0, Lzipkin2/reporter/ByteBoundedQueue;->h:I

    return v1
.end method

.method a(Lzipkin2/reporter/SpanWithSizeConsumer;J)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/reporter/SpanWithSizeConsumer<",
            "TS;>;J)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    :try_start_0
    iget-object v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    :try_start_1
    iget v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    .line 85
    :try_start_2
    iget-object p1, p0, Lzipkin2/reporter/ByteBoundedQueue;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    .line 81
    :cond_0
    :try_start_3
    iget-object v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p2

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0, p1}, Lzipkin2/reporter/ByteBoundedQueue;->a(Lzipkin2/reporter/SpanWithSizeConsumer;)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    :try_start_4
    iget-object p2, p0, Lzipkin2/reporter/ByteBoundedQueue;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lzipkin2/reporter/ByteBoundedQueue;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 86
    throw p1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return v0
.end method

.method public offer(Ljava/lang/Object;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)Z"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 53
    :try_start_0
    iget v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->g:I

    iget v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 67
    :goto_0
    iget-object p1, p0, Lzipkin2/reporter/ByteBoundedQueue;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .line 54
    :cond_0
    :try_start_1
    iget v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->h:I

    add-int/2addr v0, p2

    iget v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->d:I

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->e:[Ljava/lang/Object;

    iget v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->i:I

    aput-object p1, v0, v1

    .line 57
    iget-object p1, p0, Lzipkin2/reporter/ByteBoundedQueue;->f:[I

    iget v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lzipkin2/reporter/ByteBoundedQueue;->i:I

    aput p2, p1, v0

    .line 59
    iget p1, p0, Lzipkin2/reporter/ByteBoundedQueue;->i:I

    iget v0, p0, Lzipkin2/reporter/ByteBoundedQueue;->c:I

    if-ne p1, v0, :cond_2

    iput v2, p0, Lzipkin2/reporter/ByteBoundedQueue;->i:I

    .line 61
    :cond_2
    iget p1, p0, Lzipkin2/reporter/ByteBoundedQueue;->g:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lzipkin2/reporter/ByteBoundedQueue;->g:I

    .line 62
    iget p1, p0, Lzipkin2/reporter/ByteBoundedQueue;->h:I

    add-int/2addr p1, p2

    iput p1, p0, Lzipkin2/reporter/ByteBoundedQueue;->h:I

    .line 64
    iget-object p1, p0, Lzipkin2/reporter/ByteBoundedQueue;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    iget-object p1, p0, Lzipkin2/reporter/ByteBoundedQueue;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lzipkin2/reporter/ByteBoundedQueue;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 68
    throw p1
.end method
