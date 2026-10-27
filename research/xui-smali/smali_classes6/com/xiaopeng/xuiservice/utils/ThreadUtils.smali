.class public Lcom/xiaopeng/xuiservice/utils/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/utils/ThreadUtils$RunnableWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XThreadUtils"

.field private static final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final workers:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 101
    .local v0, "number":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ThreadUtils$Q6w-lUu8hmdcWcecOOksWZNY7nE;

    invoke-direct {v8, v0}, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ThreadUtils$Q6w-lUu8hmdcWcecOOksWZNY7nE;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v2, 0x3

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v9, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->workers:Ljava/util/concurrent/ExecutorService;

    .line 111
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ThreadUtils$Wrw302TFfH0xoppLUKJJNV7xD7w;->INSTANCE:Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ThreadUtils$Wrw302TFfH0xoppLUKJJNV7xD7w;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 117
    .end local v0    # "number":Ljava/util/concurrent/atomic/AtomicInteger;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$schedule$0(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "command"    # Ljava/lang/Runnable;

    .line 83
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$scheduleAtFixedRate$1(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "command"    # Ljava/lang/Runnable;

    .line 90
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$static$2(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .param p0, "number"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 105
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 106
    .local v0, "thread":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XUIService worker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 107
    const-string v1, "XThreadUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-object v0
.end method

.method static synthetic lambda$static$3(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 112
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 113
    .local v0, "thread":Ljava/lang/Thread;
    const-string v1, "Single XUIService scheduler"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 114
    const-string v1, "XThreadUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-object v0
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "command"    # Ljava/lang/Runnable;

    .line 46
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->workers:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/ThreadUtils$RunnableWrapper;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils$RunnableWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method

.method public static schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "command"    # Ljava/lang/Runnable;
    .param p1, "delayMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J)",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 78
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public static schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2
    .param p0, "command"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ThreadUtils$5HlxW1oGCqPdn5Z3K9Rc_aok7hg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ThreadUtils$5HlxW1oGCqPdn5Z3K9Rc_aok7hg;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public static scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .param p0, "command"    # Ljava/lang/Runnable;
    .param p1, "initialDelay"    # J
    .param p3, "period"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ThreadUtils$VWzB5o7l-0o6xilToysUdRPazu0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ThreadUtils$VWzB5o7l-0o6xilToysUdRPazu0;-><init>(Ljava/lang/Runnable;)V

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public static submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p0, "command"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->workers:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 67
    .local p0, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->workers:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
