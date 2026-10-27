.class public Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;
.super Ljava/lang/Object;
.source "BlockHandler.java"


# static fields
.field private static final MAIN_THREAD:Ljava/lang/String; = "main"

.field private static final TAG:Ljava/lang/String; = "BlockHandler"

.field private static final THREAD_TAG:Ljava/lang/String; = "-----"

.field private static mExecutorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mCallback:Lcom/xiaopeng/lib/bughunter/anr/Caton$Callback;

.field private mCollector:Lcom/xiaopeng/lib/bughunter/anr/Collector;

.field private mContext:Landroid/content/Context;

.field private mStackBuilder:Ljava/lang/StringBuilder;

.field private mStackInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 32
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/lib/bughunter/anr/Collector;Lcom/xiaopeng/lib/bughunter/anr/Caton$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "collector",
            "callback"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;->mStackBuilder:Ljava/lang/StringBuilder;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;->mStackInfoList:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;->mCollector:Lcom/xiaopeng/lib/bughunter/anr/Collector;

    .line 37
    iput-object p3, p0, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;->mCallback:Lcom/xiaopeng/lib/bughunter/anr/Caton$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;->checkAnr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;->mStackInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;)Ljava/lang/StringBuilder;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;->mStackBuilder:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;)Lcom/xiaopeng/lib/bughunter/anr/Caton$Callback;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;->mCallback:Lcom/xiaopeng/lib/bughunter/anr/Caton$Callback;

    return-object p0
.end method

.method private checkAnr()Ljava/lang/String;
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 97
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 100
    iget v2, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    iget-object v2, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 104
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BlockHandler"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/bughunter/anr/Config;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private varargs getRunnable([[Ljava/lang/StackTraceElement;[IZ[J)Ljava/lang/Runnable;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "stackTraces",
            "stacktraceRepeats",
            "needCheckAnr",
            "blockArgs"
        }
    .end annotation

    .line 54
    new-instance v6, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler$1;-><init>(Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;Z[[Ljava/lang/StackTraceElement;[I[J)V

    return-object v6
.end method


# virtual methods
.method public varargs notifyBlockOccurs(Z[J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "needCheckAnr",
            "blockArgs"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;->mCallback:Lcom/xiaopeng/lib/bughunter/anr/Caton$Callback;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;->mCollector:Lcom/xiaopeng/lib/bughunter/anr/Collector;

    invoke-interface {v0}, Lcom/xiaopeng/lib/bughunter/anr/Collector;->getStackTraceInfo()[[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;->mCollector:Lcom/xiaopeng/lib/bughunter/anr/Collector;

    invoke-interface {v1}, Lcom/xiaopeng/lib/bughunter/anr/Collector;->getStackTraceRepeats()[I

    move-result-object v1

    .line 48
    sget-object v2, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;->getRunnable([[Ljava/lang/StackTraceElement;[IZ[J)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public startMonitor()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;->mCollector:Lcom/xiaopeng/lib/bughunter/anr/Collector;

    invoke-interface {v0}, Lcom/xiaopeng/lib/bughunter/anr/Collector;->start()V

    return-void
.end method

.method public stopMonitor()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;->mCollector:Lcom/xiaopeng/lib/bughunter/anr/Collector;

    invoke-interface {v0}, Lcom/xiaopeng/lib/bughunter/anr/Collector;->stop()V

    return-void
.end method
