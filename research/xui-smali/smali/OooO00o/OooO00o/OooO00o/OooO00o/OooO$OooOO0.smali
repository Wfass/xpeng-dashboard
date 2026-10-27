.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooOO0"
.end annotation


# instance fields
.field public final OooO00o:Ljava/util/concurrent/atomic/AtomicInteger;

.field public OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;->OooO00o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    invoke-static {p6, p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;)LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;

    .line 16
    iput-object p6, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;

    return-void
.end method

.method public static OooO00o(II)Ljava/util/concurrent/ExecutorService;
    .locals 24

    move/from16 v2, p0

    move/from16 v0, p1

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x8

    if-eq v2, v4, :cond_3

    const/4 v4, -0x4

    if-eq v2, v4, :cond_2

    const/4 v4, -0x2

    if-eq v2, v4, :cond_1

    const/4 v1, -0x1

    if-eq v2, v1, :cond_0

    .line 1
    new-instance v8, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;

    invoke-direct {v6}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;-><init>()V

    new-instance v7, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fixed("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-direct {v7, v1, v0, v3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O;-><init>(Ljava/lang/String;IZ)V

    const-wide/16 v3, 0x0

    .line 3
    move-object v0, v8

    move v1, v2

    invoke-direct/range {v0 .. v7}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;-><init>(IIJLjava/util/concurrent/TimeUnit;LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;Ljava/util/concurrent/ThreadFactory;)V

    .line 34
    move-object v2, v8

    goto/16 :goto_0

    .line 4
    :cond_0
    new-instance v1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v15, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;

    invoke-direct {v15}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;-><init>()V

    new-instance v2, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O;

    const-string v4, "single"

    .line 5
    invoke-direct {v2, v4, v0, v3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O;-><init>(Ljava/lang/String;IZ)V

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    .line 6
    move-object v9, v1

    move-object/from16 v16, v2

    invoke-direct/range {v9 .. v16}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;-><init>(IIJLjava/util/concurrent/TimeUnit;LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;Ljava/util/concurrent/ThreadFactory;)V

    .line 34
    move-object v2, v1

    goto :goto_0

    .line 12
    :cond_1
    new-instance v2, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;

    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v4, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;

    invoke-direct {v4, v1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;-><init>(Z)V

    new-instance v1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O;

    const-string v5, "cached"

    .line 13
    invoke-direct {v1, v5, v0, v3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O;-><init>(Ljava/lang/String;IZ)V

    const/16 v17, 0x0

    const/16 v18, 0x80

    const-wide/16 v19, 0x3c

    .line 14
    move-object/from16 v16, v2

    move-object/from16 v22, v4

    move-object/from16 v23, v1

    invoke-direct/range {v16 .. v23}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;-><init>(IIJLjava/util/concurrent/TimeUnit;LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;Ljava/util/concurrent/ThreadFactory;)V

    goto :goto_0

    .line 20
    :cond_2
    new-instance v2, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;

    .line 21
    sget v4, LOooO00o/OooO00o/OooO00o/OooO00o/OooO;->OooO0Oo:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v7, v4, 0x1

    .line 22
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;

    invoke-direct {v11}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;-><init>()V

    new-instance v12, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O;

    const-string v1, "io"

    .line 23
    invoke-direct {v12, v1, v0, v3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O;-><init>(Ljava/lang/String;IZ)V

    const-wide/16 v8, 0x1e

    .line 24
    move-object v5, v2

    move v6, v7

    invoke-direct/range {v5 .. v12}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;-><init>(IIJLjava/util/concurrent/TimeUnit;LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;Ljava/util/concurrent/ThreadFactory;)V

    goto :goto_0

    .line 30
    :cond_3
    new-instance v2, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;

    .line 31
    sget v4, LOooO00o/OooO00o/OooO00o/OooO00o/OooO;->OooO0Oo:I

    add-int/lit8 v14, v4, 0x1

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v15, v4, 0x1

    .line 32
    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v4, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;

    invoke-direct {v4, v1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;-><init>(Z)V

    new-instance v1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O;

    const-string v5, "cpu"

    .line 33
    invoke-direct {v1, v5, v0, v3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O;-><init>(Ljava/lang/String;IZ)V

    const-wide/16 v16, 0x1e

    .line 34
    move-object v13, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v1

    invoke-direct/range {v13 .. v20}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;-><init>(IIJLjava/util/concurrent/TimeUnit;LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;Ljava/util/concurrent/ThreadFactory;)V

    :goto_0
    return-object v2
.end method


# virtual methods
.method public afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;->OooO00o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;->OooO00o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;->OooO00o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "ThreadUtils"

    const-string v1, "This will not happen!"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;->OooO00o(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Argument \'command\' of type Runnable (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
