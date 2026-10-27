.class public Lcom/xiaopeng/xuiservice/debug/WatchDog;
.super Ljava/lang/Object;
.source "WatchDog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList;,
        Lcom/xiaopeng/xuiservice/debug/WatchDog$MyIdleHandler;,
        Lcom/xiaopeng/xuiservice/debug/WatchDog$HandlerLooperInfo;,
        Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;,
        Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;,
        Lcom/xiaopeng/xuiservice/debug/WatchDog$WatchDogHolder;
    }
.end annotation


# static fields
.field private static final BINDER_CALL_THRESHOLD:J = 0x3e8L

.field private static final CHECK_BARRIER_MAX_COUNT:I = 0x3

.field private static final CHECK_INTERVAL_MS:I = 0x7d0

.field private static final DUMP_INTERVAL_MS:J = 0x2710L

.field private static final LOGGER_BEGIN:Ljava/lang/String; = ">>>>> Dispatching to"

.field private static final LOGGER_END:Ljava/lang/String; = "<<<<< Finished to"

.field private static final LOOPER_DUMP_THRESHOLD:J = 0xbb8L

.field private static final LOOPER_EXECUTE_THRESHOLD:J = 0x1f4L

.field private static final MAX_BINDER_RECORD:I = 0x20

.field private static final MAX_TRACE_COUNT:I = 0x64

.field private static final MSG_BINDER_ENTER:I = 0x1

.field private static final MSG_BINDER_ENTER_CHECK:I = 0x3

.field private static final MSG_BINDER_LEAVE:I = 0x2

.field private static final MSG_CAR_CALLBACK_ENTER:I = 0x6

.field private static final MSG_CAR_CALLBACK_ENTER_CHECK:I = 0x8

.field private static final MSG_CAR_CALLBACK_LEAVE:I = 0x7

.field private static final MSG_IDLE_HANDLER_REPLACE:I = 0x3

.field private static final MSG_LONG_DISPATCH_TEST:I = 0x4

.field private static final MSG_SYNCBARRIER_CHECK:I = 0x4

.field private static final MSG_TEST_ASYNC:I = 0x1

.field private static final MSG_TEST_SYNC:I = 0x2

.field private static final MSG_UI_THREAD_CHECK:I = 0x5

.field private static final MSG_WORK_HANDLER_THREAD_CHECK:I = 0x9

.field private static final PROP_DUMP_SYS_SERVER:Ljava/lang/String; = "persist.sys.xui.dump_server"

.field private static final REASON_BINDER_TIMEOUT:Ljava/lang/String; = "binderTmo"

.field private static final REASON_CAR_CALLBACK_TIMEOUT:Ljava/lang/String; = "carCbTmo"

.field private static final REASON_UI_THREAD_TIMEOUT:Ljava/lang/String; = "uiTmo"

.field private static final REASON_WORK_THREAD_TIMEOUT:Ljava/lang/String; = "workThTmo"

.field private static final TAG:Ljava/lang/String; = "XuiWatchDog"

.field private static final TRACE_COUNT_PROP:Ljava/lang/String; = "sys.xiaopeng.xuitrace"

.field private static final TRACE_FILE_PATH:Ljava/lang/String; = "/data/Log/log0/xui/xuitrace_"

.field private static final XUI_FILE_DIR:Ljava/lang/String; = "/data/Log/log0/xui"

.field private static dumpSystemServer:Z

.field private static idleHandlerArrayList:Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastDumpTick:J

.field private static mWatchdogHandler:Landroid/os/Handler;


# instance fields
.field private barrierCount:I

.field private mBinderRecordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCarCallbackRecordSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mMessagesfield:Ljava/lang/reflect/Field;

.field private mWatchdogTh:Landroid/os/HandlerThread;

.field private mainHandler:Landroid/os/Handler;

.field private mainLooperPrinter:Landroid/util/Printer;

.field private mainQueue:Landroid/os/MessageQueue;

.field private syncBarrierCheckRunner:Ljava/lang/Runnable;

.field private final tickMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/xuiservice/debug/WatchDog$HandlerLooperInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogHandler:Landroid/os/Handler;

    .line 41
    const-string v1, "persist.sys.xui.dump_server"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/xiaopeng/xuiservice/debug/WatchDog;->dumpSystemServer:Z

    .line 45
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mLastDumpTick:J

    .line 535
    new-instance v1, Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList;-><init>(Lcom/xiaopeng/xuiservice/debug/WatchDog$1;)V

    sput-object v1, Lcom/xiaopeng/xuiservice/debug/WatchDog;->idleHandlerArrayList:Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogTh:Landroid/os/HandlerThread;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mBinderRecordMap:Ljava/util/HashMap;

    .line 44
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mCarCallbackRecordSet:Ljava/util/Set;

    .line 325
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mainQueue:Landroid/os/MessageQueue;

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->barrierCount:I

    .line 335
    new-instance v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/xiaopeng/xuiservice/debug/WatchDog$2;-><init>(Lcom/xiaopeng/xuiservice/debug/WatchDog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mainHandler:Landroid/os/Handler;

    .line 364
    new-instance v0, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$A57wfwwe5VGvlL5YxY20S1bILhc;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$A57wfwwe5VGvlL5YxY20S1bILhc;-><init>(Lcom/xiaopeng/xuiservice/debug/WatchDog;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->syncBarrierCheckRunner:Ljava/lang/Runnable;

    .line 372
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->tickMap:Ljava/util/Map;

    .line 380
    new-instance v0, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$sJky9918lOP3sutzCGxglC5dabc;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$sJky9918lOP3sutzCGxglC5dabc;-><init>(Lcom/xiaopeng/xuiservice/debug/WatchDog;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mainLooperPrinter:Landroid/util/Printer;

    .line 221
    const-string/jumbo v0, "watchdog"

    new-instance v2, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$3lpSXfhKzuTq-O-V-vto8VfHyGk;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$3lpSXfhKzuTq-O-V-vto8VfHyGk;-><init>(Lcom/xiaopeng/xuiservice/debug/WatchDog;)V

    invoke-static {v0, v2}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 224
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "XuiWatchDog"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogTh:Landroid/os/HandlerThread;

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogTh:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 226
    new-instance v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$1;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogTh:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/xiaopeng/xuiservice/debug/WatchDog$1;-><init>(Lcom/xiaopeng/xuiservice/debug/WatchDog;Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogHandler:Landroid/os/Handler;

    .line 234
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mainLooperPrinter:Landroid/util/Printer;

    invoke-virtual {v0, v2}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 236
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mainLooperPrinter:Landroid/util/Printer;

    invoke-virtual {v0, v2}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mainQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mMessages"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mMessagesfield:Ljava/lang/reflect/Field;

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mMessagesfield:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "XuiWatchDog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 246
    .local v0, "checkMsg":Landroid/os/Message;
    sget-object v1, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 247
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/debug/WatchDog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/debug/WatchDog$1;

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/debug/WatchDog;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/debug/WatchDog;
    .param p1, "x1"    # Landroid/os/Message;

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->watchdogHandleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$302(Lcom/xiaopeng/xuiservice/debug/WatchDog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/debug/WatchDog;
    .param p1, "x1"    # I

    .line 36
    iput p1, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->barrierCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/xiaopeng/xuiservice/debug/WatchDog;)I
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/debug/WatchDog;

    .line 36
    iget v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->barrierCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->barrierCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/debug/WatchDog;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/debug/WatchDog;

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->idleHandlerListReplace()V

    return-void
.end method

.method static synthetic access$600()Landroid/os/Handler;
    .locals 1

    .line 36
    sget-object v0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700()Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList;
    .locals 1

    .line 36
    sget-object v0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->idleHandlerArrayList:Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList;

    return-object v0
.end method

.method private detectSyncBarrier()Z
    .locals 5

    .line 497
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 498
    .local v0, "asyncMessage":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 499
    iput v1, v0, Landroid/os/Message;->what:I

    .line 500
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 501
    .local v2, "syncNormalMessage":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 503
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 505
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 507
    const-wide/16 v3, 0x14

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    goto :goto_0

    .line 508
    :catch_0
    move-exception v3

    .line 512
    :goto_0
    iget v3, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->barrierCount:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 513
    return v1

    .line 515
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private dirMake()V
    .locals 4

    .line 315
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/Log/log0/xui"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    goto :goto_0

    .line 319
    :catch_0
    move-exception v1

    .line 320
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XuiWatchDog"

    const-string v3, "mkdir fail"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private dumpStack(Ljava/lang/String;)V
    .locals 8
    .param p1, "reason"    # Ljava/lang/String;

    .line 603
    const-string v0, "sys.xiaopeng.xuitrace"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 604
    .local v0, "traceCount":I
    const-string v1, "XuiWatchDog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try to dump stack,count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",max="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    if-ge v0, v3, :cond_1

    .line 606
    if-nez v0, :cond_0

    .line 607
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->dirMake()V

    .line 609
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 610
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 611
    .local v2, "curDate":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/Log/log0/xui/xuitrace_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v3, v4, v5}, Landroid/os/Debug;->dumpJavaBacktraceToFileTimeout(ILjava/lang/String;I)Z

    .line 612
    add-int/lit8 v0, v0, 0x1

    .line 613
    const-string v3, "sys.xiaopeng.xuitrace"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    sget-boolean v3, Lcom/xiaopeng/xuiservice/debug/WatchDog;->dumpSystemServer:Z

    if-eqz v3, :cond_1

    .line 615
    const-string v3, "com.android.server.am.DUMPSTACK"

    .line 616
    .local v3, "action":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "XuiWatchDog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "trigger system_server trace by broadcast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 621
    .end local v1    # "format":Ljava/text/SimpleDateFormat;
    .end local v2    # "curDate":Ljava/lang/String;
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;
    .locals 1

    .line 250
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog$WatchDogHolder;->access$200()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v0

    return-object v0
.end method

.method private getSyncBarrierToken()I
    .locals 5

    .line 454
    const/4 v0, 0x0

    .line 456
    .local v0, "mMessage":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mMessagesfield:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mainQueue:Landroid/os/MessageQueue;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 459
    goto :goto_0

    .line 457
    :catch_0
    move-exception v1

    .line 458
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XuiWatchDog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncBarrierCheck e ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_0

    .line 461
    iget v1, v0, Landroid/os/Message;->arg1:I

    return v1

    .line 463
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method private idleHandlerListReplace()V
    .locals 6

    .line 539
    :try_start_0
    const-class v0, Landroid/os/MessageQueue;

    const-string v1, "mIdleHandlers"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 540
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 541
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mainQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 542
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/MessageQueue$IdleHandler;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 546
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 547
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v3, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 548
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mainHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/MessageQueue$IdleHandler;>;"
    .end local v3    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 544
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/MessageQueue$IdleHandler;>;"
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mainQueue:Landroid/os/MessageQueue;

    sget-object v3, Lcom/xiaopeng/xuiservice/debug/WatchDog;->idleHandlerArrayList:Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/MessageQueue$IdleHandler;>;"
    :goto_1
    goto :goto_2

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XuiWatchDog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "idleHandlerListReplace,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method static synthetic lambda$dump$3()Z
    .locals 2

    .line 293
    const-wide/16 v0, 0x5dc

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 297
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$dump$4(Lcom/xiaopeng/xuiservice/debug/WatchDog;)V
    .locals 1

    .line 305
    const/16 v0, 0x270f

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->removeSyncBarrier(I)V

    .line 306
    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/xiaopeng/xuiservice/debug/WatchDog;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 222
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public static synthetic lambda$new$5(Lcom/xiaopeng/xuiservice/debug/WatchDog;)V
    .locals 0

    .line 365
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->syncBarrierCheck()V

    .line 366
    return-void
.end method

.method public static synthetic lambda$new$6(Lcom/xiaopeng/xuiservice/debug/WatchDog;Ljava/lang/String;)V
    .locals 7
    .param p1, "x"    # Ljava/lang/String;

    .line 381
    if-nez p1, :cond_0

    .line 382
    const-string v0, "XuiWatchDog"

    const-string v1, "mainLooperPrinter,x is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void

    .line 386
    :cond_0
    const/4 v0, 0x5

    .line 387
    .local v0, "msg":I
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 389
    const/16 v0, 0x9

    .line 394
    :cond_1
    const-string v1, ">>>>> Dispatching to"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 396
    .local v1, "looperLogTick":J
    sget-object v3, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogHandler:Landroid/os/Handler;

    sget-object v4, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogHandler:Landroid/os/Handler;

    .line 397
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 396
    invoke-virtual {v4, v0, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 399
    new-instance v3, Lcom/xiaopeng/xuiservice/debug/WatchDog$HandlerLooperInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/xiaopeng/xuiservice/debug/WatchDog$HandlerLooperInfo;-><init>(Lcom/xiaopeng/xuiservice/debug/WatchDog$1;)V

    .line 400
    .local v3, "looperLog":Lcom/xiaopeng/xuiservice/debug/WatchDog$HandlerLooperInfo;
    iput-wide v1, v3, Lcom/xiaopeng/xuiservice/debug/WatchDog$HandlerLooperInfo;->looperTick:J

    .line 401
    iput-object p1, v3, Lcom/xiaopeng/xuiservice/debug/WatchDog$HandlerLooperInfo;->looperMessage:Ljava/lang/String;

    .line 402
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->tickMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .end local v1    # "looperLogTick":J
    .end local v3    # "looperLog":Lcom/xiaopeng/xuiservice/debug/WatchDog$HandlerLooperInfo;
    goto :goto_0

    :cond_2
    const-string v1, "<<<<< Finished to"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 404
    sget-object v1, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 405
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->tickMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/debug/WatchDog$HandlerLooperInfo;

    .line 406
    .local v1, "looperLog":Lcom/xiaopeng/xuiservice/debug/WatchDog$HandlerLooperInfo;
    if-eqz v1, :cond_4

    .line 407
    const-wide/16 v2, 0x0

    iget-wide v4, v1, Lcom/xiaopeng/xuiservice/debug/WatchDog$HandlerLooperInfo;->looperTick:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 408
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/xiaopeng/xuiservice/debug/WatchDog$HandlerLooperInfo;->looperTick:J

    sub-long/2addr v2, v4

    .line 409
    .local v2, "deltaMs":J
    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 410
    const-string v4, "XuiWatchDog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "##looper done cost "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms,,log:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",msg type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .end local v2    # "deltaMs":J
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->tickMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .end local v1    # "looperLog":Lcom/xiaopeng/xuiservice/debug/WatchDog$HandlerLooperInfo;
    :cond_4
    :goto_0
    return-void
.end method

.method public static synthetic lambda$watchdogHandleMessage$0(Lcom/xiaopeng/xuiservice/debug/WatchDog;Ljava/lang/String;)V
    .locals 0
    .param p1, "dumpReason"    # Ljava/lang/String;

    .line 185
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->dumpStack(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public static synthetic lambda$watchdogHandleMessage$1(Lcom/xiaopeng/xuiservice/debug/WatchDog;)V
    .locals 1

    .line 203
    const-string v0, "carCbTmo"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->dumpStack(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method private postSyncBarrier()I
    .locals 5

    .line 521
    const/4 v0, -0x1

    .line 523
    .local v0, "token":I
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mainQueue:Landroid/os/MessageQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "postSyncBarrier"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 524
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 525
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mainQueue:Landroid/os/MessageQueue;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 528
    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 526
    :catch_0
    move-exception v1

    .line 527
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XuiWatchDog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postSyncBarrier e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private removeSyncBarrier(I)V
    .locals 1
    .param p1, "token"    # I

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mainQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 494
    return-void
.end method

.method private startBarrierLeakCheck(I)V
    .locals 5
    .param p1, "token"    # I

    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "checkCount":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->barrierCount:I

    .line 470
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 471
    add-int/lit8 v0, v0, 0x1

    .line 472
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getSyncBarrierToken()I

    move-result v1

    .line 473
    .local v1, "latestToken":I
    if-eq p1, v1, :cond_0

    .line 475
    goto :goto_2

    .line 477
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->detectSyncBarrier()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 479
    const-string v2, "XuiWatchDog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "barrier leak,token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->removeSyncBarrier(I)V

    .line 482
    goto :goto_2

    .line 485
    :cond_1
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    goto :goto_1

    .line 486
    :catch_0
    move-exception v2

    .line 487
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 489
    .end local v1    # "latestToken":I
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_1
    goto :goto_0

    .line 490
    :cond_2
    :goto_2
    return-void
.end method

.method private syncBarrierCheck()V
    .locals 7

    .line 420
    const/4 v0, 0x0

    .line 422
    .local v0, "mMessage":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mMessagesfield:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mainQueue:Landroid/os/MessageQueue;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 425
    goto :goto_0

    .line 423
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XuiWatchDog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncBarrierCheck e ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_2

    .line 431
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/Message;->getWhen()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 432
    .local v1, "deltaWhen":J
    const-string v3, "XuiWatchDog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cur msg what="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v0}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",when="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v0}, Landroid/os/Message;->getWhen()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ",barrier token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",delta="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ",delta="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 432
    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-wide/16 v3, 0x0

    invoke-virtual {v0}, Landroid/os/Message;->getWhen()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    const-wide/16 v3, 0xbb8

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    if-nez v3, :cond_1

    .line 440
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 441
    .local v3, "token":I
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->startBarrierLeakCheck(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 445
    .end local v1    # "deltaWhen":J
    .end local v3    # "token":I
    :cond_1
    goto :goto_3

    .line 443
    :catch_1
    move-exception v1

    .line 444
    .local v1, "e2":Ljava/lang/Exception;
    const-string v2, "XuiWatchDog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncBarrierCheck e2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    .end local v1    # "e2":Ljava/lang/Exception;
    :cond_2
    :goto_3
    sget-object v1, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 450
    .local v1, "checkMsg":Landroid/os/Message;
    sget-object v2, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 451
    return-void
.end method

.method private watchdogHandleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x2710

    const/16 v6, 0x8

    const-wide/16 v7, 0x7d0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 190
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;

    .line 191
    .local v0, "start":Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 192
    .local v1, "curTick":J
    iget-wide v9, v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;->mEventTick:J

    sub-long v9, v1, v9

    .line 193
    .local v9, "delta":J
    const-string v3, "XuiWatchDog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "car callback check,prop:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;->mProp:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ",callback="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;->mCallback:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ",deltaMs="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mCarCallbackRecordSet:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    div-long v7, v9, v7

    .line 197
    .local v7, "count":J
    const-wide/16 v11, 0x1

    cmp-long v3, v11, v7

    if-nez v3, :cond_0

    .line 199
    sget-wide v11, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mLastDumpTick:J

    sub-long v11, v1, v11

    .line 200
    .local v11, "dumpDelta":J
    cmp-long v3, v11, v4

    if-ltz v3, :cond_0

    .line 201
    sput-wide v1, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mLastDumpTick:J

    .line 202
    new-instance v3, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$U9VzcNQzzj-9StQDcbn5TlI-DII;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$U9VzcNQzzj-9StQDcbn5TlI-DII;-><init>(Lcom/xiaopeng/xuiservice/debug/WatchDog;)V

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 207
    .end local v11    # "dumpDelta":J
    :cond_0
    long-to-int v3, v7

    mul-int/lit16 v3, v3, 0x7d0

    .line 208
    .local v3, "checkInterVal":I
    sget-object v4, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 209
    .local v4, "checkMsg":Landroid/os/Message;
    sget-object v5, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogHandler:Landroid/os/Handler;

    int-to-long v11, v3

    invoke-virtual {v5, v4, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 211
    .end local v0    # "start":Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;
    .end local v1    # "curTick":J
    .end local v3    # "checkInterVal":I
    .end local v4    # "checkMsg":Landroid/os/Message;
    .end local v7    # "count":J
    .end local v9    # "delta":J
    :cond_1
    goto/16 :goto_6

    .line 141
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;

    .line 143
    .local v0, "leave":Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;
    sget-object v1, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 144
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mCarCallbackRecordSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;->mEventTick:J

    sub-long/2addr v4, v6

    .line 146
    .local v4, "deltaMs":J
    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    .line 147
    const-string v1, "XuiWatchDog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "car callback leave,prop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;->mProp:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;->mCallback:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",deltaMs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .end local v4    # "deltaMs":J
    :cond_2
    goto :goto_0

    .line 151
    :cond_3
    const-string v1, "XuiWatchDog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "car callback leave,record not found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;->mProp:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;->mCallback:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .end local v0    # "leave":Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;
    :goto_0
    goto/16 :goto_6

    .line 114
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mCarCallbackRecordSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_4

    .line 115
    const-string v0, "XuiWatchDog"

    const-string v1, "strange, car callback record set over 10"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mCarCallbackRecordSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 118
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;

    .line 119
    .local v0, "record":Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mCarCallbackRecordSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v1, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 121
    .local v1, "checkMsg":Landroid/os/Message;
    sget-object v2, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 122
    .end local v0    # "record":Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;
    .end local v1    # "checkMsg":Landroid/os/Message;
    goto/16 :goto_6

    .line 213
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->syncBarrierCheckRunner:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 214
    goto/16 :goto_6

    .line 157
    :pswitch_4
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_5

    .line 158
    goto/16 :goto_6

    .line 160
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 161
    .local v0, "curTick":J
    const-string v2, "binderTmo"

    .line 162
    .local v2, "reason":Ljava/lang/String;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;

    if-eqz v3, :cond_6

    .line 164
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;

    .line 165
    .local v3, "start":Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;
    iget-wide v6, v3, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;->mEventTick:J

    sub-long v6, v0, v6

    .line 166
    .local v6, "delta":J
    const-string v8, "XuiWatchDog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "binder call check,module:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;->mModule:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",info:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;->mInfo:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",deltaMs="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ",total alive:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mBinderRecordMap:Ljava/util/HashMap;

    .line 167
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 166
    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .end local v3    # "start":Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;
    .end local v6    # "delta":J
    goto :goto_3

    :cond_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_9

    .line 169
    const/16 v3, 0x9

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v3, v6, :cond_7

    .line 170
    const-string/jumbo v2, "workThTmo"

    goto :goto_1

    .line 172
    :cond_7
    const-string v2, "uiTmo"

    .line 174
    :goto_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 175
    .local v6, "startTick":J
    sub-long v8, v0, v6

    .line 176
    .local v8, "delta":J
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->tickMap:Ljava/util/Map;

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/debug/WatchDog$HandlerLooperInfo;

    .line 177
    .local v3, "looperInfo":Lcom/xiaopeng/xuiservice/debug/WatchDog$HandlerLooperInfo;
    const-string v10, "XuiWatchDog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "thread tmo ms="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ",reason="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ",looper msg="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    if-eqz v3, :cond_8

    iget-object v12, v3, Lcom/xiaopeng/xuiservice/debug/WatchDog$HandlerLooperInfo;->looperMessage:Ljava/lang/String;

    goto :goto_2

    :cond_8
    const-string v12, ""

    :goto_2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 177
    invoke-static {v10, v11}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .end local v3    # "looperInfo":Lcom/xiaopeng/xuiservice/debug/WatchDog$HandlerLooperInfo;
    .end local v6    # "startTick":J
    .end local v8    # "delta":J
    :cond_9
    :goto_3
    sget-wide v6, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mLastDumpTick:J

    sub-long v6, v0, v6

    .line 181
    .local v6, "dumpDelta":J
    cmp-long v3, v6, v4

    if-ltz v3, :cond_a

    .line 182
    sput-wide v0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mLastDumpTick:J

    .line 183
    move-object v3, v2

    .line 184
    .local v3, "dumpReason":Ljava/lang/String;
    new-instance v4, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$qZ3h3jXsT-xm4GnviXBH4K_JNBI;

    invoke-direct {v4, p0, v3}, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$qZ3h3jXsT-xm4GnviXBH4K_JNBI;-><init>(Lcom/xiaopeng/xuiservice/debug/WatchDog;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 188
    .end local v0    # "curTick":J
    .end local v2    # "reason":Ljava/lang/String;
    .end local v3    # "dumpReason":Ljava/lang/String;
    .end local v6    # "dumpDelta":J
    :cond_a
    goto/16 :goto_6

    .line 124
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;

    .line 125
    .local v0, "leave":Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;->mModule:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;->mInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "binderKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mBinderRecordMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;

    .line 127
    .local v5, "start":Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;
    if-eqz v5, :cond_c

    .line 129
    sget-object v6, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogHandler:Landroid/os/Handler;

    invoke-virtual {v6, v1, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 130
    iget-wide v6, v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;->mEventTick:J

    iget-wide v8, v5, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;->mEventTick:J

    sub-long/2addr v6, v8

    .line 131
    .local v6, "deltaMs":J
    cmp-long v1, v6, v2

    if-lez v1, :cond_b

    .line 132
    const-string v1, "XuiWatchDog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binder leave,m:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;->mModule:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;->mInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",deltaMs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",total alive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mBinderRecordMap:Ljava/util/HashMap;

    .line 133
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_b
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mBinderRecordMap:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .end local v6    # "deltaMs":J
    goto :goto_4

    .line 137
    :cond_c
    const-string v1, "XuiWatchDog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binder leave,record not found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;->mModule:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;->mInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v0    # "leave":Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;
    .end local v4    # "binderKey":Ljava/lang/String;
    .end local v5    # "start":Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;
    :goto_4
    goto :goto_6

    .line 101
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;

    .line 102
    .local v0, "record":Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mBinderRecordMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_d

    .line 103
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mBinderRecordMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;->mModule:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;->mInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v2, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 105
    .restart local v1    # "checkMsg":Landroid/os/Message;
    sget-object v2, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 106
    .end local v1    # "checkMsg":Landroid/os/Message;
    goto :goto_5

    .line 107
    :cond_d
    const-string v1, "XuiWatchDog"

    const-string v2, "binder enter, record map over 32"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mBinderRecordMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 111
    .end local v0    # "record":Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;
    :goto_5
    nop

    .line 218
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public binderEnter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .line 254
    const-string v0, "XuiWatchDog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binder enter,module="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 256
    .local v0, "record":Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;
    sget-object v1, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 257
    return-void
.end method

.method public binderLeave(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .line 260
    const-string v0, "XuiWatchDog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binder leave,module="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 262
    .local v0, "record":Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;
    sget-object v1, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 263
    return-void
.end method

.method public carCallbackEnter(Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;)V
    .locals 2
    .param p1, "record"    # Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;

    .line 266
    sget-object v0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 267
    return-void
.end method

.method public carCallbackLeave(Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;)V
    .locals 2
    .param p1, "record"    # Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;

    .line 270
    sget-object v0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mWatchdogHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 271
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 274
    if-eqz p2, :cond_4

    array-length v0, p2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_5

    .line 279
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_3

    .line 280
    aget-object v3, p2, v2

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "-idlehandlerqueue"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_1
    const-string v5, "-remove"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v6

    goto :goto_2

    :sswitch_2
    const-string v5, "-longmsgtest"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_3
    const-string v5, "-dumpSystemServer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_2

    :sswitch_4
    const-string v5, "-barrierpost"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v4

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_4

    .line 304
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v3

    new-instance v4, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$a_VmbiMhQDbnx7lnLfwbZPssz4U;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$a_VmbiMhQDbnx7lnLfwbZPssz4U;-><init>(Lcom/xiaopeng/xuiservice/debug/WatchDog;)V

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 307
    goto :goto_4

    .line 301
    :pswitch_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 302
    goto :goto_4

    .line 291
    :pswitch_2
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog;->mainQueue:Landroid/os/MessageQueue;

    sget-object v4, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$xr1K0AVffQVL_U5_i3HctmEp_tw;->INSTANCE:Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$xr1K0AVffQVL_U5_i3HctmEp_tw;

    invoke-virtual {v3, v4}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 299
    goto :goto_4

    .line 287
    :pswitch_3
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->postSyncBarrier()I

    move-result v3

    .line 288
    .local v3, "token":I
    const-string v4, "postSyncBarrier done"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    .end local v3    # "token":I
    goto :goto_4

    .line 282
    :pswitch_4
    const-string v3, "1"

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/xiaopeng/xuiservice/debug/WatchDog;->dumpSystemServer:Z

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set dumpSystemServer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/xiaopeng/xuiservice/debug/WatchDog;->dumpSystemServer:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    const-string v3, "persist.sys.xui.dump_server"

    sget-boolean v4, Lcom/xiaopeng/xuiservice/debug/WatchDog;->dumpSystemServer:Z

    if-eqz v4, :cond_2

    const-string v4, "1"

    goto :goto_3

    :cond_2
    const-string v4, "0"

    :goto_3
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    nop

    .line 279
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 312
    .end local v2    # "i":I
    :cond_3
    return-void

    .line 275
    :cond_4
    :goto_5
    const-string v0, "please input args!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x68636576 -> :sswitch_4
        -0x3f29cb6d -> :sswitch_3
        -0x184b74b6 -> :sswitch_2
        0x14c362f1 -> :sswitch_1
        0x1790e808 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
