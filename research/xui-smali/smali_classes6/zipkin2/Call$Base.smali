.class public abstract Lzipkin2/Call$Base;
.super Lzipkin2/Call;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Base"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lzipkin2/Call<",
        "TV;>;"
    }
.end annotation


# instance fields
.field volatile canceled:Z

.field executed:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 367
    .local p0, "this":Lzipkin2/Call$Base;, "Lzipkin2/Call$Base<TV;>;"
    invoke-direct {p0}, Lzipkin2/Call;-><init>()V

    .line 368
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 401
    .local p0, "this":Lzipkin2/Call$Base;, "Lzipkin2/Call$Base<TV;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzipkin2/Call$Base;->canceled:Z

    .line 402
    invoke-virtual {p0}, Lzipkin2/Call$Base;->doCancel()V

    .line 403
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 363
    .local p0, "this":Lzipkin2/Call$Base;, "Lzipkin2/Call$Base<TV;>;"
    invoke-super {p0}, Lzipkin2/Call;->clone()Lzipkin2/Call;

    move-result-object v0

    return-object v0
.end method

.method protected doCancel()V
    .locals 0

    .line 406
    .local p0, "this":Lzipkin2/Call$Base;, "Lzipkin2/Call$Base<TV;>;"
    return-void
.end method

.method protected abstract doEnqueue(Lzipkin2/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/Callback<",
            "TV;>;)V"
        }
    .end annotation
.end method

.method protected abstract doExecute()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected doIsCanceled()Z
    .locals 1

    .line 413
    .local p0, "this":Lzipkin2/Call$Base;, "Lzipkin2/Call$Base<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final enqueue(Lzipkin2/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/Callback<",
            "TV;>;)V"
        }
    .end annotation

    .line 386
    .local p0, "this":Lzipkin2/Call$Base;, "Lzipkin2/Call$Base<TV;>;"
    .local p1, "callback":Lzipkin2/Callback;, "Lzipkin2/Callback<TV;>;"
    monitor-enter p0

    .line 387
    :try_start_0
    iget-boolean v0, p0, Lzipkin2/Call$Base;->executed:Z

    if-nez v0, :cond_1

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzipkin2/Call$Base;->executed:Z

    .line 389
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    invoke-virtual {p0}, Lzipkin2/Call$Base;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lzipkin2/Callback;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {p0, p1}, Lzipkin2/Call$Base;->doEnqueue(Lzipkin2/Callback;)V

    .line 396
    :goto_0
    return-void

    .line 387
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final execute()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    .local p0, "this":Lzipkin2/Call$Base;, "Lzipkin2/Call$Base<TV;>;"
    monitor-enter p0

    .line 372
    :try_start_0
    iget-boolean v0, p0, Lzipkin2/Call$Base;->executed:Z

    if-nez v0, :cond_1

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzipkin2/Call$Base;->executed:Z

    .line 374
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    invoke-virtual {p0}, Lzipkin2/Call$Base;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lzipkin2/Call$Base;->doExecute()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 377
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final isCanceled()Z
    .locals 1

    .line 409
    .local p0, "this":Lzipkin2/Call$Base;, "Lzipkin2/Call$Base<TV;>;"
    iget-boolean v0, p0, Lzipkin2/Call$Base;->canceled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lzipkin2/Call$Base;->doIsCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
