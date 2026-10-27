.class public final Lzipkin2/reporter/AwaitableCallback;
.super Ljava/lang/Object;
.source "AwaitableCallback.java"

# interfaces
.implements Lzipkin2/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzipkin2/Callback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final countDown:Ljava/util/concurrent/CountDownLatch;

.field final throwable:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lzipkin2/reporter/AwaitableCallback;->countDown:Ljava/util/concurrent/CountDownLatch;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lzipkin2/reporter/AwaitableCallback;->throwable:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public await()V
    .locals 4

    .line 34
    const/4 v0, 0x0

    .line 38
    .local v0, "interrupted":Z
    :goto_0
    :try_start_0
    iget-object v1, p0, Lzipkin2/reporter/AwaitableCallback;->countDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 39
    iget-object v1, p0, Lzipkin2/reporter/AwaitableCallback;->throwable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .local v1, "result":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 40
    :cond_0
    return-void

    .line 41
    :cond_1
    :try_start_1
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_5

    .line 42
    instance-of v2, v1, Ljava/lang/Error;

    if-nez v2, :cond_3

    .line 43
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 45
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 42
    :cond_3
    move-object v2, v1

    check-cast v2, Ljava/lang/Error;

    throw v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .end local v1    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 55
    :cond_4
    throw v1

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 49
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_5
    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 63
    iget-object v0, p0, Lzipkin2/reporter/AwaitableCallback;->throwable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lzipkin2/reporter/AwaitableCallback;->countDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 65
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lzipkin2/reporter/AwaitableCallback;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1
    .param p1, "ignored"    # Ljava/lang/Void;

    .line 59
    iget-object v0, p0, Lzipkin2/reporter/AwaitableCallback;->countDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 60
    return-void
.end method
