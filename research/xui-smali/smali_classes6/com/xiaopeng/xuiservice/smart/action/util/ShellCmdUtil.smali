.class public Lcom/xiaopeng/xuiservice/smart/action/util/ShellCmdUtil;
.super Ljava/lang/Object;
.source "ShellCmdUtil.java"


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x2710

.field private static final STATE_CONNECTED:I = 0x2

.field private static final STATE_CONNECTING:I = 0x1

.field private static final STATE_NEW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "xpAfterSales_xuiservice"

.field private static countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private static final state:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/action/util/ShellCmdUtil;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static connect()V
    .locals 3

    .line 82
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/action/util/ShellCmdUtil;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string/jumbo v0, "xpAfterSales_xuiservice"

    const-string v1, "start connect after sales service..."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method

.method private static execSH(Ljava/lang/String;)V
    .locals 8
    .param p0, "shDir"    # Ljava/lang/String;

    .line 66
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 67
    .local v0, "time":J
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 68
    .local v2, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    sput-object v2, Lcom/xiaopeng/xuiservice/smart/action/util/ShellCmdUtil;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 70
    const-wide/16 v3, 0x3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    .line 71
    .local v3, "success":Z
    if-eqz v3, :cond_0

    .line 72
    const-string/jumbo v4, "xpAfterSales_xuiservice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exec sh success: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", use: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_0
    const-string/jumbo v4, "xpAfterSales_xuiservice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exec sh timeout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "time":J
    .end local v2    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v3    # "success":Z
    :goto_0
    goto :goto_1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "xpAfterSales_xuiservice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exec sh fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static declared-synchronized run(Ljava/lang/String;)V
    .locals 9
    .param p0, "shDir"    # Ljava/lang/String;

    const-class v0, Lcom/xiaopeng/xuiservice/smart/action/util/ShellCmdUtil;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/smart/action/util/ShellCmdUtil;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 37
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/smart/action/util/ShellCmdUtil;->execSH(Ljava/lang/String;)V

    goto :goto_3

    .line 39
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 40
    .local v3, "start":J
    :goto_0
    sget-object v1, Lcom/xiaopeng/xuiservice/smart/action/util/ShellCmdUtil;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v7, 0x2710

    cmp-long v1, v5, v7

    if-lez v1, :cond_1

    .line 43
    const-string/jumbo v1, "xpAfterSales_xuiservice"

    const-string v5, "connect after sales service timeout"

    invoke-static {v1, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    goto :goto_2

    .line 47
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/action/util/ShellCmdUtil;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    const-wide/16 v5, 0x64

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :goto_1
    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 52
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 56
    :cond_2
    :goto_2
    sget-object v1, Lcom/xiaopeng/xuiservice/smart/action/util/ShellCmdUtil;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 57
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/smart/action/util/ShellCmdUtil;->execSH(Ljava/lang/String;)V

    goto :goto_3

    .line 59
    :cond_3
    const-string/jumbo v1, "xpAfterSales_xuiservice"

    const-string v2, "connected service fail."

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .end local v3    # "start":J
    :goto_3
    monitor-exit v0

    return-void

    .line 35
    .end local p0    # "shDir":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
