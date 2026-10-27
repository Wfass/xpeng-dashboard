.class public Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;
.super Ljava/lang/Object;
.source "ThreadHelper.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sLangPresenter:Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;->mHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;->mUIHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method public static instance()Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;
    .locals 2

    .line 20
    sget-object v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;->sLangPresenter:Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;->sLangPresenter:Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;

    invoke-direct {v1}, Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;-><init>()V

    sput-object v1, Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;->sLangPresenter:Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;->sLangPresenter:Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;

    return-object v0
.end method


# virtual methods
.method public postAsync(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    return-void
.end method

.method public postAsyncDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    return-void
.end method

.method public postUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method

.method public postUIThreadDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/infrastucture/utils/ThreadHelper;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    return-void
.end method
