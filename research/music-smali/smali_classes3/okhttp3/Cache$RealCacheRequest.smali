.class final Lokhttp3/Cache$RealCacheRequest;
.super Ljava/lang/Object;
.source "Cache.kt"

# interfaces
.implements Lokhttp3/internal/cache/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RealCacheRequest"
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private final body:Lokio/Sink;

.field private final cacheOut:Lokio/Sink;

.field private done:Z

.field private final editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

.field final synthetic this$0:Lokhttp3/Cache;


# direct methods
.method public constructor <init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/cache/DiskLruCache$Editor;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editor"

    invoke-static {p2, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    iput-object p1, p0, Lokhttp3/Cache$RealCacheRequest;->this$0:Lokhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p2, p0, Lokhttp3/Cache$RealCacheRequest;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 393
    iget-object p1, p0, Lokhttp3/Cache$RealCacheRequest;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lokhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lokio/Sink;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/Cache$RealCacheRequest;->cacheOut:Lokio/Sink;

    .line 398
    iget-object p1, p0, Lokhttp3/Cache$RealCacheRequest;->cacheOut:Lokio/Sink;

    new-instance p2, Lokhttp3/Cache$RealCacheRequest$1;

    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest;->this$0:Lokhttp3/Cache;

    invoke-direct {p2, v0, p0, p1}, Lokhttp3/Cache$RealCacheRequest$1;-><init>(Lokhttp3/Cache;Lokhttp3/Cache$RealCacheRequest;Lokio/Sink;)V

    check-cast p2, Lokio/Sink;

    iput-object p2, p0, Lokhttp3/Cache$RealCacheRequest;->body:Lokio/Sink;

    return-void
.end method

.method public static final synthetic access$getEditor$p(Lokhttp3/Cache$RealCacheRequest;)Lokhttp3/internal/cache/DiskLruCache$Editor;
    .locals 0

    .line 390
    iget-object p0, p0, Lokhttp3/Cache$RealCacheRequest;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    return-object p0
.end method


# virtual methods
.method public abort()V
    .locals 3

    .line 413
    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest;->this$0:Lokhttp3/Cache;

    monitor-enter v0

    .line 414
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Cache$RealCacheRequest;->getDone()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 415
    :try_start_1
    invoke-virtual {p0, v1}, Lokhttp3/Cache$RealCacheRequest;->setDone(Z)V

    .line 416
    invoke-virtual {v0}, Lokhttp3/Cache;->getWriteAbortCount$okhttp()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lokhttp3/Cache;->setWriteAbortCount$okhttp(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    monitor-exit v0

    .line 418
    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest;->cacheOut:Lokio/Sink;

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 420
    :try_start_2
    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v1

    .line 413
    monitor-exit v0

    throw v1
.end method

.method public body()Lokio/Sink;
    .locals 1

    .line 425
    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest;->body:Lokio/Sink;

    return-object v0
.end method

.method public final getDone()Z
    .locals 1

    .line 395
    iget-boolean v0, p0, Lokhttp3/Cache$RealCacheRequest;->done:Z

    return v0
.end method

.method public final setDone(Z)V
    .locals 0

    .line 395
    iput-boolean p1, p0, Lokhttp3/Cache$RealCacheRequest;->done:Z

    return-void
.end method
