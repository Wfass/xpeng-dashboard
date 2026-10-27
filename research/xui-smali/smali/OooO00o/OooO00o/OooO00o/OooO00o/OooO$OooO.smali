.class public abstract LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OooO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final OooO00o:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile OooO0O0:Z

.field public volatile OooO0OO:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;->OooO00o:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public abstract OooO00o()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract OooO00o(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract OooO00o(Ljava/lang/Throwable;)V
.end method

.method public final OooO0O0()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO;->OooO0o:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0;

    invoke-direct {v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0;-><init>()V

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO;->OooO0o:Ljava/util/concurrent/Executor;

    .line 9
    :cond_0
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO;->OooO0o:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public OooO0OO()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO;->OooO0OO:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;->OooO0O0:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;->OooO0OO:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;->OooO00o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;->OooO0OO:Ljava/lang/Thread;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;->OooO00o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v2, :cond_4

    return-void

    .line 12
    :cond_2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;->OooO00o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 13
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;->OooO0OO:Ljava/lang/Thread;

    .line 29
    :cond_4
    :goto_0
    :try_start_0
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;->OooO00o()Ljava/lang/Object;

    move-result-object v0

    .line 30
    iget-boolean v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;->OooO0O0:Z

    if-eqz v1, :cond_6

    .line 31
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;->OooO00o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v1, v2, :cond_5

    return-void

    .line 32
    :cond_5
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;->OooO0O0()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v3, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO$OooO00o;

    invoke-direct {v3, p0, v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO$OooO00o;-><init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 39
    :cond_6
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;->OooO00o:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    .line 40
    :cond_7
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;->OooO0O0()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v3, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO$OooO0O0;

    invoke-direct {v3, p0, v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO$OooO0O0;-><init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 51
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;->OooO00o:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    .line 52
    :cond_8
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;->OooO0O0()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO$OooO0OO;

    invoke-direct {v2, p0, v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO$OooO0OO;-><init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :catch_0
    move-exception v0

    .line 53
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;->OooO00o:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    :goto_1
    return-void
.end method
