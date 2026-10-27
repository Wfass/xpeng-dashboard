.class public Lcom/xiaopeng/xuiservice/utils/UiHandler;
.super Landroid/os/Handler;
.source "UiHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UiHandler"

.field private static mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final sInstance:Lcom/xiaopeng/xuiservice/utils/UiHandler;


# instance fields
.field private final BLOCK_DISABLE:Z

.field private WAIT_TIME:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/UiHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/UiHandler;->sInstance:Lcom/xiaopeng/xuiservice/utils/UiHandler;

    .line 22
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/UiHandler;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 35
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/UiHandler;->sInstance:Lcom/xiaopeng/xuiservice/utils/UiHandler;

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$UiHandler$-SqIVqBb2aIZSThXoGn_NsqrR_I;->INSTANCE:Lcom/xiaopeng/xuiservice/utils/-$$Lambda$UiHandler$-SqIVqBb2aIZSThXoGn_NsqrR_I;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/utils/UiHandler;->WAIT_TIME:J

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/utils/UiHandler;->BLOCK_DISABLE:Z

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .line 31
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/utils/UiHandler;->WAIT_TIME:J

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/utils/UiHandler;->BLOCK_DISABLE:Z

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;
    .locals 1

    .line 53
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/UiHandler;->sInstance:Lcom/xiaopeng/xuiservice/utils/UiHandler;

    return-object v0
.end method

.method static synthetic lambda$static$0()V
    .locals 6

    .line 38
    :goto_0
    :try_start_0
    const-string v0, "UiHandler"

    const-string v1, "looper loop enter"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e2":Ljava/lang/NullPointerException;
    const-string v1, "UiHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catch UiHandler Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",trace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[\\t\\n\\r]"

    const-string v5, "##"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e2":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 40
    :catch_1
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "UiHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catch UiHandler Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",trace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[\\t\\n\\r]"

    const-string v5, "##"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    goto :goto_0
.end method


# virtual methods
.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "uptimeMillis"    # J

    .line 58
    const/4 v0, 0x0

    .line 63
    .local v0, "result":Z
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/UiHandler;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/utils/UiHandler;->WAIT_TIME:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 65
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 68
    :try_start_2
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/UiHandler;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 69
    goto :goto_1

    .line 68
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/xiaopeng/xuiservice/utils/UiHandler;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 66
    :catch_0
    move-exception v1

    .line 68
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/UiHandler;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_0

    .line 71
    :cond_0
    const-string v1, "UiHandler"

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

    .line 76
    :goto_1
    goto :goto_2

    .line 73
    :catch_1
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "UiHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessageAtTime interrupted e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 81
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_2
    return v0
.end method
