.class public Lpj;
.super Ljava/lang/Object;
.source "InterceptorServiceImpl.java"

# interfaces
.implements Lcom/alibaba/android/arouter/facade/service/InterceptorService;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/arouter/service/interceptor"
.end annotation


# static fields
.field private static a:Z

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lpj;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .line 28
    sget-object v0, Lpj;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(ILpr;Lcom/alibaba/android/arouter/facade/Postcard;)V
    .locals 0

    .line 28
    invoke-static {p0, p1, p2}, Lpj;->b(ILpr;Lcom/alibaba/android/arouter/facade/Postcard;)V

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 28
    sput-boolean p0, Lpj;->a:Z

    return p0
.end method

.method private static b()V
    .locals 5

    .line 132
    sget-object v0, Lpj;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :goto_0
    :try_start_0
    sget-boolean v1, Lpj;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 135
    :try_start_1
    sget-object v1, Lpj;->b:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 137
    :try_start_2
    new-instance v2, Lpm;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ARouter::Interceptor init cost too much time error! reason = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lpm;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static b(ILpr;Lcom/alibaba/android/arouter/facade/Postcard;)V
    .locals 2

    .line 75
    sget-object v0, Lpl;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    .line 76
    sget-object v0, Lpl;->f:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/arouter/facade/template/IInterceptor;

    .line 77
    new-instance v1, Lpj$2;

    invoke-direct {v1, p1, p0, p2}, Lpj$2;-><init>(Lpr;ILcom/alibaba/android/arouter/facade/Postcard;)V

    invoke-interface {v0, p2, v1}, Lcom/alibaba/android/arouter/facade/template/IInterceptor;->process(Lcom/alibaba/android/arouter/facade/Postcard;Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public doInterceptions(Lcom/alibaba/android/arouter/facade/Postcard;Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;)V
    .locals 2

    .line 34
    sget-object v0, Lpl;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lpl;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 36
    invoke-static {}, Lpj;->b()V

    .line 38
    sget-boolean v0, Lpj;->a:Z

    if-nez v0, :cond_0

    .line 39
    new-instance p1, Lpm;

    const-string v0, "Interceptors initialization takes too much time."

    invoke-direct {p1, v0}, Lpm;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;->onInterrupt(Ljava/lang/Throwable;)V

    return-void

    .line 43
    :cond_0
    sget-object v0, Lpk;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lpj$1;

    invoke-direct {v1, p0, p1, p2}, Lpj$1;-><init>(Lpj;Lcom/alibaba/android/arouter/facade/Postcard;Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-interface {p2, p1}, Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;->onContinue(Lcom/alibaba/android/arouter/facade/Postcard;)V

    :goto_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 104
    sget-object v0, Lpk;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lpj$3;

    invoke-direct {v1, p0, p1}, Lpj$3;-><init>(Lpj;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
