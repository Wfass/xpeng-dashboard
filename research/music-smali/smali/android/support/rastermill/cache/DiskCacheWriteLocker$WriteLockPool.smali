.class Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLockPool;
.super Ljava/lang/Object;
.source "DiskCacheWriteLocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/cache/DiskCacheWriteLocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteLockPool"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa


# instance fields
.field private final pool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/rastermill/cache/DiskCacheWriteLocker$1;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLockPool;-><init>()V

    return-void
.end method


# virtual methods
.method obtain()Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;
    .locals 2

    .line 72
    iget-object v0, p0, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;-><init>(Landroid/support/rastermill/cache/DiskCacheWriteLocker$1;)V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    .line 74
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method offer(Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;)V
    .locals 3

    .line 82
    iget-object v0, p0, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 84
    iget-object v1, p0, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
