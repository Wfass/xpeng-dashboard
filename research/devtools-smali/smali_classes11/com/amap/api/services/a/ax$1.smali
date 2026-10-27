.class Lcom/amap/api/services/a/ax$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ft:Lcom/amap/api/services/a/ax;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/ax;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/amap/api/services/a/ax$1;->ft:Lcom/amap/api/services/a/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bv()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/amap/api/services/a/ax$1;->ft:Lcom/amap/api/services/a/ax;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/services/a/ax$1;->ft:Lcom/amap/api/services/a/ax;

    invoke-static {v1}, Lcom/amap/api/services/a/ax;->a(Lcom/amap/api/services/a/ax;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 175
    monitor-exit v0

    return-object v2

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/amap/api/services/a/ax$1;->ft:Lcom/amap/api/services/a/ax;

    invoke-static {v1}, Lcom/amap/api/services/a/ax;->b(Lcom/amap/api/services/a/ax;)V

    .line 178
    iget-object v1, p0, Lcom/amap/api/services/a/ax$1;->ft:Lcom/amap/api/services/a/ax;

    invoke-static {v1}, Lcom/amap/api/services/a/ax;->c(Lcom/amap/api/services/a/ax;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/amap/api/services/a/ax$1;->ft:Lcom/amap/api/services/a/ax;

    invoke-static {v1}, Lcom/amap/api/services/a/ax;->d(Lcom/amap/api/services/a/ax;)V

    .line 180
    iget-object v1, p0, Lcom/amap/api/services/a/ax$1;->ft:Lcom/amap/api/services/a/ax;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/amap/api/services/a/ax;->a(Lcom/amap/api/services/a/ax;I)I

    .line 182
    :cond_1
    monitor-exit v0

    .line 183
    return-object v2

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/amap/api/services/a/ax$1;->bv()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
