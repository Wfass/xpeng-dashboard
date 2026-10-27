.class final Landroid/support/rastermill/cache/DiskCacheWriteLocker;
.super Ljava/lang/Object;
.source "DiskCacheWriteLocker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLockPool;,
        Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;
    }
.end annotation


# instance fields
.field private final locks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;",
            ">;"
        }
    .end annotation
.end field

.field private final writeLockPool:Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLockPool;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/rastermill/cache/DiskCacheWriteLocker;->locks:Ljava/util/Map;

    .line 20
    new-instance v0, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLockPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLockPool;-><init>(Landroid/support/rastermill/cache/DiskCacheWriteLocker$1;)V

    iput-object v0, p0, Landroid/support/rastermill/cache/DiskCacheWriteLocker;->writeLockPool:Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLockPool;

    return-void
.end method


# virtual methods
.method acquire(Ljava/lang/String;)V
    .locals 2

    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Landroid/support/rastermill/cache/DiskCacheWriteLocker;->locks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Landroid/support/rastermill/cache/DiskCacheWriteLocker;->writeLockPool:Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLockPool;

    invoke-virtual {v0}, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLockPool;->obtain()Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;

    move-result-object v0

    .line 28
    iget-object v1, p0, Landroid/support/rastermill/cache/DiskCacheWriteLocker;->locks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_0
    iget p1, v0, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    .line 31
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    iget-object p1, v0, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    return-void

    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method release(Ljava/lang/String;)V
    .locals 5

    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Landroid/support/rastermill/cache/DiskCacheWriteLocker;->locks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;

    if-eqz v0, :cond_3

    .line 40
    iget v1, v0, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    if-gtz v1, :cond_0

    goto :goto_1

    .line 46
    :cond_0
    iget v1, v0, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    if-nez v1, :cond_2

    .line 47
    iget-object v1, p0, Landroid/support/rastermill/cache/DiskCacheWriteLocker;->locks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    iget-object p1, p0, Landroid/support/rastermill/cache/DiskCacheWriteLocker;->writeLockPool:Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLockPool;

    invoke-virtual {p1, v1}, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLockPool;->offer(Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;)V

    goto :goto_0

    .line 49
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed the wrong lock, expected to remove: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", but actually removed: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", key: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object p1, v0, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 41
    :cond_3
    :goto_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot release a lock that is not held, key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", interestedThreads: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    iget p1, v0, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    :goto_2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 56
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
