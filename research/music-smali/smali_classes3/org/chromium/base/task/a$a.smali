.class Lorg/chromium/base/task/a$a;
.super Ljava/util/concurrent/FutureTask;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/task/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/chromium/base/task/a;


# direct methods
.method constructor <init>(Lorg/chromium/base/task/a;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TResult;>;)V"
        }
    .end annotation

    .line 389
    iput-object p1, p0, Lorg/chromium/base/task/a$a;->a:Lorg/chromium/base/task/a;

    .line 390
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/Class;
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/chromium/base/task/a$a;->a:Lorg/chromium/base/task/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected done()V
    .locals 3

    .line 400
    :try_start_0
    iget-object v0, p0, Lorg/chromium/base/task/a$a;->a:Lorg/chromium/base/task/a;

    invoke-virtual {p0}, Lorg/chromium/base/task/a$a;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/base/task/a;->b(Lorg/chromium/base/task/a;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    iget-object v0, p0, Lorg/chromium/base/task/a$a;->a:Lorg/chromium/base/task/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/base/task/a;->b(Lorg/chromium/base/task/a;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 404
    new-instance v1, Ljava/lang/RuntimeException;

    .line 405
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "An error occurred while executing doInBackground()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 402
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AsyncTask"

    invoke-static {v2, v0, v1}, Lorg/chromium/base/e;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
