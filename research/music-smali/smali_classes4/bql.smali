.class public Lbql;
.super Ljava/lang/Object;
.source "ThreadExecutorProxy.java"


# static fields
.field private static a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static c:Z

.field private static d:Landroid/os/Handler;

.field private static e:Lio/reactivex/Scheduler;

.field private static f:Landroid/os/Handler;

.field private static g:Lio/reactivex/Scheduler;

.field private static h:Landroid/os/Handler;

.field private static i:Landroid/os/MessageQueue;


# direct methods
.method public static a()V
    .locals 2

    .line 53
    sget-boolean v0, Lbql;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa

    .line 57
    new-instance v1, Lbql$1;

    invoke-direct {v1}, Lbql$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v0, Lbql;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 69
    new-instance v0, Lbql$2;

    invoke-direct {v0}, Lbql$2;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v0, Lbql;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 78
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "radio_music-single-async-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 80
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lbql;->d:Landroid/os/Handler;

    .line 81
    sget-object v0, Lbql;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/android/schedulers/AndroidSchedulers;->from(Landroid/os/Looper;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lbql;->e:Lio/reactivex/Scheduler;

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "radio_music-db-worker-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lbql;->f:Landroid/os/Handler;

    .line 86
    sget-object v0, Lbql;->f:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/android/schedulers/AndroidSchedulers;->from(Landroid/os/Looper;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lbql;->g:Lio/reactivex/Scheduler;

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lbql;->h:Landroid/os/Handler;

    .line 89
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    sput-object v0, Lbql;->i:Landroid/os/MessageQueue;

    const/4 v0, 0x1

    .line 91
    sput-boolean v0, Lbql;->c:Z

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 100
    sget-object v0, Lbql;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;J)V
    .locals 1

    .line 196
    sget-object v0, Lbql;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 1

    .line 109
    sget-object v0, Lbql;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 112
    sget-object v0, Lbql;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    sget-object v0, Lbql;->h:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Ljava/lang/Runnable;J)V
    .locals 1

    .line 273
    sget-object v0, Lbql;->h:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 1

    .line 132
    sget-object v0, Lbql;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static d(Ljava/lang/Runnable;)V
    .locals 1

    .line 155
    sget-object v0, Lbql;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 206
    invoke-static {p0}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object p0

    sget-object v0, Lbql;->g:Lio/reactivex/Scheduler;

    .line 207
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lbql$3;

    invoke-direct {v0}, Lbql$3;-><init>()V

    .line 208
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 227
    invoke-static {p0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Runnable;)V
    .locals 1

    .line 263
    sget-object v0, Lbql;->h:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static h(Ljava/lang/Runnable;)V
    .locals 1

    .line 277
    sget-object v0, Lbql;->h:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static i(Ljava/lang/Runnable;)V
    .locals 1

    .line 286
    new-instance v0, Lbql$4;

    invoke-direct {v0, p0}, Lbql$4;-><init>(Ljava/lang/Runnable;)V

    .line 294
    sget-object p0, Lbql;->i:Landroid/os/MessageQueue;

    invoke-virtual {p0, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method public static j(Ljava/lang/Runnable;)V
    .locals 2

    .line 301
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 302
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 304
    :cond_0
    invoke-static {p0}, Lbql;->g(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
