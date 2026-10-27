.class final Lpq;
.super Ljava/lang/Object;
.source "_ARouter.java"


# static fields
.field static a:Lcom/alibaba/android/arouter/facade/template/ILogger;

.field private static volatile b:Z

.field private static volatile c:Z

.field private static volatile d:Z

.field private static volatile e:Lpq;

.field private static volatile f:Z

.field private static volatile g:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static h:Landroid/os/Handler;

.field private static i:Landroid/content/Context;

.field private static j:Lcom/alibaba/android/arouter/facade/service/InterceptorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lpv;

    const-string v1, "ARouter::"

    invoke-direct {v0, v1}, Lpv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lpq;->a:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const/4 v0, 0x0

    .line 46
    sput-boolean v0, Lpq;->b:Z

    .line 47
    sput-boolean v0, Lpq;->c:Z

    .line 48
    sput-boolean v0, Lpq;->d:Z

    const/4 v1, 0x0

    .line 49
    sput-object v1, Lpq;->e:Lpq;

    .line 50
    sput-boolean v0, Lpq;->f:Z

    .line 51
    invoke-static {}, Lps;->a()Lps;

    move-result-object v0

    sput-object v0, Lpq;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lpq;Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lpq;->b(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected static a()Lpq;
    .locals 2

    .line 84
    sget-boolean v0, Lpq;->f:Z

    if-eqz v0, :cond_2

    .line 87
    sget-object v0, Lpq;->e:Lpq;

    if-nez v0, :cond_1

    .line 88
    const-class v0, Lpq;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lpq;->e:Lpq;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lpq;

    invoke-direct {v1}, Lpq;-><init>()V

    sput-object v1, Lpq;->e:Lpq;

    .line 92
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 94
    :cond_1
    :goto_0
    sget-object v0, Lpq;->e:Lpq;

    return-object v0

    .line 85
    :cond_2
    new-instance v0, Lpn;

    const-string v1, "ARouterCore::Init::Invoke init(context) first!"

    invoke-direct {v0, v1}, Lpn;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(ILandroid/content/Context;Landroid/content/Intent;Lcom/alibaba/android/arouter/facade/Postcard;Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;)V
    .locals 2

    if-ltz p1, :cond_1

    .line 423
    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 424
    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p4}, Lcom/alibaba/android/arouter/facade/Postcard;->getOptionsBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, p3, p1, v1}, Landroidx/core/app/a;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 426
    :cond_0
    sget-object p1, Lpq;->a:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string p3, "ARouter::"

    const-string v0, "Must use [navigation(activity, ...)] to support [startActivityForResult]"

    invoke-interface {p1, p3, v0}, Lcom/alibaba/android/arouter/facade/template/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :cond_1
    invoke-virtual {p4}, Lcom/alibaba/android/arouter/facade/Postcard;->getOptionsBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p2, p3, p1}, Landroidx/core/app/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 432
    :goto_0
    invoke-virtual {p4}, Lcom/alibaba/android/arouter/facade/Postcard;->getEnterAnim()I

    move-result p1

    const/4 p3, -0x1

    if-eq p3, p1, :cond_2

    invoke-virtual {p4}, Lcom/alibaba/android/arouter/facade/Postcard;->getExitAnim()I

    move-result p1

    if-eq p3, p1, :cond_2

    instance-of p1, p2, Landroid/app/Activity;

    if-eqz p1, :cond_2

    .line 433
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p4}, Lcom/alibaba/android/arouter/facade/Postcard;->getEnterAnim()I

    move-result p1

    invoke-virtual {p4}, Lcom/alibaba/android/arouter/facade/Postcard;->getExitAnim()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_2
    if-eqz p5, :cond_3

    .line 437
    invoke-interface {p5, p4}, Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;->onArrival(Lcom/alibaba/android/arouter/facade/Postcard;)V

    :cond_3
    return-void
.end method

.method static a(Ljava/lang/Object;)V
    .locals 2

    .line 170
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    const-string v1, "/arouter/service/autowired"

    invoke-virtual {v0, v1}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/arouter/facade/service/AutowiredService;

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0, p0}, Lcom/alibaba/android/arouter/facade/service/AutowiredService;->autowire(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2

    .line 410
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 411
    sget-object v0, Lpq;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 413
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lpq;ILandroid/content/Context;Landroid/content/Intent;Lcom/alibaba/android/arouter/facade/Postcard;Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;)V
    .locals 0

    .line 44
    invoke-direct/range {p0 .. p5}, Lpq;->a(ILandroid/content/Context;Landroid/content/Intent;Lcom/alibaba/android/arouter/facade/Postcard;Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;)V

    return-void
.end method

.method protected static declared-synchronized a(Landroid/app/Application;)Z
    .locals 3

    const-class v0, Lpq;

    monitor-enter v0

    .line 61
    :try_start_0
    sput-object p0, Lpq;->i:Landroid/content/Context;

    .line 62
    sget-object p0, Lpq;->i:Landroid/content/Context;

    sget-object v1, Lpq;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p0, v1}, Lpk;->a(Landroid/content/Context;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 63
    sget-object p0, Lpq;->a:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v1, "ARouter::"

    const-string v2, "ARouter init success!"

    invoke-interface {p0, v1, v2}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 64
    sput-boolean p0, Lpq;->f:Z

    .line 65
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lpq;->h:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private b(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;
    .locals 8

    if-nez p1, :cond_0

    .line 346
    sget-object p1, Lpq;->i:Landroid/content/Context;

    :cond_0
    move-object v3, p1

    .line 348
    sget-object p1, Lpq$4;->a:[I

    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getType()Lcom/alibaba/android/arouter/facade/enums/RouteType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/enums/RouteType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eq p1, v0, :cond_5

    const/4 p3, 0x2

    if-eq p1, p3, :cond_4

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    const/4 p3, 0x4

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    goto :goto_1

    .line 382
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getDestination()Ljava/lang/Class;

    move-result-object p1

    const/4 p3, 0x0

    .line 384
    :try_start_0
    new-array p4, p3, [Ljava/lang/Class;

    invoke-virtual {p1, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 385
    instance-of p3, p1, Landroid/app/Fragment;

    if-eqz p3, :cond_2

    .line 386
    move-object p3, p1

    check-cast p3, Landroid/app/Fragment;

    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 387
    :cond_2
    instance-of p3, p1, Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_3

    .line 388
    move-object p3, p1

    check-cast p3, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 393
    sget-object p2, Lpq;->a:Lcom/alibaba/android/arouter/facade/template/ILogger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Fetch fragment instance error, "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {p1}, Lpy;->a([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ARouter::"

    invoke-interface {p2, p3, p1}, Lcom/alibaba/android/arouter/facade/template/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v7

    .line 378
    :cond_4
    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getProvider()Lcom/alibaba/android/arouter/facade/template/IProvider;

    move-result-object p1

    return-object p1

    .line 351
    :cond_5
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getDestination()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v4, v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getFlags()I

    move-result p1

    const/4 v0, -0x1

    if-eq v0, p1, :cond_6

    .line 357
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 358
    :cond_6
    instance-of p1, v3, Landroid/app/Activity;

    if-nez p1, :cond_7

    const/high16 p1, 0x10000000

    .line 359
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 363
    :cond_7
    :goto_2
    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 364
    invoke-static {p1}, Lpy;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 365
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    :cond_8
    new-instance p1, Lpq$3;

    move-object v0, p1

    move-object v1, p0

    move v2, p3

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lpq$3;-><init>(Lpq;ILandroid/content/Context;Landroid/content/Intent;Lcom/alibaba/android/arouter/facade/Postcard;Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;)V

    invoke-direct {p0, p1}, Lpq;->a(Ljava/lang/Runnable;)V

    return-object v7
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 225
    invoke-static {p1}, Lpy;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 230
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-static {p1}, Lpy;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 232
    :cond_0
    new-instance p1, Lpm;

    const-string v0, "ARouter::Extract the default group failed! There\'s nothing between 2 \'/\'!"

    invoke-direct {p1, v0}, Lpm;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 237
    sget-object v0, Lpq;->a:Lcom/alibaba/android/arouter/facade/template/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to extract default group! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ARouter::"

    invoke-interface {v0, v1, p1}, Lcom/alibaba/android/arouter/facade/template/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 226
    :cond_1
    new-instance p1, Lpm;

    const-string v0, "ARouter::Extract the default group failed, the path must be start with \'/\' and contain more than 2 \'/\'!"

    invoke-direct {p1, v0}, Lpm;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static b()Z
    .locals 1

    .line 160
    sget-boolean v0, Lpq;->c:Z

    return v0
.end method

.method static c()V
    .locals 2

    .line 244
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    const-string v1, "/arouter/service/interceptor"

    invoke-virtual {v0, v1}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/arouter/facade/service/InterceptorService;

    sput-object v0, Lpq;->j:Lcom/alibaba/android/arouter/facade/service/InterceptorService;

    return-void
.end method

.method static synthetic d()Landroid/content/Context;
    .locals 1

    .line 44
    sget-object v0, Lpq;->i:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 2

    .line 180
    invoke-static {p1}, Lpy;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;

    invoke-virtual {v0, v1}, Lpp;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0, p1}, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;->forString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 187
    :cond_0
    invoke-direct {p0, p1}, Lpq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lpq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    return-object p1

    .line 181
    :cond_1
    new-instance p1, Lpm;

    const-string v0, "ARouter::Parameter is invalid!"

    invoke-direct {p1, v0}, Lpm;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 2

    .line 210
    invoke-static {p1}, Lpy;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lpy;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;

    invoke-virtual {v0, v1}, Lpp;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0, p1}, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;->forString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 217
    :cond_0
    new-instance v0, Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/android/arouter/facade/Postcard;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 211
    :cond_1
    new-instance p1, Lpm;

    const-string p2, "ARouter::Parameter is invalid!"

    invoke-direct {p1, p2}, Lpm;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    .line 280
    :try_start_0
    invoke-static {p2}, Lpk;->a(Lcom/alibaba/android/arouter/facade/Postcard;)V
    :try_end_0
    .catch Lpo; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p4, :cond_0

    .line 309
    invoke-interface {p4, p2}, Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;->onFound(Lcom/alibaba/android/arouter/facade/Postcard;)V

    .line 312
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->isGreenChannel()Z

    move-result v1

    if-nez v1, :cond_1

    .line 313
    sget-object v1, Lpq;->j:Lcom/alibaba/android/arouter/facade/service/InterceptorService;

    new-instance v8, Lpq$2;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lpq$2;-><init>(Lpq;Landroid/content/Context;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;Lcom/alibaba/android/arouter/facade/Postcard;)V

    invoke-interface {v1, p2, v8}, Lcom/alibaba/android/arouter/facade/service/InterceptorService;->doInterceptions(Lcom/alibaba/android/arouter/facade/Postcard;Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;)V

    return-object v0

    .line 339
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lpq;->b(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p3

    .line 282
    sget-object v1, Lpq;->a:Lcom/alibaba/android/arouter/facade/template/ILogger;

    invoke-virtual {p3}, Lpo;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v2, "ARouter::"

    invoke-interface {v1, v2, p3}, Lcom/alibaba/android/arouter/facade/template/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lpq;->b()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 286
    new-instance p3, Lpq$1;

    invoke-direct {p3, p0, p2}, Lpq$1;-><init>(Lpq;Lcom/alibaba/android/arouter/facade/Postcard;)V

    invoke-direct {p0, p3}, Lpq;->a(Ljava/lang/Runnable;)V

    :cond_2
    if-eqz p4, :cond_3

    .line 297
    invoke-interface {p4, p2}, Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;->onLost(Lcom/alibaba/android/arouter/facade/Postcard;)V

    goto :goto_0

    .line 299
    :cond_3
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object p3

    const-class p4, Lcom/alibaba/android/arouter/facade/service/DegradeService;

    invoke-virtual {p3, p4}, Lpp;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/android/arouter/facade/service/DegradeService;

    if-eqz p3, :cond_4

    .line 301
    invoke-interface {p3, p1, p2}, Lcom/alibaba/android/arouter/facade/service/DegradeService;->onLost(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;)V

    :cond_4
    :goto_0
    return-object v0
.end method

.method protected a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 249
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpk;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v1

    if-nez v1, :cond_0

    .line 255
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpk;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    return-object v0

    .line 262
    :cond_1
    invoke-static {v1}, Lpk;->a(Lcom/alibaba/android/arouter/facade/Postcard;)V

    .line 263
    invoke-virtual {v1}, Lcom/alibaba/android/arouter/facade/Postcard;->getProvider()Lcom/alibaba/android/arouter/facade/template/IProvider;

    move-result-object p1
    :try_end_0
    .catch Lpo; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 265
    sget-object v1, Lpq;->a:Lcom/alibaba/android/arouter/facade/template/ILogger;

    invoke-virtual {p1}, Lpo;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ARouter::"

    invoke-interface {v1, v2, p1}, Lcom/alibaba/android/arouter/facade/template/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
