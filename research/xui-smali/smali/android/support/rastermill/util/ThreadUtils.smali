.class public Landroid/support/rastermill/util/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# static fields
.field protected static sMainHandler:Landroid/os/Handler;

.field private static sWorkerHandler:Landroid/os/Handler;

.field private static sWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/support/rastermill/util/ThreadUtils;->sMainHandler:Landroid/os/Handler;

    .line 17
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "lib_anim_webpWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/rastermill/util/ThreadUtils;->sWorkerThread:Landroid/os/HandlerThread;

    .line 18
    sget-object v0, Landroid/support/rastermill/util/ThreadUtils;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 19
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Landroid/support/rastermill/util/ThreadUtils;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/support/rastermill/util/ThreadUtils;->sWorkerHandler:Landroid/os/Handler;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static postMain(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;

    .line 35
    if-eqz p0, :cond_0

    .line 36
    sget-object v0, Landroid/support/rastermill/util/ThreadUtils;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    :cond_0
    return-void
.end method

.method public static postWorker(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;

    .line 23
    if-eqz p0, :cond_0

    .line 24
    sget-object v0, Landroid/support/rastermill/util/ThreadUtils;->sWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    :cond_0
    return-void
.end method

.method public static removeMain(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;

    .line 41
    if-eqz p0, :cond_0

    .line 42
    sget-object v0, Landroid/support/rastermill/util/ThreadUtils;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static removeWorker(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;

    .line 29
    if-eqz p0, :cond_0

    .line 30
    sget-object v0, Landroid/support/rastermill/util/ThreadUtils;->sWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    :cond_0
    return-void
.end method
