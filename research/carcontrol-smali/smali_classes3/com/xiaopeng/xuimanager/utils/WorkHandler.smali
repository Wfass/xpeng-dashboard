.class public Lcom/xiaopeng/xuimanager/utils/WorkHandler;
.super Landroid/os/Handler;
.source "WorkHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static final mHandlerThread:Landroid/os/HandlerThread;

.field private static final sInstance:Lcom/xiaopeng/xuimanager/utils/WorkHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkHandler."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->TAG:Ljava/lang/String;

    .line 20
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->mHandlerMap:Ljava/util/Map;

    .line 24
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 25
    new-instance v0, Lcom/xiaopeng/xuimanager/utils/WorkHandler;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/utils/WorkHandler;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->sInstance:Lcom/xiaopeng/xuimanager/utils/WorkHandler;

    .line 26
    sget-object v1, Lcom/xiaopeng/xuimanager/utils/-$$Lambda$WorkHandler$Sqy1pyyxuGoY-m10EaOJhzezFCs;->INSTANCE:Lcom/xiaopeng/xuimanager/utils/-$$Lambda$WorkHandler$Sqy1pyyxuGoY-m10EaOJhzezFCs;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 38
    sget-object v0, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static create(Ljava/lang/String;)Landroid/os/Handler;
    .locals 3

    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0

    .line 52
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    new-instance v1, Lcom/xiaopeng/xuimanager/utils/-$$Lambda$WorkHandler$ZZTfK6y8DCiEsfAqA13lkvytTyM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuimanager/utils/-$$Lambda$WorkHandler$ZZTfK6y8DCiEsfAqA13lkvytTyM;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/utils/WorkHandler;
    .locals 1

    .line 42
    sget-object v0, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->sInstance:Lcom/xiaopeng/xuimanager/utils/WorkHandler;

    return-object v0
.end method

.method static synthetic lambda$create$1(Ljava/lang/String;)V
    .locals 3

    .line 58
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "catch handler Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic lambda$static$0()V
    .locals 4

    .line 29
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 31
    sget-object v1, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catch handler Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
