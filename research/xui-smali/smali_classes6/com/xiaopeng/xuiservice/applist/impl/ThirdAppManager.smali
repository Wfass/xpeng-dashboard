.class public Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;
.super Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
.source "ThirdAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$ThirdAppManagerHolder;
    }
.end annotation


# static fields
.field private static final ASSEMBLE_LOCAL_STATE_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "ThirdAppManager"

.field private static final mThirdAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mXPadAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static thirdAppThreadPool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private volatile applistLoaded:Z

.field private dayNightMode:I

.field private mAppStatsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/os/process/Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mAppStatsListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/os/process/ProcessStatsTracker$StatsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNewInstalledObserver:Landroid/database/ContentObserver;

.field private mStatsListener:Lcom/xiaopeng/os/process/ProcessStatsTracker$StatsListener;

.field private volatile managerInited:Z

.field private postBootDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mXPadAppMap:Ljava/util/Map;

    .line 89
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/ResourceProviderContract;->LOCAL_STATE_URI:Landroid/net/Uri;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->ASSEMBLE_LOCAL_STATE_URI:Landroid/net/Uri;

    .line 101
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->thirdAppThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 172
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->postBootDone:Z

    .line 94
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->applistLoaded:Z

    .line 96
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->dayNightMode:I

    .line 98
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->managerInited:Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mAppStatsList:Ljava/util/List;

    .line 105
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$1;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mStatsListener:Lcom/xiaopeng/os/process/ProcessStatsTracker$StatsListener;

    .line 155
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mStatsListener:Lcom/xiaopeng/os/process/ProcessStatsTracker$StatsListener;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mAppStatsListener:Ljava/lang/ref/WeakReference;

    .line 158
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$2;

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$2;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mNewInstalledObserver:Landroid/database/ContentObserver;

    .line 173
    invoke-static {}, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->getInstance()Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$ThirdAppManager$Yiq10B1ZX0m9K9Lyxpwie4TyHNs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$ThirdAppManager$Yiq10B1ZX0m9K9Lyxpwie4TyHNs;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->registerListener(Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;)V

    .line 177
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$1;

    .line 85
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 85
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mXPadAppMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;
    .param p1, "x1"    # Ljava/util/List;

    .line 85
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->updateXpadAppStats(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 85
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->thirdAppThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;ZLandroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/net/Uri;

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->updateAppsFirstLaunchFlag(ZLandroid/net/Uri;)V

    return-void
.end method

.method private applicationInfo2AppInfo(ILcom/xiaopeng/xuimanager/applist/data/AppInfo;Landroid/content/pm/ApplicationInfo;)V
    .locals 6
    .param p1, "category"    # I
    .param p2, "target"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p3, "source"    # Landroid/content/pm/ApplicationInfo;

    .line 519
    invoke-virtual {p2, p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setCategory(I)V

    .line 520
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setStatus(I)V

    .line 521
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setPkgName(Ljava/lang/String;)V

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/applist/ApplistConst;->getCategoryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setAppId(Ljava/lang/String;)V

    .line 523
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setTitle(Ljava/lang/String;)V

    .line 526
    const/4 v0, 0x2

    if-eq v0, p1, :cond_0

    .line 527
    :try_start_0
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->getBitmap(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 528
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;-><init>()V

    .line 529
    .local v1, "icon":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 530
    invoke-virtual {p2, v1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setStoreIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 531
    .end local v1    # "icon":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    goto/16 :goto_1

    .line 556
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 532
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->iPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v1, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getXpAppIconDay(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 533
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 534
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->getBitmap(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, v1

    .line 536
    :cond_1
    new-instance v1, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;-><init>()V

    .line 537
    .restart local v1    # "icon":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 538
    invoke-virtual {p2, v1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setStoreIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 539
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->iPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->getXpAppIconNight(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    .line 540
    if-eqz v0, :cond_2

    .line 541
    new-instance v2, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-direct {v2}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;-><init>()V

    move-object v1, v2

    .line 542
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 543
    invoke-virtual {p2, v1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setStoreNightIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    goto :goto_0

    .line 545
    :cond_2
    const-string v2, "ThirdAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get null bmp for night,pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :goto_0
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->iPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->getDockIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 548
    .local v2, "dockerBmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3

    .line 549
    new-instance v3, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-direct {v3}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;-><init>()V

    .line 550
    .local v3, "docerIcon":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 551
    invoke-virtual {p2, v3}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setDockerIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 552
    .end local v3    # "docerIcon":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    goto :goto_1

    .line 553
    :cond_3
    const-string v3, "ThirdAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get null bmp for docker,pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "icon":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    .end local v2    # "dockerBmp":Landroid/graphics/Bitmap;
    :goto_1
    goto :goto_3

    .line 556
    :goto_2
    nop

    .line 557
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ThirdAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xpAppInfo2AppInfo e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private applistInit()V
    .locals 9

    .line 477
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->applistLoaded:Z

    if-eqz v0, :cond_0

    .line 478
    const-string v0, "ThirdAppManager"

    const-string v1, "applistInit, alread inited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    return-void

    .line 481
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->applistLoaded:Z

    .line 483
    const-string v1, "ThirdAppManager"

    const-string v2, "applistInit"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 486
    .local v1, "inNightMode":Z
    :goto_0
    if-eqz v1, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput v2, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->dayNightMode:I

    .line 487
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 489
    .local v2, "allApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 490
    .local v5, "app":Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0, v5, v3}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->updateInnerAppInfo(Landroid/content/pm/ApplicationInfo;Z)V

    .line 491
    const-string v6, "ThirdAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applistInit,find:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .end local v5    # "app":Landroid/content/pm/ApplicationInfo;
    goto :goto_2

    .line 493
    :cond_3
    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-nez v4, :cond_5

    .line 495
    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 496
    .local v7, "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-virtual {p0, v7}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->updateAppInfoFromOperation(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    .line 497
    .end local v7    # "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    goto :goto_3

    .line 499
    :cond_4
    invoke-direct {p0, v0, v6}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->updateAppsFirstLaunchFlag(ZLandroid/net/Uri;)V

    .line 502
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    new-array v7, v3, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v4, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v0, v5, v4, v6}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 504
    :cond_5
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mXPadAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 505
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$ThirdAppManager$jefyfltW0aFdeXuSdYr6QB8udwk;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$ThirdAppManager$jefyfltW0aFdeXuSdYr6QB8udwk;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 510
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mXPadAppMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    new-array v3, v3, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v4, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v0, v5, v3, v6}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 512
    :cond_6
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v0

    new-instance v3, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$ThirdAppManager$zxcgLmIB5YCWsc0cBV3gI8K3ylA;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$ThirdAppManager$zxcgLmIB5YCWsc0cBV3gI8K3ylA;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;)V

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->addUserUnlockedTask(Ljava/lang/Runnable;)V

    .line 513
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->isBootComplete()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 514
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$ThirdAppManager$Lg5gYDU90QOZ2Bkmd-Uonxbd8rY;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$ThirdAppManager$Lg5gYDU90QOZ2Bkmd-Uonxbd8rY;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 516
    :cond_7
    return-void
.end method

.method private static checkXPadApp(Ljava/lang/String;)Z
    .locals 7
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 771
    const/4 v0, 0x0

    .line 772
    .local v0, "xpInfo":Lcom/xiaopeng/app/xpPackageInfo;
    const/4 v1, 0x0

    move v2, v1

    .line 774
    .local v2, "appType":I
    :try_start_0
    sget-object v3, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->iPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p0}, Landroid/content/pm/IPackageManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v3

    move-object v0, v3

    .line 775
    if-eqz v0, :cond_0

    .line 776
    iget v3, v0, Lcom/xiaopeng/app/xpPackageInfo;->appType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 780
    :cond_0
    goto :goto_0

    .line 778
    :catch_0
    move-exception v3

    .line 779
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "ThirdAppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isXPadApp e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    const/16 v3, 0x8

    if-ne v3, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private getBitmap(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 562
    const-string v0, "ThirdAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBitmap enter for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 565
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 567
    :try_start_0
    sget-object v3, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 568
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 569
    .local v4, "iconRes":I
    if-eqz v4, :cond_0

    .line 571
    :try_start_1
    sget-object v5, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 572
    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    .line 573
    .local v5, "resources":Landroid/content/res/Resources;
    const/16 v6, 0x140

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v6

    .line 576
    .end local v5    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 574
    :catch_0
    move-exception v5

    .line 575
    .local v5, "exc":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "ThirdAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBitmap,getDrawableForDensity e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 580
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "iconRes":I
    .end local v5    # "exc":Ljava/lang/Exception;
    :cond_0
    :goto_0
    goto :goto_1

    .line 578
    :catch_1
    move-exception v3

    .line 579
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "ThirdAppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBitmap,getActivityInfo e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 583
    const-string v3, "ThirdAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBitmap,use default icon for:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    sget-object v3, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 586
    :cond_2
    sget v3, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->BITMAP_APP_LIST_SIZE:I

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v2, v4}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->checkBitMap(Ljava/lang/Object;IZZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 587
    .local v3, "bmp":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_3

    .line 588
    return-object v3

    .line 590
    :cond_3
    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_4

    .line 591
    const-string v2, "ThirdAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBitmap directly for:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 595
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 596
    .local v4, "width":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 597
    .local v5, "height":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 598
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 599
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 600
    const-string v2, "ThirdAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBitmap of others for:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    return-object v6
.end method

.method private getIconWithPackageName(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 662
    const/4 v0, 0x0

    .line 664
    .local v0, "iconBmp":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 665
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->getBitmap(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 668
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 666
    :catch_0
    move-exception v1

    .line 667
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ThirdAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIconWithPackageName e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;
    .locals 1

    .line 185
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$ThirdAppManagerHolder;->access$500()Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;

    move-result-object v0

    return-object v0
.end method

.method private getMediaServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 674
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getMediaSource(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 675
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 676
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.car.intent.action.MEDIA_TEMPLATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 677
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.car.intent.extra.MEDIA_COMPONENT"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    const-string v2, "ThirdAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMediaServiceIntent,,pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",extras="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 678
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    return-object v1

    .line 682
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v1, p0

    .line 697
    move-object/from16 v2, p2

    const-string v0, "ThirdAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleBroadcast,i="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    if-nez v2, :cond_0

    return-void

    .line 699
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 700
    .local v3, "action":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 701
    .local v4, "packageName":Ljava/lang/String;
    const/4 v5, 0x0

    move-object v6, v5

    .line 703
    .local v6, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v7, 0x0

    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 706
    goto :goto_0

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "ThirdAppManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleBroadcast e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    .line 708
    const-string v0, "ThirdAppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkg added:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-direct {v1, v6, v8}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->updateInnerAppInfo(Landroid/content/pm/ApplicationInfo;Z)V

    goto/16 :goto_3

    .line 710
    :cond_1
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 711
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 712
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v9, 0x0

    .line 713
    .local v9, "isReplacing":Z
    const/4 v10, -0x2

    .line 714
    .local v10, "appUid":I
    const/4 v11, -0x2

    .line 715
    .local v11, "userHandle":I
    if-eqz v0, :cond_2

    .line 716
    const-string v12, "android.intent.extra.REPLACING"

    invoke-virtual {v0, v12, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 717
    const-string v12, "android.intent.extra.UID"

    const/4 v13, -0x2

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 718
    const-string v12, "android.intent.extra.user_handle"

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 720
    :cond_2
    const-string v12, "ThirdAppManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pkg removed:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",isReplacing="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ",appUid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",userHandle="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    if-lez v11, :cond_3

    .line 724
    return-void

    .line 727
    :cond_3
    if-eqz v9, :cond_4

    .line 728
    return-void

    .line 730
    :cond_4
    if-eqz v6, :cond_5

    .line 731
    iget v12, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v12, v8

    if-eqz v12, :cond_5

    .line 732
    const-string v5, "ThirdAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pkg removed,ignore system sota app:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    return-void

    .line 737
    :cond_5
    invoke-static {v4}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->checkXPadApp(Ljava/lang/String;)Z

    move-result v12

    .line 738
    .local v12, "isXpadApp":Z
    if-nez v12, :cond_6

    sget-object v13, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    :goto_1
    invoke-interface {v13, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    goto :goto_2

    :cond_6
    sget-object v13, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mXPadAppMap:Ljava/util/Map;

    goto :goto_1

    .line 739
    .local v13, "target":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    :goto_2
    if-nez v13, :cond_7

    .line 740
    const-string v5, "ThirdAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "strange,pkg removed but not found cached app info:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",isXpadApp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    return-void

    .line 744
    :cond_7
    sget-object v14, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v15, 0x4

    new-array v8, v8, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    aput-object v13, v8, v7

    invoke-interface {v14, v15, v8, v5}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 745
    iget-object v5, v1, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mFilteredListeners:Ljava/util/List;

    new-instance v7, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$ThirdAppManager$QXtjLfAkh1yW_bdCUCf5nI01pqc;

    invoke-direct {v7, v13}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$ThirdAppManager$QXtjLfAkh1yW_bdCUCf5nI01pqc;-><init>(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V

    invoke-interface {v5, v7}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 749
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v9    # "isReplacing":Z
    .end local v10    # "appUid":I
    .end local v11    # "userHandle":I
    .end local v12    # "isXpadApp":Z
    .end local v13    # "target":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    goto :goto_3

    :cond_8
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 752
    :goto_3
    return-void
.end method

.method public static isXpadApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 405
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const/4 v0, 0x0

    return v0

    .line 408
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mXPadAppMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$applistInit$3(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;)V
    .locals 3

    .line 506
    invoke-static {}, Lcom/xiaopeng/os/process/ProcessStatsTracker;->getInstance()Lcom/xiaopeng/os/process/ProcessStatsTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mAppStatsList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/os/process/ProcessStatsTracker;->getProcessStats(Ljava/util/List;)Z

    .line 507
    const-string v0, "ThirdAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init, mAppStatsList size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mAppStatsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mAppStatsList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->updateXpadAppStats(Ljava/util/List;)V

    .line 509
    return-void
.end method

.method public static synthetic lambda$applistInit$4(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;)V
    .locals 0

    .line 512
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->postBootInit()V

    return-void
.end method

.method public static synthetic lambda$applistInit$5(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;)V
    .locals 0

    .line 514
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->postBootInit()V

    return-void
.end method

.method static synthetic lambda$handleBroadcast$7(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;)V
    .locals 3
    .param p0, "target"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;

    .line 746
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 747
    return-void
.end method

.method public static synthetic lambda$init$1(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->applistInit()V

    return-void
.end method

.method public static synthetic lambda$init$2(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->applistInit()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;)V
    .locals 2

    .line 174
    const-string v0, "ThirdAppManager"

    const-string v1, "onLocalChanged"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->updateAppsTitleWhenLocaleChange()V

    .line 176
    return-void
.end method

.method public static synthetic lambda$registerBroadCast$6(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 692
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->handleBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 693
    return-void
.end method

.method private declared-synchronized postBootInit()V
    .locals 4

    monitor-enter p0

    .line 755
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->postBootDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 756
    monitor-exit p0

    return-void

    .line 758
    :cond_0
    :try_start_1
    const-string v0, "ThirdAppManager"

    const-string v1, "postBootInit"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->postBootDone:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    :try_start_2
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->ASSEMBLE_LOCAL_STATE_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mNewInstalledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 767
    goto :goto_0

    .line 765
    :catch_0
    move-exception v0

    .line 766
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "ThirdAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postBootInit e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 768
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 754
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;
    throw v0
.end method

.method private registerBroadCast()V
    .locals 3

    .line 686
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$3;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;)V

    .line 691
    .local v0, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$ThirdAppManager$Red6CjctiE-5NWdgf_PkRyXqNK0;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$ThirdAppManager$Red6CjctiE-5NWdgf_PkRyXqNK0;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;)V

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerPackageListener(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 694
    return-void
.end method

.method private updateAppsFirstLaunchFlag(ZLandroid/net/Uri;)V
    .locals 10
    .param p1, "initial"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 785
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    const-string v0, "ThirdAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAppsFirstLaunchFlag,applist is empty,initial="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    return-void

    .line 789
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_5

    .line 790
    if-nez p2, :cond_1

    .line 791
    const-string v0, "ThirdAppManager"

    const-string v1, "updateAppsFirstLaunchFlag,uri is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    return-void

    .line 795
    :cond_1
    const-string v2, "key"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 796
    .local v2, "pkg":Ljava/lang/String;
    const-string v3, "state"

    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 797
    .local v3, "status":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 798
    const-string v0, "ThirdAppManager"

    const-string v1, "updateAppsFirstLaunchFlag,no valid pkg for launch flag update"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    return-void

    .line 801
    :cond_2
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 803
    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 804
    .local v4, "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    if-eqz v4, :cond_3

    .line 805
    const-string v5, "ThirdAppManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAppsFirstLaunchFlag,update app launch flag as false:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 805
    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setIsFirstLaunch(Z)V

    .line 809
    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v7, 0x3

    new-array v0, v0, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    aput-object v4, v0, v5

    invoke-interface {v6, v7, v0, v1}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    goto :goto_0

    .line 811
    :cond_3
    const-string v0, "ThirdAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAppsFirstLaunchFlag,not found app info for pkg:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    .end local v4    # "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    :cond_4
    :goto_0
    return-void

    .line 816
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "status":Ljava/lang/String;
    :cond_5
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 817
    .local v2, "cr":Landroid/content/ContentResolver;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 818
    .local v3, "newInstalledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->ASSEMBLE_LOCAL_STATE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, v1, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    .line 819
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_a

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_a

    .line 820
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 821
    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 822
    .local v5, "state":I
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 823
    .local v6, "packageName":Ljava/lang/String;
    const-string v7, "ThirdAppManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAppsFirstLaunchFlag,pkg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",initial="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const/16 v7, 0x3e9

    if-ne v5, v7, :cond_7

    .line 827
    if-eqz p1, :cond_7

    .line 828
    sget-object v7, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 829
    .local v7, "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    if-eqz v7, :cond_6

    .line 830
    invoke-virtual {v7, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setIsFirstLaunch(Z)V

    .line 832
    :cond_6
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    .end local v5    # "state":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    :cond_7
    goto :goto_1

    .line 837
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 818
    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 837
    :goto_2
    if-eqz v4, :cond_9

    if-eqz v1, :cond_8

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_9
    :goto_3
    throw v0

    :cond_a
    if-eqz v4, :cond_b

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 838
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_b
    const-string v0, "ThirdAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAppsFirstLaunchFlag,newInstalledPackages="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    return-void
.end method

.method private updateAppsIcon()V
    .locals 5

    .line 606
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 608
    .local v0, "inNightMode":Z
    :goto_0
    const/4 v3, -0x1

    iget v4, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->dayNightMode:I

    if-ne v3, v4, :cond_2

    .line 609
    if-eqz v0, :cond_1

    move v1, v2

    nop

    :cond_1
    iput v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->dayNightMode:I

    goto :goto_2

    .line 611
    :cond_2
    iget v3, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->dayNightMode:I

    if-eqz v0, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    if-ne v3, v4, :cond_4

    .line 612
    const-string v1, "ThirdAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAppsIcon,mode not changed,current="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->dayNightMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void

    .line 615
    :cond_4
    if-eqz v0, :cond_5

    move v1, v2

    nop

    :cond_5
    iput v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->dayNightMode:I

    .line 617
    :goto_2
    const-string v1, "ThirdAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAppsIcon,size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 620
    .local v2, "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    if-eqz v0, :cond_6

    .line 621
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->isOperationNightIconValid()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 622
    goto :goto_3

    .line 625
    :cond_6
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->isOperationDayIconValid()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 626
    goto :goto_3

    .line 629
    :cond_7
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getStoreIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->getIconWithPackageName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 630
    .end local v2    # "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    goto :goto_3

    .line 631
    :cond_8
    return-void
.end method

.method private updateAppsTitleWhenLocaleChange()V
    .locals 8

    .line 634
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    const-string v0, "ThirdAppManager"

    const-string v1, "updateAppsTitleWhenLocaleChange,empty data"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return-void

    .line 638
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v0, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 641
    .local v2, "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    :try_start_0
    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 642
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 643
    .local v4, "title":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 645
    const-string v5, "ThirdAppManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update title for:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",title="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 645
    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-virtual {v2, v4}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setTitle(Ljava/lang/String;)V

    .line 648
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 650
    :catch_0
    move-exception v3

    .line 651
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "ThirdAppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleBroadcast e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    .end local v2    # "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 654
    :cond_2
    const-string v1, "ThirdAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAppsTitleWhenLocaleChange,size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 656
    return-void

    .line 658
    :cond_3
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v2, 0x3

    new-array v3, v3, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 659
    return-void
.end method

.method private updateInnerAppInfo(Landroid/content/pm/ApplicationInfo;Z)V
    .locals 12
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "isBroadcast"    # Z

    .line 412
    if-eqz p1, :cond_c

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 416
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 417
    .local v0, "launchIntent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 419
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->getMediaServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 420
    if-nez v0, :cond_1

    .line 421
    const-string v2, "ThirdAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applistInit,no launch intent for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_1
    new-instance v2, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    invoke-direct {v2}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;-><init>()V

    .line 427
    .local v2, "innerAppInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    const/4 v3, 0x0

    .line 428
    .local v3, "isXPadApp":Z
    const-string v4, "0"

    .line 430
    .local v4, "vc":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->iPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroid/content/pm/IPackageManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v6

    .line 431
    .local v6, "xpInfo":Lcom/xiaopeng/app/xpPackageInfo;
    if-eqz v6, :cond_5

    .line 432
    const/16 v7, 0x8

    iget v8, v6, Lcom/xiaopeng/app/xpPackageInfo;->appType:I

    if-ne v7, v8, :cond_2

    move v7, v1

    goto :goto_0

    :cond_2
    move v7, v5

    :goto_0
    move v3, v7

    .line 433
    iget v7, v6, Lcom/xiaopeng/app/xpPackageInfo;->screenLevelFlags:I

    if-eqz v7, :cond_4

    .line 434
    const/4 v7, 0x0

    .line 435
    .local v7, "i":I
    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x4

    if-gt v7, v8, :cond_4

    .line 436
    shl-int v8, v1, v7

    iget v9, v6, Lcom/xiaopeng/app/xpPackageInfo;->screenLevelFlags:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_3

    move v8, v1

    goto :goto_2

    :cond_3
    move v8, v5

    .line 437
    .local v8, "result":I
    :goto_2
    const-string v9, "ThirdAppManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "#####-----####screenLevelFlags="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcom/xiaopeng/app/xpPackageInfo;->screenLevelFlags:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",app.packageName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",i="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",result="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-virtual {v2, v7, v8}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setScreenShow(II)V

    .line 435
    .end local v8    # "result":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 441
    .end local v7    # "i":I
    :cond_4
    iget v7, v6, Lcom/xiaopeng/app/xpPackageInfo;->gearLevelFlags:I

    if-nez v7, :cond_5

    .line 442
    invoke-virtual {v2, v5, v5}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setScreenShow(II)V

    .line 445
    :cond_5
    sget-object v7, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 446
    .local v7, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_7

    .line 447
    iget-object v8, v2, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->bundle:Landroid/os/Bundle;

    if-nez v8, :cond_6

    .line 448
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v2, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->bundle:Landroid/os/Bundle;

    .line 450
    :cond_6
    iget-object v8, v2, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->bundle:Landroid/os/Bundle;

    const-string/jumbo v9, "versionName"

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-virtual {v7}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v8

    .line 455
    .end local v6    # "xpInfo":Lcom/xiaopeng/app/xpPackageInfo;
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    :cond_7
    goto :goto_3

    .line 453
    :catch_0
    move-exception v6

    .line 454
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "ThirdAppManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v6, 0x2

    if-eqz v3, :cond_8

    const/16 v7, 0xc

    goto :goto_4

    :cond_8
    move v7, v6

    :goto_4
    invoke-direct {p0, v7, v2, p1}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->applicationInfo2AppInfo(ILcom/xiaopeng/xuimanager/applist/data/AppInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 457
    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setLaunchIntent(Landroid/content/Intent;)V

    .line 459
    if-eqz v3, :cond_9

    .line 460
    sget-object v7, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mXPadAppMap:Ljava/util/Map;

    iget-object v8, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 462
    :cond_9
    sget-object v7, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    iget-object v8, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :goto_5
    if-eqz p2, :cond_b

    .line 466
    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setIsFirstLaunch(Z)V

    .line 467
    if-nez v3, :cond_a

    .line 469
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->updateAppInfoFromOperation(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    .line 471
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->getInstance()Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    move-result-object v7

    const/4 v8, 0x3

    iget-object v9, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v4}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->fetchAppOperation(ILjava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_a
    sget-object v7, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    new-array v1, v1, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    aput-object v2, v1, v5

    const/4 v5, 0x0

    invoke-interface {v7, v6, v1, v5}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 475
    :cond_b
    return-void

    .line 413
    .end local v0    # "launchIntent":Landroid/content/Intent;
    .end local v2    # "innerAppInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .end local v3    # "isXPadApp":Z
    .end local v4    # "vc":Ljava/lang/String;
    :cond_c
    :goto_6
    const-string v0, "ThirdAppManager"

    const-string v1, "application is null or is system app"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method private updateXpadAppStats(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/os/process/Stats;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/os/process/Stats;>;"
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mXPadAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "ThirdAppManager"

    const-string v1, "updateXpadAppStats, mXPadAppMap is empty"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    .line 126
    .local v0, "updated":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/os/process/Stats;

    .line 127
    .local v2, "stats":Lcom/xiaopeng/os/process/Stats;
    if-eqz v2, :cond_3

    .line 129
    iget-object v3, v2, Lcom/xiaopeng/os/process/Stats;->pkgName:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 130
    goto :goto_0

    .line 132
    :cond_1
    sget-object v3, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mXPadAppMap:Ljava/util/Map;

    iget-object v4, v2, Lcom/xiaopeng/os/process/Stats;->pkgName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 133
    sget-object v3, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mXPadAppMap:Ljava/util/Map;

    iget-object v4, v2, Lcom/xiaopeng/os/process/Stats;->pkgName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 134
    .local v3, "appInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    if-eqz v3, :cond_3

    .line 135
    const/4 v0, 0x1

    .line 136
    iget-object v4, v3, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->bundle:Landroid/os/Bundle;

    if-nez v4, :cond_2

    .line 137
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v3, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->bundle:Landroid/os/Bundle;

    .line 139
    :cond_2
    iget-object v4, v3, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->bundle:Landroid/os/Bundle;

    const-string v5, "memory"

    iget v6, v2, Lcom/xiaopeng/os/process/Stats;->pss:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    iget-object v4, v3, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->bundle:Landroid/os/Bundle;

    const-string v5, "cpu"

    iget v6, v2, Lcom/xiaopeng/os/process/Stats;->cpu:F

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 141
    iget-object v4, v2, Lcom/xiaopeng/os/process/Stats;->pkgName:Ljava/lang/String;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getAppStorage(Ljava/lang/String;)[J

    move-result-object v4

    .line 142
    .local v4, "storageSize":[J
    const-string v5, "ThirdAppManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get storage size, pkgName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/xiaopeng/os/process/Stats;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", storageSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-static {v4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 142
    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v5, v3, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->bundle:Landroid/os/Bundle;

    const-string v6, "storage"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 148
    .end local v2    # "stats":Lcom/xiaopeng/os/process/Stats;
    .end local v3    # "appInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .end local v4    # "storageSize":[J
    :cond_3
    goto :goto_0

    .line 149
    :cond_4
    if-eqz v0, :cond_5

    .line 150
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v2, 0x7

    sget-object v3, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mXPadAppMap:Ljava/util/Map;

    .line 151
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    const/4 v4, 0x0

    .line 150
    invoke-interface {v1, v2, v3, v4}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 153
    :cond_5
    return-void
.end method


# virtual methods
.method public getAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    .line 349
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mXPadAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    return-object v1

    .line 353
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 354
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 355
    .local v2, "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 356
    return-object v2

    .line 358
    .end local v2    # "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    :cond_1
    goto :goto_0

    .line 361
    :cond_2
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mXPadAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 362
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mXPadAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 363
    .restart local v2    # "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 364
    return-object v2

    .line 366
    .end local v2    # "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    :cond_3
    goto :goto_1

    .line 369
    :cond_4
    return-object v1
.end method

.method public getAppInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->updateAppsIcon()V

    .line 214
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->getCallScreenId()I

    move-result v0

    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->innerList2OutList(ILjava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfoList(I)Ljava/util/List;
    .locals 3
    .param p1, "screenId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 241
    const-string v0, "ThirdAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppInfoList,screenId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->updateAppsIcon()V

    .line 243
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->innerList2OutList(ILjava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfoListWithCategory(I)Ljava/util/List;
    .locals 1
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 219
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->getCallScreenId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->getAppInfoListWithCategory(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfoListWithCategory(II)Ljava/util/List;
    .locals 1
    .param p1, "category"    # I
    .param p2, "screenId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 224
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 225
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->getAppInfoList(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 226
    :cond_0
    const/16 v0, 0xc

    if-ne v0, p1, :cond_1

    .line 227
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mXPadAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->innerList2OutList(ILjava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 230
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getManagerName()Ljava/lang/String;
    .locals 1

    .line 181
    const-string v0, "ThirdAppManager"

    return-object v0
.end method

.method public getOneThirdAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;",
            ">;"
        }
    .end annotation

    .line 401
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .locals 3

    .line 193
    const-string v0, "ThirdAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init,managerInited="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->managerInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->managerInited:Z

    if-eqz v0, :cond_0

    .line 195
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->managerInited:Z

    .line 198
    invoke-static {}, Lcom/xiaopeng/os/process/ProcessStatsTracker;->getInstance()Lcom/xiaopeng/os/process/ProcessStatsTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mAppStatsListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/os/process/ProcessStatsTracker;->registerStatsListener(Ljava/lang/ref/WeakReference;)V

    .line 199
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->registerBroadCast()V

    .line 200
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$ThirdAppManager$uVdaXIujSKajrCv6ZjpPUiF2eo4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$ThirdAppManager$uVdaXIujSKajrCv6ZjpPUiF2eo4;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->addUserUnlockedTask(Ljava/lang/Runnable;)V

    .line 201
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->isBootComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$ThirdAppManager$v3s3VjRbh8e8eAR909Var8PCywY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$ThirdAppManager$v3s3VjRbh8e8eAR909Var8PCywY;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 204
    :cond_1
    return-void
.end method

.method public onAppOperationChanged(ILjava/lang/String;)V
    .locals 7
    .param p1, "groupType"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 380
    const-string v0, "ThirdAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppOperationChanged,group="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 384
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 386
    sget-object v3, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->updateAppsInfoFromOperation([Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Ljava/util/Collection;)V

    .line 387
    sget-object v3, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    new-array v1, v1, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v4, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v3, v0, v1, v2}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_1
    sget-object v3, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 390
    .local v3, "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    if-eqz v3, :cond_2

    .line 391
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->updateAppInfoFromOperation(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    .line 392
    const-string v4, "ThirdAppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAppOperationChanged,packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ,info.mScreenShow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mScreenShow:[I

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    aput-object v3, v5, v1

    invoke-interface {v4, v0, v5, v2}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_2
    const-string v0, "ThirdAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppOperationChanged,not found app info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .end local v3    # "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    :goto_0
    return-void

    .line 382
    :cond_3
    :goto_1
    return-void
.end method

.method public resetAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public startApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Landroid/os/Bundle;)I
    .locals 10
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p2, "extra"    # Landroid/os/Bundle;

    .line 288
    const/4 v0, 0x0

    .line 290
    .local v0, "ret":I
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mThirdAppMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 291
    .local v1, "innerAppInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    if-nez v1, :cond_0

    .line 292
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mXPadAppMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 294
    :cond_0
    if-nez v1, :cond_1

    .line 295
    const-string v2, "ThirdAppManager"

    const-string v3, "startApp,innerAppInfo is null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const/16 v2, -0x3ec

    return v2

    .line 298
    :cond_1
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v2

    .line 299
    .local v2, "originIntent":Landroid/content/Intent;
    if-nez v2, :cond_2

    .line 300
    sget-object v3, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 301
    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setLaunchIntent(Landroid/content/Intent;)V

    .line 303
    :cond_2
    if-eqz v2, :cond_5

    .line 304
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 305
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 306
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getCategory()I

    .line 311
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->getCallScreenId()I

    move-result v4

    .line 312
    .local v4, "screenId":I
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 313
    .local v5, "extraBundle":Landroid/os/Bundle;
    if-eqz p2, :cond_3

    .line 314
    const-string v6, "screenId"

    invoke-virtual {p2, v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    move v4, v6

    .line 315
    invoke-virtual {p0, p2, v3, v5}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->extraBundleToStartIntent(Landroid/os/Bundle;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 316
    const-string v6, "ThirdAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "client set with extraBundle screenId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_3
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v6

    sget-object v7, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v3, v4, v5}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)I

    .line 319
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->isFirstLaunch()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 321
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setIsFirstLaunch(Z)V

    .line 323
    sget-object v7, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mContext:Landroid/content/Context;

    const/16 v8, 0x3e8

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/xiaopeng/appstore/storeprovider/ResourceProviderContract;->clearState(Landroid/content/Context;ILjava/lang/String;)V

    .line 325
    sget-object v7, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v8, 0x3

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    aput-object p1, v9, v6

    const/4 v6, 0x0

    invoke-interface {v7, v8, v9, v6}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_4
    const-string v6, "ThirdAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pkg is not first launch:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v4    # "screenId":I
    .end local v5    # "extraBundle":Landroid/os/Bundle;
    :goto_0
    goto :goto_1

    .line 329
    :catch_0
    move-exception v4

    .line 330
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "ThirdAppManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start app e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/16 v0, -0x3ed

    .line 333
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 334
    :cond_5
    const/16 v0, -0x3ec

    .line 337
    :goto_2
    const-string v3, "ThirdAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startApp,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",extra="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return v0
.end method

.method public updateAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public updateApplist(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;)I"
        }
    .end annotation

    .line 254
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    const/4 v0, 0x0

    return v0
.end method
