.class public final Lcom/google/common/util/concurrent/j;
.super Ljava/lang/Object;
.source "MoreExecutors.java"


# direct methods
.method public static a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 392
    sget-object v0, Lcom/google/common/util/concurrent/c;->INSTANCE:Lcom/google/common/util/concurrent/c;

    return-object v0
.end method

.method static a(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/a;)Ljava/util/concurrent/Executor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/common/util/concurrent/a<",
            "*>;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .line 974
    invoke-static {p0}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    invoke-static {}, Lcom/google/common/util/concurrent/j;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-ne p0, v0, :cond_0

    return-object p0

    .line 980
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/j$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/j$1;-><init>(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/a;)V

    return-object v0
.end method
