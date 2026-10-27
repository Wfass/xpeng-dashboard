.class public abstract Landroid/car/cluster/renderer/InstrumentClusterRenderingService;
.super Landroid/app/Service;
.source "InstrumentClusterRenderingService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;,
        Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;,
        Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;
    }
.end annotation


# static fields
.field private static final BITMAP_QUERY_HEIGHT:Ljava/lang/String; = "h"

.field private static final BITMAP_QUERY_OFFLANESALPHA:Ljava/lang/String; = "offLanesAlpha"

.field private static final BITMAP_QUERY_WIDTH:Ljava/lang/String; = "w"

.field public static final EXTRA_BUNDLE_KEY_FOR_INSTRUMENT_CLUSTER_HELPER:Ljava/lang/String; = "android.car.cluster.renderer.IInstrumentClusterHelper"

.field private static final IMAGE_CACHE_SIZE_BYTES:I = 0x400000

.field private static final NAVIGATION_STATE_EVENT_ID:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CAR.L.CLUSTER"


# instance fields
.field private mActivityOptions:Landroid/app/ActivityOptions;

.field private mActivityState:Landroid/car/cluster/ClusterActivityState;

.field private final mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mInstrumentClusterHelper:Landroid/car/cluster/renderer/IInstrumentClusterHelper;

.field private final mLock:Ljava/lang/Object;

.field private mNavContextOwner:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;

.field private mNavigationComponent:Landroid/content/ComponentName;

.field private mRendererBinder:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 85
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mUiHandler:Landroid/os/Handler;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mLock:Ljava/lang/Object;

    .line 123
    new-instance v0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$1;

    const/high16 v1, 0x400000

    invoke-direct {v0, p0, v1}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$1;-><init>(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;I)V

    iput-object v0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mCache:Landroid/util/LruCache;

    return-void
.end method

.method static synthetic access$100(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;)Ljava/lang/Object;
    .locals 0

    .line 85
    iget-object p0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;)Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;
    .locals 0

    .line 85
    iget-object p0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mNavContextOwner:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;

    return-object p0
.end method

.method static synthetic access$202(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;)Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;
    .locals 0

    .line 85
    iput-object p1, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mNavContextOwner:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;

    return-object p1
.end method

.method static synthetic access$300(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;)Landroid/os/Handler;
    .locals 0

    .line 85
    iget-object p0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->updateNavigationActivity()V

    return-void
.end method

.method static synthetic access$500(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->assertClusterManagerPermission()V

    return-void
.end method

.method static synthetic access$600(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->runAndWaitResult(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private assertClusterManagerPermission()V
    .locals 2

    const-string v0, "android.car.permission.CAR_NAVIGATION_MANAGER"

    .line 565
    invoke-virtual {p0, v0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 567
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "requires android.car.permission.CAR_NAVIGATION_MANAGER"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getClusterHelper()Landroid/car/cluster/renderer/IInstrumentClusterHelper;
    .locals 3

    .line 236
    iget-object v0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    iget-object v1, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mInstrumentClusterHelper:Landroid/car/cluster/renderer/IInstrumentClusterHelper;

    if-nez v1, :cond_0

    const-string v1, "mInstrumentClusterHelper still null, should wait until onBind"

    .line 238
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    :cond_0
    iget-object v1, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mInstrumentClusterHelper:Landroid/car/cluster/renderer/IInstrumentClusterHelper;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 242
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getComponentFromPackage(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 6

    .line 380
    invoke-virtual {p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.car.permission.CAR_DISPLAY_IN_CLUSTER"

    .line 383
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "CAR.L.CLUSTER"

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v5

    const/4 p1, 0x1

    aput-object v1, v0, p1

    const-string p1, "Package \'%s\' doesn\'t have permission %s"

    .line 385
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 390
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.car.cluster.NAVIGATION"

    .line 391
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 392
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/16 v1, 0x40

    .line 393
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 395
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 396
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 402
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    return-object p1

    .line 397
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to resolve an intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private getNavigationComponentByOwner(Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;)Landroid/content/ComponentName;
    .locals 3

    .line 360
    iget-object p1, p1, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;->mPackageNames:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 361
    invoke-direct {p0, v0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->getComponentFromPackage(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    const-string v1, "CAR.L.CLUSTER"

    .line 363
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 364
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found component: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getNavigationContextOwner()Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;
    .locals 2

    .line 373
    iget-object v0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_0
    iget-object v1, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mNavContextOwner:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 375
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$runAndWaitResult$0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/Supplier;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 576
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 577
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private runAndWaitResult(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 572
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 573
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 575
    iget-object v2, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$Zv7MhWrV78tqCUFVEBL5PsdMTdM;

    invoke-direct {v3, v1, p1, v0}, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$Zv7MhWrV78tqCUFVEBL5PsdMTdM;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/Supplier;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 581
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 583
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private updateNavigationActivity()V
    .locals 6

    .line 309
    invoke-direct {p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->getNavigationContextOwner()Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;

    move-result-object v0

    const-string v1, "CAR.L.CLUSTER"

    const/4 v2, 0x3

    .line 311
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 312
    iget-object v5, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mActivityOptions:Landroid/app/ActivityOptions;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mActivityState:Landroid/car/cluster/ClusterActivityState;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const-string/jumbo v4, "updateNavigationActivity (mActivityOptions: %s, mActivityState: %s, mNavContextOwnerUid: %s)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_8

    .line 317
    iget v3, v0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;->mUid:I

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mActivityState:Landroid/car/cluster/ClusterActivityState;

    if-eqz v3, :cond_8

    .line 318
    invoke-virtual {v3}, Landroid/car/cluster/ClusterActivityState;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 327
    :cond_1
    invoke-direct {p0, v0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->getNavigationComponentByOwner(Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;)Landroid/content/ComponentName;

    move-result-object v3

    .line 328
    iget-object v4, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mNavigationComponent:Landroid/content/ComponentName;

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 330
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already launched component: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    if-nez v3, :cond_5

    .line 337
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No component found for owner: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    .line 343
    :cond_5
    invoke-virtual {p0, v3}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->startNavigationActivity(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 344
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch component: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    .line 350
    :cond_7
    iput-object v3, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mNavigationComponent:Landroid/content/ComponentName;

    .line 351
    invoke-virtual {p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->onNavigationComponentLaunched()V

    return-void

    .line 320
    :cond_8
    :goto_0
    iget-object v0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mNavigationComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mNavigationComponent:Landroid/content/ComponentName;

    .line 322
    invoke-virtual {p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->onNavigationComponentReleased()V

    :cond_9
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 480
    iget-object p1, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 481
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "**"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "**"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "renderer binder: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mRendererBinder:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    iget-object p3, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mRendererBinder:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;

    if-eqz p3, :cond_0

    .line 484
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "navigation renderer: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mRendererBinder:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;

    invoke-static {v0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;->access$000(Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;)Landroid/car/cluster/renderer/NavigationRenderer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "navigation focus owner: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-direct {p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->getNavigationContextOwner()Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "activity options: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "activity state: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mActivityState:Landroid/car/cluster/ClusterActivityState;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "current nav component: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mNavigationComponent:Landroid/content/ComponentName;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "current nav packages: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-direct {p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->getNavigationContextOwner()Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;

    move-result-object v0

    iget-object v0, v0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;->mPackageNames:Ljava/util/Set;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mInstrumentClusterHelper"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mInstrumentClusterHelper:Landroid/car/cluster/renderer/IInstrumentClusterHelper;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public getBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6

    const-string v0, "CAR.L.CLUSTER"

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "w"

    .line 604
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "h"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 605
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 611
    invoke-direct {p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->getNavigationContextOwner()Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;

    move-result-object v2

    if-nez v2, :cond_0

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No context owner available while fetching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 617
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 619
    iget-object v4, v2, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;->mAuthorities:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 620
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri points to an authority not handled by the current context owner: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (valid authorities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;->mAuthorities:Ljava/util/Set;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 627
    :cond_1
    iget v2, v2, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 628
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "@"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    .line 631
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting bitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_2
    invoke-virtual {p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "r"

    .line 635
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 637
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 638
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    return-object v3

    .line 641
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create pipe for uri string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 606
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Uri must have \'w\' and \'h\' query parameters"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    .line 644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to fetch uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v1
.end method

.method public getBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 657
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->getBitmap(Landroid/net/Uri;IIF)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getBitmap(Landroid/net/Uri;IIF)Landroid/graphics/Bitmap;
    .locals 6

    const-string v0, "CAR.L.CLUSTER"

    if-lez p2, :cond_8

    if-lez p3, :cond_8

    const/4 v1, 0x0

    cmpg-float v1, p4, v1

    if-ltz v1, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p4, v1

    if-gtz v1, :cond_7

    const/4 v1, 0x0

    .line 684
    :try_start_0
    invoke-direct {p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->getNavigationContextOwner()Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;

    move-result-object v2

    if-nez v2, :cond_0

    .line 686
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No context owner available while fetching: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 690
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "w"

    .line 691
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "h"

    .line 692
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "offLanesAlpha"

    .line 693
    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, v4, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    .line 694
    invoke-virtual {p4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 696
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p4

    .line 698
    iget-object v3, v2, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;->mAuthorities:Ljava/util/Set;

    invoke-interface {v3, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 699
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Uri points to an authority not handled by the current context owner: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " (valid authorities: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, v2, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;->mAuthorities:Ljava/util/Set;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 706
    :cond_1
    iget v2, v2, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 707
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, p4}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p4

    .line 709
    iget-object v2, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-nez v2, :cond_6

    const/4 v3, 0x3

    .line 712
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 713
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting bitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_2
    invoke-virtual {p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "r"

    .line 716
    invoke-virtual {v3, p4, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 718
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 719
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->close()V

    return-object p2

    .line 722
    :cond_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create pipe for uri string: "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    if-ne p4, p2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    if-eq p4, p3, :cond_5

    :cond_4
    const/4 p4, 0x1

    .line 726
    invoke-static {v2, p2, p3, p4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 728
    :cond_5
    iget-object p2, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    return-object v2

    :catchall_0
    move-exception p2

    .line 733
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to fetch uri: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    .line 680
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offLanesAlpha must be between [0, 1]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 677
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width and height must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getNavigationRenderer()Landroid/car/cluster/renderer/NavigationRenderer;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const-string v0, "CAR.L.CLUSTER"

    const/4 v1, 0x3

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CAR.L.CLUSTER"

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind, intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "android.car.cluster.renderer.IInstrumentClusterHelper"

    .line 183
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v0, "android.car.cluster.renderer.IInstrumentClusterHelper"

    .line 186
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string p1, "CAR.L.CLUSTER"

    const-string v0, "IInstrumentClusterHelper not passed through binder"

    .line 189
    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_2
    iget-object p1, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 192
    :try_start_0
    invoke-static {v0}, Landroid/car/cluster/renderer/IInstrumentClusterHelper$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/cluster/renderer/IInstrumentClusterHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mInstrumentClusterHelper:Landroid/car/cluster/renderer/IInstrumentClusterHelper;

    .line 193
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :goto_0
    iget-object p1, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mRendererBinder:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;

    if-nez p1, :cond_3

    .line 196
    new-instance p1, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;

    invoke-virtual {p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->getNavigationRenderer()Landroid/car/cluster/renderer/NavigationRenderer;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;-><init>(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;Landroid/car/cluster/renderer/NavigationRenderer;)V

    iput-object p1, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mRendererBinder:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;

    .line 199
    :cond_3
    iget-object p1, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mRendererBinder:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;

    return-object p1

    :catchall_0
    move-exception v0

    .line 193
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public onNavigationComponentLaunched()V
    .locals 0

    return-void
.end method

.method public onNavigationComponentReleased()V
    .locals 0

    return-void
.end method

.method public setClusterActivityLaunchOptions(Landroid/app/ActivityOptions;)V
    .locals 0

    .line 451
    iput-object p1, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 452
    invoke-direct {p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->updateNavigationActivity()V

    return-void
.end method

.method public setClusterActivityLaunchOptions(Ljava/lang/String;Landroid/app/ActivityOptions;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 439
    invoke-virtual {p0, p2}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->setClusterActivityLaunchOptions(Landroid/app/ActivityOptions;)V

    return-void
.end method

.method public setClusterActivityState(Landroid/car/cluster/ClusterActivityState;)V
    .locals 0

    .line 473
    iput-object p1, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mActivityState:Landroid/car/cluster/ClusterActivityState;

    .line 474
    invoke-direct {p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->updateNavigationActivity()V

    return-void
.end method

.method public setClusterActivityState(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 462
    invoke-static {p2}, Landroid/car/cluster/ClusterActivityState;->fromBundle(Landroid/os/Bundle;)Landroid/car/cluster/ClusterActivityState;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->setClusterActivityState(Landroid/car/cluster/ClusterActivityState;)V

    return-void
.end method

.method protected startFixedActivityModeForDisplayAndUser(Landroid/content/Intent;Landroid/app/ActivityOptions;I)Z
    .locals 2

    .line 270
    invoke-direct {p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->getClusterHelper()Landroid/car/cluster/renderer/IInstrumentClusterHelper;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 275
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Landroid/car/cluster/renderer/IInstrumentClusterHelper;->startFixedActivityModeForDisplayAndUser(Landroid/content/Intent;Landroid/os/Bundle;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Remote exception from car service"

    .line 278
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method protected startNavigationActivity(Landroid/content/ComponentName;)Z
    .locals 7

    const-string v0, "CAR.L.CLUSTER"

    .line 412
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 413
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 414
    iget-object p1, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mActivityState:Landroid/car/cluster/ClusterActivityState;

    invoke-virtual {p1}, Landroid/car/cluster/ClusterActivityState;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "android.car.cluster.ClusterActivityState"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 415
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 417
    :try_start_0
    iget-object v2, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2, v3}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    const-string v2, "Activity launched: %s (options: %s, displayId: %d)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 418
    iget-object v4, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->mActivityOptions:Landroid/app/ActivityOptions;

    aput-object v4, v3, p1

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const/4 v6, 0x2

    .line 419
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 418
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v2

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error trying to launch intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Ignored"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p1

    .line 421
    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find activity for intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method protected stopFixedActivityMode(I)V
    .locals 3

    .line 292
    invoke-direct {p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->getClusterHelper()Landroid/car/cluster/renderer/IInstrumentClusterHelper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 297
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/car/cluster/renderer/IInstrumentClusterHelper;->stopFixedActivityMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception from car service, displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
