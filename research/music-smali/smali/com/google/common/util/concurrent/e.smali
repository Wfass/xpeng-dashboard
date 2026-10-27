.class public final Lcom/google/common/util/concurrent/e;
.super Lcom/google/common/util/concurrent/g;
.source "Futures.java"


# direct methods
.method public static a(Lcom/google/common/util/concurrent/i;Lcom/google/common/base/h;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/i<",
            "TI;>;",
            "Lcom/google/common/base/h<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/i<",
            "TO;>;"
        }
    .end annotation

    .line 420
    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/b;->a(Lcom/google/common/util/concurrent/i;Lcom/google/common/base/h;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/i;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lcom/google/common/util/concurrent/i<",
            "TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 130
    sget-object p0, Lcom/google/common/util/concurrent/h$b;->a:Lcom/google/common/util/concurrent/h$b;

    return-object p0

    .line 133
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/h$b;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/h$b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/common/util/concurrent/i<",
            "TV;>;"
        }
    .end annotation

    .line 144
    invoke-static {p0}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v0, Lcom/google/common/util/concurrent/h$a;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/h$a;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1030
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v1, "Future was expected to be done: %s"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/o;->b(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1031
    invoke-static {p0}, Lcom/google/common/util/concurrent/l;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
