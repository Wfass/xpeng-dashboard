.class public Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;
.super Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
.source "PresetAppManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppManagerHolder;,
        Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppListener;
    }
.end annotation


# static fields
.field private static final APPLIST_CHANGE_ACTION:Ljava/lang/String; = "com.xiaopeng.intent.action.XP_NAPA_APP_LIST_CHANGE"

.field public static final SECONDARY_SCREEN_ID:I = 0x64

.field private static final ScreenIds:[I

.field private static final TAG:Ljava/lang/String; = "PresetAppManager"

.field private static fakeAppInfo:Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

.field private static final mPresetAppInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mPresetAppListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPresetListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/app/xpAppInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mSpecialAppMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mIsAppListInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->ScreenIds:[I

    .line 67
    new-instance v0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->fakeAppInfo:Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 68
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mSpecialAppMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetListMap:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppListeners:Ljava/util/Set;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x4
        0x64
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;-><init>()V

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mIsAppListInited:Z

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$1;

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 1

    .line 58
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->fakeAppInfo:Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    return-object v0
.end method

.method private applistInit()V
    .locals 13

    .line 408
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 409
    .local v0, "xpAppInfoSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/xiaopeng/app/xpAppInfo;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 410
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 411
    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->ScreenIds:[I

    array-length v5, v4

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_3

    aget v7, v4, v6

    .line 412
    .local v7, "screenId":I
    move-object v8, v2

    .line 414
    .local v8, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    :try_start_0
    invoke-interface {v1, v7}, Landroid/content/pm/IPackageManager;->getXpAppPackageList(I)Ljava/util/List;

    move-result-object v9

    move-object v8, v9

    .line 415
    if-eqz v8, :cond_0

    .line 416
    sget-object v9, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetListMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-direct {p0, v8, v7}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->xpAppInfo2AppInfoList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v9

    .line 418
    .local v9, "targetAppInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    sget-object v10, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v10, "PresetAppManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getPresetApps size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",screenId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .end local v9    # "targetAppInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    :cond_0
    goto :goto_1

    .line 421
    :catch_0
    move-exception v9

    .line 422
    .local v9, "e":Ljava/lang/Exception;
    const-string v10, "PresetAppManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getPresetApps e="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ",screenId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v8, :cond_1

    .line 425
    invoke-interface {v0, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 411
    .end local v7    # "screenId":I
    .end local v8    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 429
    :cond_2
    const-string v4, "PresetAppManager"

    const-string v5, "getXpAppPackageList from pm null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_9

    .line 432
    const-string v4, "PresetAppManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPresetApps size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",mAppEventListener="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v4, "notifyList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/16 v8, 0x64

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 436
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-virtual {p0, v2, v9}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->updateAppsInfoFromOperation([Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Ljava/util/Collection;)V

    .line 437
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v8, :cond_4

    .line 438
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 440
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;>;"
    :cond_4
    goto :goto_2

    .line 441
    :cond_5
    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    new-array v7, v3, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v6, v5, v7, v2}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 443
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 444
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v2, v5

    new-array v2, v2, [Ljava/lang/String;

    .line 445
    .local v2, "notifyParams":[Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 446
    const/4 v3, 0x1

    .line 447
    .local v3, "i":I
    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 448
    .local v7, "screenId":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v8, v9, :cond_6

    .line 449
    add-int/lit8 v9, v3, 0x1

    .local v9, "i":I
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v3

    .line 451
    .end local v3    # "i":I
    .end local v7    # "screenId":Ljava/lang/Integer;
    move v3, v9

    .end local v9    # "i":I
    .restart local v3    # "i":I
    :cond_6
    goto :goto_3

    .line 452
    :cond_7
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v6

    new-instance v7, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PresetAppManager$01rz0JQ4AWlN0_gmxlMB1QoTmwU;

    invoke-direct {v7, v2}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PresetAppManager$01rz0JQ4AWlN0_gmxlMB1QoTmwU;-><init>([Ljava/lang/String;)V

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 456
    .end local v2    # "notifyParams":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "notifyList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    :cond_8
    goto :goto_4

    .line 457
    :cond_9
    const-string v2, "PresetAppManager"

    const-string v3, "getPresetApps,null list"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :goto_4
    iput-boolean v5, p0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mIsAppListInited:Z

    .line 460
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->innerThemeHandle()V

    .line 463
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v2, "filter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "com.xiaopeng.intent.action.XP_NAPA_APP_LIST_CHANGE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerListenerDynamically(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 466
    return-void
.end method

.method private applistReset()V
    .locals 13

    .line 469
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 470
    .local v0, "xpAppInfoSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/xiaopeng/app/xpAppInfo;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 471
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 472
    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->ScreenIds:[I

    array-length v5, v4

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_3

    aget v7, v4, v6

    .line 473
    .local v7, "screenId":I
    move-object v8, v2

    .line 475
    .local v8, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    :try_start_0
    invoke-interface {v1, v7}, Landroid/content/pm/IPackageManager;->getXpAppPackageList(I)Ljava/util/List;

    move-result-object v9

    move-object v8, v9

    .line 476
    if-eqz v8, :cond_0

    .line 477
    sget-object v9, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetListMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-direct {p0, v8, v7}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->xpAppInfo2AppInfoList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v9

    .line 479
    .local v9, "targetAppInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    sget-object v10, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string v10, "PresetAppManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "applistReset size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",screenId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .end local v9    # "targetAppInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    :cond_0
    goto :goto_1

    .line 482
    :catch_0
    move-exception v9

    .line 483
    .local v9, "e":Ljava/lang/Exception;
    const-string v10, "PresetAppManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "applistReset e="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ",screenId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v8, :cond_1

    .line 486
    invoke-interface {v0, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 472
    .end local v7    # "screenId":I
    .end local v8    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 490
    :cond_2
    const-string v4, "PresetAppManager"

    const-string v5, "applistReset from pm null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 493
    const-string v4, "PresetAppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applistReset size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",mAppEventListener="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v4, "notifyList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    sget-object v5, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/16 v7, 0x64

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 497
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {p0, v2, v8}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->updateAppsInfoFromOperation([Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Ljava/util/Collection;)V

    .line 498
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v7, :cond_4

    .line 499
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 501
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;>;"
    :cond_4
    goto :goto_2

    .line 503
    :cond_5
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 504
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v5, 0x1

    add-int/2addr v2, v5

    new-array v2, v2, [Ljava/lang/String;

    .line 505
    .local v2, "notifyParams":[Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 506
    const/4 v3, 0x1

    .line 507
    .local v3, "i":I
    sget-object v5, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 508
    .local v6, "screenId":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v7, v8, :cond_6

    .line 509
    add-int/lit8 v8, v3, 0x1

    .local v8, "i":I
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v3

    .line 511
    .end local v3    # "i":I
    .end local v6    # "screenId":Ljava/lang/Integer;
    move v3, v8

    .end local v8    # "i":I
    .restart local v3    # "i":I
    :cond_6
    goto :goto_3

    .line 512
    :cond_7
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v5

    new-instance v6, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PresetAppManager$-i2-l_Uz4GuuT42GG7XmerOe4xY;

    invoke-direct {v6, v2}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PresetAppManager$-i2-l_Uz4GuuT42GG7XmerOe4xY;-><init>([Ljava/lang/String;)V

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 516
    .end local v2    # "notifyParams":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "notifyList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    :cond_8
    goto :goto_4

    .line 517
    :cond_9
    const-string v2, "PresetAppManager"

    const-string v3, "applistReset,null list"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :goto_4
    return-void
.end method

.method private getApplist(I)Ljava/util/List;
    .locals 4
    .param p1, "targetScreenId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 396
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 397
    .local v0, "targetAppInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    if-nez v0, :cond_0

    .line 398
    const-string v1, "PresetAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApplist null,screenId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/4 v1, 0x0

    return-object v1

    .line 401
    :cond_0
    const-string v1, "PresetAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApplist,screenId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->innerList2OutList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;
    .locals 1

    .line 100
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppManagerHolder;->access$200()Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;

    move-result-object v0

    return-object v0
.end method

.method private handleApplistChanged(Landroid/content/Intent;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    move-object/from16 v1, p0

    .line 598
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 599
    .local v2, "updatedAppsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;>;"
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 600
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 601
    .local v5, "innerAppInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-virtual {v5}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->isIconUpdatedByOut()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 602
    const-string v6, "PresetAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleApplistChanged, find app:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 604
    .local v6, "map":Ljava/util/Map;
    if-nez v6, :cond_0

    .line 605
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object v6, v7

    .line 606
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    :cond_0
    invoke-virtual {v5}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    .end local v5    # "innerAppInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .end local v6    # "map":Ljava/util/Map;
    :cond_1
    goto :goto_1

    .line 611
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;>;"
    :cond_2
    goto :goto_0

    .line 612
    :cond_3
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mSpecialAppMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 613
    .local v4, "key":Ljava/lang/String;
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mSpecialAppMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-object v5, v0

    .line 615
    .local v5, "appInfo":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->iPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, v4}, Landroid/content/pm/IPackageManager;->getxpAppInfoBypkgName(Ljava/lang/String;)Lcom/xiaopeng/app/xpAppInfo;

    move-result-object v0

    .line 616
    .local v0, "source":Lcom/xiaopeng/app/xpAppInfo;
    if-nez v0, :cond_4

    .line 617
    const-string v6, "PresetAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleApplistChanged,can not find appInfo for pkg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 619
    :cond_4
    invoke-direct {v1, v5, v0}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->xpAppInfo2AppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Lcom/xiaopeng/app/xpAppInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    .end local v0    # "source":Lcom/xiaopeng/app/xpAppInfo;
    :goto_3
    goto :goto_4

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "PresetAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleApplistChanged e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "appInfo":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    :goto_4
    goto :goto_2

    .line 625
    :cond_5
    const-string v0, "data"

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 626
    .local v4, "data":Landroid/os/Bundle;
    if-eqz v4, :cond_10

    .line 627
    const-string v0, "supportScreenId"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 628
    .local v5, "displayIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_d

    .line 632
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x1

    add-int/2addr v0, v6

    new-array v7, v0, [Ljava/lang/String;

    .line 633
    .local v7, "notifyParams":[Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    aput-object v0, v7, v8

    .line 634
    const/4 v0, 0x1

    .line 635
    .local v0, "i":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v11, 0x0

    const/16 v12, 0x64

    if-eqz v0, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v13, v0

    .line 637
    .local v13, "displayId":I
    :try_start_1
    invoke-static {v13}, Lcom/xiaopeng/xuimanager/xapp/XAppManager;->getXpAppPackageList(I)Ljava/util/List;

    move-result-object v0

    .line 638
    .local v0, "xpAppInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_7

    goto :goto_6

    .line 645
    :cond_7
    sget-object v14, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetListMap:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    invoke-direct {v1, v0, v13}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->xpAppInfo2AppInfoList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v14

    .line 648
    .local v14, "targetAppInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v15

    new-instance v8, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PresetAppManager$2Zjb2MSXekgYM-_xoDwjZhZOSps;

    invoke-direct {v8, v1}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PresetAppManager$2Zjb2MSXekgYM-_xoDwjZhZOSps;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;)V

    invoke-interface {v15, v8}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 650
    sget-object v8, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v8, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    const-string v8, "PresetAppManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleApplistChanged,displayId="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",size="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 654
    .local v6, "updatedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    if-eqz v6, :cond_8

    .line 655
    new-instance v8, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PresetAppManager$yDOwPz4oeDIm2vHLWFn4AdNnrro;

    invoke-direct {v8, v6}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PresetAppManager$yDOwPz4oeDIm2vHLWFn4AdNnrro;-><init>(Ljava/util/Map;)V

    invoke-interface {v14, v8}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 663
    :cond_8
    if-eq v12, v13, :cond_a

    .line 664
    invoke-virtual {v1, v14}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->innerList2OutArray(Ljava/util/List;)[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v8

    .line 665
    .local v8, "infos":[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    sget-object v15, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v12, 0x1

    invoke-interface {v15, v12, v8, v11}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .end local v6    # "updatedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    .end local v8    # "infos":[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .end local v14    # "targetAppInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    goto :goto_7

    .line 640
    :cond_9
    :goto_6
    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetListMap:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 642
    .local v6, "oldAppInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    const-string v8, "PresetAppManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleApplistChanged,displayId="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",size=0,oldAppInfoList="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 644
    .end local v6    # "oldAppInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    nop

    .line 668
    :cond_a
    :goto_7
    const/16 v6, 0x64

    if-eq v6, v13, :cond_b

    .line 669
    add-int/lit8 v6, v10, 0x1

    .local v6, "i":I
    :try_start_2
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v10    # "i":I
    goto :goto_9

    .line 675
    .end local v0    # "xpAppInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    :catch_1
    move-exception v0

    move v10, v6

    goto :goto_a

    .line 671
    .end local v6    # "i":I
    .restart local v0    # "xpAppInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    .restart local v10    # "i":I
    :cond_b
    :try_start_3
    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppListeners:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppListener;

    .line 672
    .local v8, "l":Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppListener;
    invoke-interface {v8, v13, v11}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppListener;->onPresetAppListChanged(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 673
    .end local v8    # "l":Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppListener;
    goto :goto_8

    .line 677
    .end local v0    # "xpAppInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    :cond_c
    move v6, v10

    .line 678
    .end local v10    # "i":I
    .restart local v6    # "i":I
    :goto_9
    move v10, v6

    goto :goto_b

    .line 675
    .end local v6    # "i":I
    .restart local v10    # "i":I
    :catch_2
    move-exception v0

    .line 676
    .local v0, "e":Ljava/lang/Exception;
    :goto_a
    const-string v6, "PresetAppManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleApplistChanged e="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ",displayId="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v13    # "displayId":I
    :goto_b
    nop

    .line 635
    const/4 v6, 0x1

    const/4 v8, 0x0

    goto/16 :goto_5

    .line 680
    :cond_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_e

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v6, 0x64

    if-ne v6, v0, :cond_e

    .end local v5    # "displayIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "notifyParams":[Ljava/lang/String;
    .end local v10    # "i":I
    goto :goto_c

    .line 683
    .restart local v5    # "displayIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v7    # "notifyParams":[Ljava/lang/String;
    .restart local v10    # "i":I
    :cond_e
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v6, 0x6

    invoke-interface {v0, v6, v11, v7}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 686
    .end local v5    # "displayIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "notifyParams":[Ljava/lang/String;
    .end local v10    # "i":I
    :goto_c
    goto :goto_e

    .line 629
    .restart local v5    # "displayIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_f
    :goto_d
    const-string v0, "PresetAppManager"

    const-string v6, "handleApplistChanged,displayIds is null"

    invoke-static {v0, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    return-void

    .line 687
    .end local v5    # "displayIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_10
    const-string v0, "PresetAppManager"

    const-string v5, "handleApplistChanged,data is null"

    invoke-static {v0, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :goto_e
    return-void
.end method

.method private innerThemeHandle()V
    .locals 12

    .line 341
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getInstance()Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v0

    .line 342
    .local v0, "theme":Lcom/xiaopeng/xuimanager/theme/Theme;
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/Themes;->isOperationTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)Z

    move-result v1

    .line 343
    .local v1, "isOperationTheme":Z
    const-string v2, "PresetAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "innerThemeHandle,isOperationTheme="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",mIsAppListInited="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mIsAppListInited:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mIsAppListInited:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 346
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 347
    const/4 v3, 0x0

    .line 348
    .local v3, "updateCount":I
    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    new-array v4, v4, [Ljava/lang/String;

    .line 349
    .local v4, "notifyParams":[Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    .line 350
    const/4 v6, 0x1

    .line 351
    .local v6, "i":I
    sget-object v7, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 352
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;>;"
    const/4 v9, 0x0

    .line 353
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-virtual {p0, v0, v9, v10}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->updateAppInfosFromTheme(Lcom/xiaopeng/xuimanager/theme/Theme;[Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Ljava/util/Collection;)Z

    move-result v9

    .line 354
    .local v9, "screenUpdated":Z
    if-eqz v9, :cond_0

    .line 355
    add-int/lit8 v3, v3, 0x1

    .line 356
    add-int/lit8 v10, v6, 0x1

    .local v10, "i":I
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v6

    .line 358
    .end local v6    # "i":I
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;>;"
    .end local v9    # "screenUpdated":Z
    move v6, v10

    .end local v10    # "i":I
    .restart local v6    # "i":I
    :cond_0
    goto :goto_0

    .line 359
    :cond_1
    const-string v7, "PresetAppManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "innerThemeHandle,update screen Count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    if-lez v3, :cond_2

    .line 361
    iput-boolean v5, p0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->isInThemeMode:Z

    .line 362
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v2

    new-instance v5, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PresetAppManager$YERUrQFeriEG-E_3-nFnBvUQndU;

    invoke-direct {v5, v4}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PresetAppManager$YERUrQFeriEG-E_3-nFnBvUQndU;-><init>([Ljava/lang/String;)V

    const-wide/16 v7, 0x3e8

    invoke-virtual {v2, v5, v7, v8}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 366
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->applistReset()V

    .line 367
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->isInThemeMode:Z

    .line 369
    .end local v3    # "updateCount":I
    .end local v4    # "notifyParams":[Ljava/lang/String;
    .end local v6    # "i":I
    :goto_1
    goto :goto_2

    .line 370
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->applistReset()V

    .line 371
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->isInThemeMode:Z

    .line 374
    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic lambda$applistInit$4([Ljava/lang/String;)V
    .locals 3
    .param p0, "notifyParams"    # [Ljava/lang/String;

    .line 453
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p0}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method static synthetic lambda$applistReset$5([Ljava/lang/String;)V
    .locals 3
    .param p0, "notifyParams"    # [Ljava/lang/String;

    .line 513
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p0}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method public static synthetic lambda$handleApplistChanged$6(Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 648
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->updateAppInfoFromOperation(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    return-void
.end method

.method static synthetic lambda$handleApplistChanged$7(Ljava/util/Map;Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V
    .locals 1
    .param p0, "updatedMap"    # Ljava/util/Map;
    .param p1, "innerAppInfo"    # Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 656
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 657
    .local v0, "target":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {p1, v0, p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->copyIconIfo(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    .line 661
    :cond_0
    return-void
.end method

.method public static synthetic lambda$init$1(Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->applistInit()V

    return-void
.end method

.method static synthetic lambda$innerThemeHandle$3([Ljava/lang/String;)V
    .locals 3
    .param p0, "notifyParams"    # [Ljava/lang/String;

    .line 363
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p0}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 87
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->handleApplistChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$updateAppInfo$2(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V
    .locals 4
    .param p0, "innerInfo"    # Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 164
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method private xpAppInfo2AppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Lcom/xiaopeng/app/xpAppInfo;)V
    .locals 6
    .param p1, "target"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p2, "source"    # Lcom/xiaopeng/app/xpAppInfo;

    .line 569
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setCategory(I)V

    .line 570
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setStatus(I)V

    .line 571
    iget-object v1, p2, Lcom/xiaopeng/app/xpAppInfo;->mXpAppId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setPkgName(Ljava/lang/String;)V

    .line 572
    iget-object v1, p2, Lcom/xiaopeng/app/xpAppInfo;->resId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setAppId(Ljava/lang/String;)V

    .line 573
    iget-object v1, p2, Lcom/xiaopeng/app/xpAppInfo;->mXpAppTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setTitle(Ljava/lang/String;)V

    .line 575
    :try_start_0
    new-instance v1, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;-><init>()V

    .line 576
    .local v1, "icon":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->iPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v3, p2, Lcom/xiaopeng/app/xpAppInfo;->resId:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->getXpAppIconDay(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->BITMAP_APP_LIST_SIZE:I

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v4}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->checkBitMap(Ljava/lang/Object;IZZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 578
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setStoreIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 579
    new-instance v2, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-direct {v2}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;-><init>()V

    move-object v1, v2

    .line 580
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->iPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v3, p2, Lcom/xiaopeng/app/xpAppInfo;->resId:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->getXpAppIconNight(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->BITMAP_APP_LIST_SIZE:I

    invoke-virtual {p0, v2, v3, v4, v4}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->checkBitMap(Ljava/lang/Object;IZZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 582
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setStoreNightIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 583
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->iPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v3, p2, Lcom/xiaopeng/app/xpAppInfo;->resId:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->getDockIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 584
    .local v2, "dockerBmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 585
    new-instance v3, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-direct {v3}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;-><init>()V

    .line 586
    .local v3, "docerIcon":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    sget v5, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->BITMAP_DOCKER_SIZE:I

    invoke-virtual {p0, v2, v5, v0, v4}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->checkBitMap(Ljava/lang/Object;IZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 588
    invoke-virtual {p1, v3}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setDockerIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 589
    .end local v3    # "docerIcon":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    goto :goto_0

    .line 590
    :cond_0
    const-string v0, "PresetAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get null bmp for docker,pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/xiaopeng/app/xpAppInfo;->resId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .end local v1    # "icon":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    .end local v2    # "dockerBmp":Landroid/graphics/Bitmap;
    :goto_0
    goto :goto_1

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PresetAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xpAppInfo2AppInfo e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private xpAppInfo2AppInfoArray(Ljava/util/Set;)[Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/xiaopeng/app/xpAppInfo;",
            ">;)[",
            "Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;"
        }
    .end annotation

    .line 522
    .local p1, "xpAppInfoSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/xiaopeng/app/xpAppInfo;>;"
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 523
    .local v0, "infos":[Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    const/4 v1, 0x0

    .line 524
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/app/xpAppInfo;

    .line 525
    .local v3, "source":Lcom/xiaopeng/app/xpAppInfo;
    new-instance v4, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    invoke-direct {v4}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;-><init>()V

    aput-object v4, v0, v1

    .line 526
    aget-object v4, v0, v1

    invoke-direct {p0, v4, v3}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->xpAppInfo2AppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Lcom/xiaopeng/app/xpAppInfo;)V

    .line 527
    add-int/lit8 v1, v1, 0x1

    .line 528
    .end local v3    # "source":Lcom/xiaopeng/app/xpAppInfo;
    goto :goto_0

    .line 529
    :cond_0
    return-object v0
.end method

.method private xpAppInfo2AppInfoList(Ljava/util/List;I)Ljava/util/List;
    .locals 12
    .param p2, "screenId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/app/xpAppInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;",
            ">;"
        }
    .end annotation

    .line 533
    .local p1, "xpAppInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 537
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v0, "appInfoArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/app/xpAppInfo;

    .line 539
    .local v2, "source":Lcom/xiaopeng/app/xpAppInfo;
    new-instance v3, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    invoke-direct {v3}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;-><init>()V

    .line 540
    .local v3, "appInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-direct {p0, v3, v2}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->xpAppInfo2AppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Lcom/xiaopeng/app/xpAppInfo;)V

    .line 541
    const/16 v4, 0x64

    if-ne v4, p2, :cond_1

    .line 543
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 544
    .local v4, "i":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v2, Lcom/xiaopeng/app/xpAppInfo;->mXpAppId:Ljava/lang/String;

    iget-object v7, v2, Lcom/xiaopeng/app/xpAppInfo;->mXpAppPage:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 545
    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setLaunchIntent(Landroid/content/Intent;)V

    .line 547
    .end local v4    # "i":Landroid/content/Intent;
    :cond_1
    const-string v4, "PresetAppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "xpAppInfo2AppInfoList,screenId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",source.supportScreenId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/xiaopeng/app/xpAppInfo;->supportScreenId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",appInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "next will setScreenShow"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget v4, v2, Lcom/xiaopeng/app/xpAppInfo;->supportScreenId:I

    const/4 v5, -0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v4, v5, :cond_3

    .line 551
    move v4, v7

    .line 551
    .local v4, "i":I
    :goto_1
    if-gt v4, v6, :cond_4

    .line 552
    shl-int v5, v8, v4

    iget v9, v2, Lcom/xiaopeng/app/xpAppInfo;->supportScreenId:I

    and-int/2addr v5, v9

    if-eqz v5, :cond_2

    move v5, v8

    goto :goto_2

    :cond_2
    move v5, v7

    .line 553
    .local v5, "result":I
    :goto_2
    const-string v9, "PresetAppManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "xpAppInfo2AppInfoList source.supportScreenId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Lcom/xiaopeng/app/xpAppInfo;->supportScreenId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",i="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",result="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setScreenShow(II)V

    .line 551
    .end local v5    # "result":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 557
    .end local v4    # "i":I
    :cond_3
    const-string v4, "PresetAppManager"

    const-string/jumbo v5, "xpAppInfo2AppInfoList source.supportScreenId===-1 support all the screen"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    nop

    .line 558
    .local v7, "id":I
    :goto_3
    move v4, v7

    .line 558
    .end local v7    # "id":I
    .local v4, "id":I
    if-gt v4, v6, :cond_4

    .line 559
    invoke-virtual {v3, v4, v8}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setScreenShow(II)V

    .line 558
    add-int/lit8 v7, v4, 0x1

    .line 558
    .end local v4    # "id":I
    .restart local v7    # "id":I
    goto :goto_3

    .line 562
    .end local v7    # "id":I
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    .end local v2    # "source":Lcom/xiaopeng/app/xpAppInfo;
    .end local v3    # "appInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    goto/16 :goto_0

    .line 565
    :cond_5
    return-object v0

    .line 534
    .end local v0    # "appInfoArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    :cond_6
    :goto_4
    const-string v0, "PresetAppManager"

    const-string/jumbo v1, "xpAppInfo2AppInfoList,empty list"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addPresetAppListener(Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppListener;

    .line 326
    if-eqz p1, :cond_0

    .line 327
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_0
    return-void
.end method

.method public doOnThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 3
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 383
    const-string v0, "PresetAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOnThemeSelected,theme="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsAppListInited="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mIsAppListInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mIsAppListInited:Z

    if-eqz v0, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->innerThemeHandle()V

    .line 388
    :cond_0
    return-void
.end method

.method public doThemeInit()V
    .locals 2

    .line 336
    const-string v0, "PresetAppManager"

    const-string v1, "doThemeInit"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->innerThemeHandle()V

    .line 338
    return-void
.end method

.method public getAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .line 262
    const-string v0, "PresetAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppInfo,appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/4 v0, 0x0

    return-object v0
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

    .line 119
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->getCallScreenId()I

    move-result v0

    .line 120
    .local v0, "screenId":I
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->getApplist(I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getAppInfoList(I)Ljava/util/List;
    .locals 1
    .param p1, "screenId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->getApplist(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getManagerName()Ljava/lang/String;
    .locals 1

    .line 392
    const-string v0, "PresetAppManager"

    return-object v0
.end method

.method public getOneThirdAppList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;",
            ">;"
        }
    .end annotation

    .line 322
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getSpecialAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 712
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mSpecialAppMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 713
    .local v0, "appInfo":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 714
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->realGetSpecialAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v0

    .line 715
    if-eqz v0, :cond_1

    .line 716
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mSpecialAppMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    :cond_1
    return-object v0
.end method

.method public init()V
    .locals 2

    .line 108
    const-string v0, "PresetAppManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PresetAppManager$sCL0KRHwh_M1CuCRSlcvk5Sw4LI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PresetAppManager$sCL0KRHwh_M1CuCRSlcvk5Sw4LI;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method

.method public onAppOperationChanged(ILjava/lang/String;)V
    .locals 12
    .param p1, "groupType"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 274
    const-string v0, "PresetAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppOperationChanged,group="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isInThemeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->isInThemeMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/16 v0, 0xe

    if-ne p1, v0, :cond_8

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->isInThemeMode:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 279
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-nez p2, :cond_3

    .line 281
    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 282
    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 283
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {p0, v3, v6}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->updateAppsInfoFromOperation([Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Ljava/util/Collection;)V

    .line 284
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v2, v6, :cond_1

    .line 285
    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    new-array v8, v0, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v6, v1, v7, v3}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    goto :goto_2

    .line 287
    :cond_1
    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppListeners:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppListener;

    .line 288
    .local v7, "l":Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppListener;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8, v3}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppListener;->onPresetAppListChanged(ILjava/lang/String;)V

    .line 289
    .end local v7    # "l":Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppListener;
    goto :goto_1

    .line 291
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;>;"
    :cond_2
    :goto_2
    goto :goto_0

    .line 294
    :cond_3
    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 295
    const/4 v4, 0x0

    .line 296
    .local v4, "count":I
    sget-object v5, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 297
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 298
    .local v7, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 299
    .local v9, "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-virtual {v9}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 300
    invoke-virtual {p0, v9}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->updateAppInfoFromOperation(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    .line 301
    add-int/lit8 v4, v4, 0x1

    .line 302
    const/4 v8, 0x1

    if-ne v8, v4, :cond_4

    .line 304
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v2, v10, :cond_4

    .line 305
    sget-object v10, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    new-array v8, v8, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    aput-object v9, v8, v0

    invoke-interface {v10, v1, v8, v3}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 308
    :cond_4
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v2, v8, :cond_6

    .line 309
    sget-object v8, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppListeners:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppListener;

    .line 310
    .local v10, "l":Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppListener;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11, p2}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppListener;->onPresetAppListChanged(ILjava/lang/String;)V

    .line 311
    .end local v10    # "l":Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppListener;
    goto :goto_5

    .line 315
    .end local v9    # "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    :cond_5
    goto :goto_4

    .line 316
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;>;"
    .end local v7    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    :cond_6
    goto :goto_3

    .line 319
    .end local v4    # "count":I
    :cond_7
    return-void

    .line 277
    :cond_8
    :goto_6
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 85
    const-string v0, "PresetAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive,intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "com.xiaopeng.intent.action.XP_NAPA_APP_LIST_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PresetAppManager$SuMBuilwRbhX17nEqugmHbBvKbw;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PresetAppManager$SuMBuilwRbhX17nEqugmHbBvKbw;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 89
    :cond_0
    return-void
.end method

.method public realGetSpecialAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .line 692
    new-instance v0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;-><init>()V

    .line 694
    .local v0, "appInfo":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->iPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getxpAppInfoBypkgName(Ljava/lang/String;)Lcom/xiaopeng/app/xpAppInfo;

    move-result-object v2

    .line 696
    .local v2, "source":Lcom/xiaopeng/app/xpAppInfo;
    if-nez v2, :cond_0

    .line 697
    const-string v3, "PresetAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "realGetSpecialAppInfo,can not find appInfo for pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    return-object v1

    .line 700
    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->xpAppInfo2AppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Lcom/xiaopeng/app/xpAppInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    .end local v2    # "source":Lcom/xiaopeng/app/xpAppInfo;
    nop

    .line 706
    const-string v1, "PresetAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "realGetSpecialAppInfo,appInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",StoreIcon,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getStoreIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",appId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    return-object v0

    .line 702
    :catch_0
    move-exception v2

    .line 703
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PresetAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "realGetSpecialAppInfo e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    return-object v1
.end method

.method public realPkgNameMatch(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 725
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mSpecialAppMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 726
    .local v0, "isMatch":Z
    const-string v1, "PresetAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "realPkgNameMatch,pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",isMatch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    return v0
.end method

.method public resetAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 3
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 185
    const-string v0, "PresetAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetAppInfo,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/16 v0, -0x3e9

    return v0
.end method

.method public startApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Landroid/os/Bundle;)I
    .locals 11
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p2, "extra"    # Landroid/os/Bundle;

    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 201
    .local v1, "targetXpApp":Lcom/xiaopeng/app/xpAppInfo;
    const/4 v2, 0x0

    .line 202
    .local v2, "startType":I
    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 204
    const-string v4, "startType"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 206
    :cond_0
    const/4 v4, 0x1

    if-ne v4, v2, :cond_1

    .line 208
    new-instance v4, Lcom/xiaopeng/app/xpAppInfo;

    invoke-direct {v4}, Lcom/xiaopeng/app/xpAppInfo;-><init>()V

    move-object v1, v4

    .line 209
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/xiaopeng/app/xpAppInfo;->mXpAppId:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/xiaopeng/app/xpAppInfo;->mXpAppPage:Ljava/lang/String;

    goto :goto_3

    .line 212
    :cond_1
    const/4 v4, 0x0

    .line 213
    .local v4, "found":Z
    sget-object v5, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetListMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 214
    .local v6, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    if-eqz v4, :cond_2

    .line 215
    goto :goto_3

    .line 217
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/app/xpAppInfo;

    .line 218
    .local v8, "current":Lcom/xiaopeng/app/xpAppInfo;
    iget-object v9, v8, Lcom/xiaopeng/app/xpAppInfo;->resId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 219
    move-object v1, v8

    .line 220
    const/4 v4, 0x1

    .line 221
    goto :goto_2

    .line 223
    .end local v8    # "current":Lcom/xiaopeng/app/xpAppInfo;
    :cond_3
    goto :goto_1

    .line 224
    .end local v6    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    :cond_4
    :goto_2
    goto :goto_0

    .line 226
    .end local v4    # "found":Z
    :cond_5
    :goto_3
    if-nez v1, :cond_6

    .line 227
    const/16 v0, -0x3ea

    goto/16 :goto_5

    .line 229
    :cond_6
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->getCallScreenId()I

    move-result v4

    .line 230
    .local v4, "screenId":I
    if-eqz p2, :cond_9

    .line 231
    const-string v5, "screenId"

    invoke-virtual {p2, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 233
    const-string v5, "checkHasOnTop"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 234
    iget-object v5, v1, Lcom/xiaopeng/app/xpAppInfo;->mPageExtra:Ljava/util/HashMap;

    if-nez v5, :cond_7

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    goto :goto_4

    :cond_7
    iget-object v5, v1, Lcom/xiaopeng/app/xpAppInfo;->mPageExtra:Ljava/util/HashMap;

    :goto_4
    iput-object v5, v1, Lcom/xiaopeng/app/xpAppInfo;->mPageExtra:Ljava/util/HashMap;

    .line 235
    iget-object v5, v1, Lcom/xiaopeng/app/xpAppInfo;->mPageExtra:Ljava/util/HashMap;

    const-string v6, "checkHasOnTop"

    const-string v7, "checkHasOnTop"

    invoke-virtual {p2, v7, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_8
    const-string v3, "PresetAppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "client set screenId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/xiaopeng/app/xpAppInfo;->mXpAppId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&page="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/xiaopeng/app/xpAppInfo;->mXpAppPage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&startType="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "uriParam":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppService;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 243
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppService;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v4}, Lcom/xiaopeng/xuiservice/xapp/XAppService;->startXpApp(Lcom/xiaopeng/app/xpAppInfo;II)V

    goto :goto_5

    .line 245
    :cond_a
    const/16 v0, -0x3e8

    .line 249
    .end local v3    # "uriParam":Ljava/lang/String;
    .end local v4    # "screenId":I
    :goto_5
    const-string v3, "PresetAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startApp,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",extra="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",startType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return v0
.end method

.method public updateAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 7
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 154
    const-string v0, "PresetAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAppInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "found":Z
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->mPresetAppInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 158
    .local v2, "innerList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 159
    .local v4, "innerInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    const/4 v0, 0x1

    .line 161
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setIconUpdatedByOut(Z)V

    .line 162
    invoke-virtual {p0, v4, p1}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->updateInnerAppInfoFromAppInfo(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V

    .line 163
    new-instance v3, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PresetAppManager$4xBDEIY1EIjXd6oJlQPhmBbZaiY;

    invoke-direct {v3, v4}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PresetAppManager$4xBDEIY1EIjXd6oJlQPhmBbZaiY;-><init>(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 166
    goto :goto_2

    .line 168
    .end local v4    # "innerInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    :cond_0
    goto :goto_1

    .line 169
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 170
    goto :goto_3

    .line 172
    .end local v2    # "innerList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    :cond_2
    goto :goto_0

    .line 174
    .end local v0    # "found":Z
    :cond_3
    :goto_3
    const/4 v0, 0x0

    return v0
.end method

.method public updateApplist(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;)I"
        }
    .end annotation

    .line 142
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    const-string v0, "PresetAppManager"

    const-string v1, "updateApplist"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/16 v0, -0x3e9

    return v0
.end method
