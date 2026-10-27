.class public Lcom/alipay/arome/aromecli/AromeServiceTask;
.super Ljava/lang/Object;
.source "AromeServiceTask.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Request:",
        "Lcom/alipay/arome/aromecli/requst/AromeRequest;",
        "Response:",
        "Lcom/alipay/arome/aromecli/response/AromeResponse;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final LOCAL_INVALID_RESULT:Landroid/os/Bundle;

.field private static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 20
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Lcom/alipay/mobile/aromeservice/AromeTaskParams;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    const/16 v0, 0x2a

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    const/4 v1, 0x5

    const/16 v2, 0x9

    const-wide/16 v3, 0xa

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v7, Lcom/alipay/arome/aromecli/AromeServiceTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    sput-object v0, Lcom/alipay/arome/aromecli/AromeServiceTask;->LOCAL_INVALID_RESULT:Landroid/os/Bundle;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    sget-object v0, Lcom/alipay/arome/aromecli/AromeServiceTask;->LOCAL_INVALID_RESULT:Landroid/os/Bundle;

    const-string v1, "code"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/arome/aromecli/AromeServiceTask;Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/arome/aromecli/AromeServiceTask;
    .param p1, "x1"    # Lcom/alipay/arome/aromecli/requst/AromeRequest;
    .param p2, "x2"    # Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/alipay/arome/aromecli/AromeServiceTask;->onInvoke(Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V

    return-void
.end method

.method private static checkRequestValid(Lcom/alipay/arome/aromecli/requst/AromeRequest;)Z
    .locals 1
    .param p0, "request"    # Lcom/alipay/arome/aromecli/requst/AromeRequest;

    .line 36
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/arome/aromecli/requst/AromeRequest;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private createResult(Ljava/lang/Class;)Lcom/alipay/arome/aromecli/response/AromeResponse;
    .locals 3
    .param p1, "callbackClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")TResponse;"
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 88
    .local v0, "types":[Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    :try_start_0
    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v1, v2, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/arome/aromecli/response/AromeResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "createResult"

    invoke-static {v2, v1}, Lcom/alipay/arome/aromecli/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v1    # "throwable":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method private onInvoke(Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V
    .locals 6
    .param p1, "request"    # Lcom/alipay/arome/aromecli/requst/AromeRequest;
    .param p2, "callback"    # Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;",
            "Lcom/alipay/arome/aromecli/AromeServiceTask$Callback<",
            "TResponse;>;)V"
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    move-object v1, v0

    .line 68
    .local v1, "resultParams":Landroid/os/Bundle;
    :try_start_0
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->getRemoteService()Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;

    move-result-object v2

    sget-object v3, Lcom/alipay/arome/aromecli/b;->a:Lcom/alipay/mobile/aromeservice/ipc/App;

    .line 70
    invoke-virtual {p1}, Lcom/alipay/arome/aromecli/requst/AromeRequest;->requestType()I

    move-result v4

    .line 71
    invoke-virtual {p1}, Lcom/alipay/arome/aromecli/requst/AromeRequest;->requestParam()Landroid/os/Bundle;

    move-result-object v5

    .line 68
    invoke-interface {v2, v3, v4, v5}, Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;->sendRequest(Lcom/alipay/mobile/aromeservice/ipc/App;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 74
    nop

    .line 75
    move-object v2, v0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v2

    .line 73
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "task onInvoke error"

    invoke-static {v3, v2}, Lcom/alipay/arome/aromecli/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .local v2, "response":Lcom/alipay/arome/aromecli/response/AromeResponse;
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alipay/arome/aromecli/AromeServiceTask;->createResult(Ljava/lang/Class;)Lcom/alipay/arome/aromecli/response/AromeResponse;

    move-result-object v3

    .line 76
    move-object v2, v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {v2, v1}, Lcom/alipay/arome/aromecli/response/AromeResponse;->parse(Landroid/os/Bundle;)V

    .line 80
    invoke-interface {p2, v2}, Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;->onCallback(Ljava/lang/Object;)V

    .line 82
    return-void

    .line 77
    :cond_1
    :goto_1
    invoke-interface {p2, v0}, Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method invoke(Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V
    .locals 2
    .param p1, "request"    # Lcom/alipay/arome/aromecli/requst/AromeRequest;
    .param p2, "callback"    # Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;",
            "Lcom/alipay/arome/aromecli/AromeServiceTask$Callback<",
            "TResponse;>;)V"
        }
    .end annotation

    .line 40
    invoke-static {p1}, Lcom/alipay/arome/aromecli/AromeServiceTask;->checkRequestValid(Lcom/alipay/arome/aromecli/requst/AromeRequest;)Z

    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/arome/aromecli/AromeServiceTask;->createResult(Ljava/lang/Class;)Lcom/alipay/arome/aromecli/response/AromeResponse;

    move-result-object v0

    const/4 v1, 0x0

    .line 43
    .local v1, "response":Lcom/alipay/arome/aromecli/response/AromeResponse;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/alipay/arome/aromecli/AromeServiceTask;->LOCAL_INVALID_RESULT:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Lcom/alipay/arome/aromecli/response/AromeResponse;->parse(Landroid/os/Bundle;)V

    .line 45
    invoke-interface {p2, v1}, Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;->onCallback(Ljava/lang/Object;)V

    .line 50
    .end local v1    # "response":Lcom/alipay/arome/aromecli/response/AromeResponse;
    :cond_0
    :try_start_0
    sget-object v0, Lcom/alipay/arome/aromecli/AromeServiceTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alipay/arome/aromecli/AromeServiceTask$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/arome/aromecli/AromeServiceTask$1;-><init>(Lcom/alipay/arome/aromecli/AromeServiceTask;Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "task onInvoke error"

    invoke-static {v1, v0}, Lcom/alipay/arome/aromecli/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method
