.class Lcom/amap/api/services/a/co$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/co;
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
.field final synthetic a:Lcom/amap/api/services/a/co;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/co;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/amap/api/services/a/co$1;->a:Lcom/amap/api/services/a/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/amap/api/services/a/co$1;->a:Lcom/amap/api/services/a/co;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/services/a/co$1;->a:Lcom/amap/api/services/a/co;

    invoke-static {v1}, Lcom/amap/api/services/a/co;->a(Lcom/amap/api/services/a/co;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 175
    monitor-exit v0

    return-object v2

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/amap/api/services/a/co$1;->a:Lcom/amap/api/services/a/co;

    invoke-static {v1}, Lcom/amap/api/services/a/co;->b(Lcom/amap/api/services/a/co;)V

    .line 178
    iget-object v1, p0, Lcom/amap/api/services/a/co$1;->a:Lcom/amap/api/services/a/co;

    invoke-static {v1}, Lcom/amap/api/services/a/co;->c(Lcom/amap/api/services/a/co;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/amap/api/services/a/co$1;->a:Lcom/amap/api/services/a/co;

    invoke-static {v1}, Lcom/amap/api/services/a/co;->d(Lcom/amap/api/services/a/co;)V

    .line 180
    iget-object v1, p0, Lcom/amap/api/services/a/co$1;->a:Lcom/amap/api/services/a/co;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/amap/api/services/a/co;->a(Lcom/amap/api/services/a/co;I)I

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
    invoke-virtual {p0}, Lcom/amap/api/services/a/co$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
