.class public Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;
.super Landroid/os/Handler;
.source "XuiWorkHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XuiWorkHandler"

.field private static final mHandlerThread:Landroid/os/HandlerThread;

.field private static mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final sInstance:Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;


# instance fields
.field private final BLOCK_DISABLE:Z

.field private WAIT_TIME:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 22
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "XuiWorkHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 27
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 28
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->sInstance:Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    .line 29
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->sInstance:Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$XuiWorkHandler$SZJ8OSZWzW-rY2ODtsmrLfOpZCY;->INSTANCE:Lcom/xiaopeng/xuiservice/utils/-$$Lambda$XuiWorkHandler$SZJ8OSZWzW-rY2ODtsmrLfOpZCY;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->WAIT_TIME:J

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->BLOCK_DISABLE:Z

    .line 42
    return-void
.end method

.method public static createWorkHandler(Ljava/lang/String;)Landroid/os/Handler;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    .local v1, "h":Landroid/os/Handler;
    new-instance v2, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$XuiWorkHandler$qEV3Dr4Oe6bTajYf1prk73IhayM;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$XuiWorkHandler$qEV3Dr4Oe6bTajYf1prk73IhayM;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-object v1
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;
    .locals 1

    .line 67
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->sInstance:Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    return-object v0
.end method

.method static synthetic lambda$createWorkHandler$1(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 54
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_1
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "catch handler Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_1
.end method

.method static synthetic lambda$static$0()V
    .locals 4

    .line 32
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_1
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "XuiWorkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catch handler Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_1
.end method


# virtual methods
.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "uptimeMillis"    # J

    .line 72
    const/4 v0, 0x0

    .line 76
    .local v0, "result":Z
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->WAIT_TIME:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 78
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 81
    :try_start_2
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 82
    goto :goto_1

    .line 81
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 79
    :catch_0
    move-exception v1

    .line 81
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_0

    .line 84
    :cond_0
    const-string v1, "XuiWorkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessageAtTime trylock fail lost msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 89
    :goto_1
    goto :goto_2

    .line 86
    :catch_1
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "XuiWorkHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessageAtTime interrupted e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_2
    return v0
.end method
