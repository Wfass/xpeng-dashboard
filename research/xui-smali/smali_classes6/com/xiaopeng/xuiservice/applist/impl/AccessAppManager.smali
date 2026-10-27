.class public Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;
.super Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
.source "AccessAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;,
        Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$SINGLETON;
    }
.end annotation


# static fields
.field private static final CONFIG_FILE:Ljava/lang/String; = "access/accessConfig.json"

.field private static final KEY_AUTHED:Ljava/lang/String; = "authed"

.field private static final KEY_INSTALLED:Ljava/lang/String; = "installed"

.field private static final MODULE_NAME:Ljava/lang/String; = "AccessManager"

.field private static final REAL_PKG_NAME:Ljava/lang/String; = "com.xiaopeng.accessin"

.field private static final TAG:Ljava/lang/String; = "AccessAppManager"

.field private static final UPDATE_APP_INFO_INTERVAL:J = 0x36ee80L

.field private static final busServiceName:Ljava/lang/String; = "xuiAccess"

.field private static mAccessAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppPreAuthMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppSupportScreenIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private volatile mLastLaunchPkg:Ljava/lang/String;

.field private mLastUpdateAppInfoTime:J

.field private mUpdateXpAppInfoTask:Ljava/lang/Runnable;

.field private mXpAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/app/xpAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAppPreAuthMap:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAppSupportScreenIdMap:Ljava/util/Map;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    .line 64
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mXpAppList:Ljava/util/List;

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mLastUpdateAppInfoTime:J

    .line 71
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$AccessAppManager$3OjIIZtXjfNXWafo-HV44swwAPg;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$AccessAppManager$3OjIIZtXjfNXWafo-HV44swwAPg;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mUpdateXpAppInfoTask:Ljava/lang/Runnable;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mLastLaunchPkg:Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->loadConfigFile()V

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$1;

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;-><init>()V

    return-void
.end method

.method private fetchIconAsync(Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;)V
    .locals 7
    .param p1, "app"    # Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    .line 313
    iget-boolean v0, p1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIconUrlChanged:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->isOperationNightIconValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->isOperationDayIconValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    :cond_0
    iget-object v3, p1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIconUrl:Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$AccessAppManager$TKm0ar60UTJTaS7utB2FveH4Zzs;

    invoke-direct {v5, p0}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$AccessAppManager$TKm0ar60UTJTaS7utB2FveH4Zzs;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->fetchAndResizeAppIconAsync(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Ljava/lang/String;ZLcom/xiaopeng/xuiservice/applist/AbsAppListManager$AppIconFetchedCallback;Z)V

    .line 325
    :cond_1
    iget-boolean v0, p1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIconUrlChanged:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->isOperationDockIconValid()Z

    move-result v0

    if-nez v0, :cond_3

    .line 326
    :cond_2
    iget-object v3, p1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIconUrl:Ljava/lang/String;

    const/4 v4, 0x1

    new-instance v5, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$AccessAppManager$-FRwBLlsTaByq392QY7wbXlObh0;

    invoke-direct {v5, p0}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$AccessAppManager$-FRwBLlsTaByq392QY7wbXlObh0;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->fetchAndResizeAppIconAsync(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Ljava/lang/String;ZLcom/xiaopeng/xuiservice/applist/AbsAppListManager$AppIconFetchedCallback;Z)V

    .line 336
    :cond_3
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;
    .locals 1

    .line 84
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$SINGLETON;->access$100()Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;

    move-result-object v0

    return-object v0
.end method

.method private static isAppMetaAuthed(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)Z
    .locals 5
    .param p0, "meta"    # Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 774
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 778
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 779
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "authed"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 780
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 781
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AccessAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAppMetaAuthed,exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    return v0

    .line 775
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v0
.end method

.method private static isAppMetaInstalled(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)Z
    .locals 5
    .param p0, "meta"    # Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 761
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 765
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 766
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "installed"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 767
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 768
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AccessAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAppMetaInstalled,exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    return v0

    .line 762
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic lambda$3OjIIZtXjfNXWafo-HV44swwAPg(Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->updateXpAppInfoListIfNeeded()V

    return-void
.end method

.method public static synthetic lambda$fetchIconAsync$0(Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "appInfo"    # Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .line 315
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    .line 316
    .local v0, "accessApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIconUrlChanged:Z

    .line 318
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->isOperationDayIconValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    new-instance v2, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {p2, v3, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->setStoreIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 321
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->onAppChanged(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    .line 322
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->iconChangedNotified()V

    .line 323
    return-void
.end method

.method public static synthetic lambda$fetchIconAsync$1(Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "appInfo"    # Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .line 327
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    .line 328
    .local v0, "accessApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIconUrlChanged:Z

    .line 329
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->isOperationDockIconValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 330
    new-instance v2, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {p2, v3, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->setDockerIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 332
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->onAppChanged(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    .line 333
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->iconChangedNotified()V

    .line 334
    return-void
.end method

.method static synthetic lambda$loadAppsFromAppMeta$3(Ljava/util/List;)V
    .locals 4
    .param p0, "authedApps"    # Ljava/util/List;

    .line 809
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method static synthetic lambda$setAppAuth$2(Ljava/util/List;)V
    .locals 4
    .param p0, "authedApps"    # Ljava/util/List;

    .line 499
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method private loadAppsFromAppMeta()V
    .locals 7

    .line 787
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->queryByCategory(I)Ljava/util/List;

    move-result-object v0

    .line 788
    .local v0, "appMetaList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;>;"
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 791
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 792
    .local v1, "authedApps":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 793
    .local v3, "meta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    new-instance v4, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    invoke-direct {v4}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;-><init>()V

    .line 794
    .local v4, "accessApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->appMetaToAppInfo(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V

    .line 795
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->isAppMetaAuthed(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 796
    iput-boolean v6, v4, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsAuthed:Z

    .line 797
    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->toParcelableAppInfo()Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    :cond_1
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->isAppMetaInstalled(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 800
    iput-boolean v6, v4, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsInstalled:Z

    .line 802
    :cond_2
    sget-object v5, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    if-nez v5, :cond_3

    .line 803
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v5, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    .line 805
    :cond_3
    sget-object v5, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    .end local v3    # "meta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    .end local v4    # "accessApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    goto :goto_0

    .line 807
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 808
    new-instance v2, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$AccessAppManager$9CTvxvlrL6NPL_2idPGGY2F4sq8;

    invoke-direct {v2, v1}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$AccessAppManager$9CTvxvlrL6NPL_2idPGGY2F4sq8;-><init>(Ljava/util/List;)V

    const-wide/16 v3, 0x3e8

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    .line 812
    :cond_5
    const-string v2, "AccessAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAppsFromAppMeta,appCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",authedCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 812
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    return-void

    .line 789
    .end local v1    # "authedApps":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    :cond_6
    :goto_1
    return-void
.end method

.method private loadConfigFile()V
    .locals 18

    .line 849
    move-object/from16 v1, p0

    const-string v0, "access/accessConfig.json"

    invoke-static {v0}, Lcom/xiaopeng/util/xpSysConfigUtil;->getConfigContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 850
    .local v2, "configStr":Ljava/lang/String;
    const-string v0, "AccessAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read config file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 853
    .local v0, "json":Lorg/json/JSONObject;
    const-string v3, "authList"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 854
    .local v3, "authJson":Lorg/json/JSONObject;
    const-string v4, "appSupportScreenIds"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 855
    .local v4, "appSupportScreenIdsJson":Lorg/json/JSONObject;
    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 856
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 857
    .local v6, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 858
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 859
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 860
    .local v8, "authed":I
    const-string v9, "AccessAppManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "find authed app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    iget-object v9, v1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAppPreAuthMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "authed":I
    goto :goto_0

    .line 863
    :cond_0
    const-string v7, "AccessAppManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadConfigFile,authList="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAppPreAuthMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 864
    .end local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    goto :goto_1

    .line 893
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v3    # "authJson":Lorg/json/JSONObject;
    .end local v4    # "appSupportScreenIdsJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    move-object/from16 v17, v2

    goto/16 :goto_5

    .line 865
    .restart local v0    # "json":Lorg/json/JSONObject;
    .restart local v3    # "authJson":Lorg/json/JSONObject;
    .restart local v4    # "appSupportScreenIdsJson":Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    const-string v6, "AccessAppManager"

    const-string v7, "loadConfigFile,authList is null"

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :goto_1
    if-eqz v4, :cond_4

    .line 868
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 869
    .local v6, "keys_s":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 870
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 871
    .local v7, "key_s":Ljava/lang/String;
    const-string v8, "regionLimit"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    .line 872
    .local v8, "hasRegionLimit":Z
    const-string v9, "AccessAppManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadConfigFile hasRegionLimit="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    if-eqz v8, :cond_2

    .line 874
    const-string v9, "regionLimit"

    invoke-virtual {v4, v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 875
    .local v9, "regionLimit":I
    const-string v10, "persist.sys.xiaopeng.locVersion"

    invoke-static {v10, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 876
    .local v10, "localVersion":I
    const-string v11, "AccessAppManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadConfigFile regionLimit="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",localVersion="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    if-ne v9, v10, :cond_2

    .line 878
    const-string v11, "data"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 879
    .local v11, "dataJson":Lorg/json/JSONObject;
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v12

    .line 880
    .local v12, "keys_p":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 881
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 882
    .local v13, "key_p":Ljava/lang/String;
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    invoke-static {v14}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->parseSupportScreenIds(Lorg/json/JSONArray;)[I

    move-result-object v14

    .line 883
    .local v14, "screenIds":[I
    iget-object v15, v1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAppSupportScreenIdMap:Ljava/util/Map;

    invoke-interface {v15, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    const-string v15, "AccessAppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "loadConfigFile find appSupportScreenIds app:"

    .end local v0    # "json":Lorg/json/JSONObject;
    .local v16, "json":Lorg/json/JSONObject;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v17, v2

    const/4 v0, 0x0

    :try_start_3
    aget v2, v14, v0

    .end local v2    # "configStr":Ljava/lang/String;
    .local v17, "configStr":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    .end local v13    # "key_p":Ljava/lang/String;
    .end local v14    # "screenIds":[I
    nop

    .line 879
    move v5, v0

    move-object/from16 v0, v16

    move-object/from16 v2, v17

    goto :goto_3

    .line 888
    .end local v7    # "key_s":Ljava/lang/String;
    .end local v8    # "hasRegionLimit":Z
    .end local v9    # "regionLimit":I
    .end local v10    # "localVersion":I
    .end local v11    # "dataJson":Lorg/json/JSONObject;
    .end local v12    # "keys_p":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v16    # "json":Lorg/json/JSONObject;
    .end local v17    # "configStr":Ljava/lang/String;
    .restart local v0    # "json":Lorg/json/JSONObject;
    .restart local v2    # "configStr":Ljava/lang/String;
    :cond_2
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move v0, v5

    .line 868
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v2    # "configStr":Ljava/lang/String;
    .restart local v16    # "json":Lorg/json/JSONObject;
    .restart local v17    # "configStr":Ljava/lang/String;
    move v5, v0

    move-object/from16 v0, v16

    move-object/from16 v2, v17

    goto/16 :goto_2

    .line 889
    .end local v16    # "json":Lorg/json/JSONObject;
    .end local v17    # "configStr":Ljava/lang/String;
    .restart local v0    # "json":Lorg/json/JSONObject;
    .restart local v2    # "configStr":Ljava/lang/String;
    :cond_3
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v2    # "configStr":Ljava/lang/String;
    .restart local v16    # "json":Lorg/json/JSONObject;
    .restart local v17    # "configStr":Ljava/lang/String;
    const-string v0, "AccessAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadConfigFile,appSupportScreenIds="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAppSupportScreenIdMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    .end local v6    # "keys_s":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    goto :goto_4

    .line 891
    .end local v16    # "json":Lorg/json/JSONObject;
    .end local v17    # "configStr":Ljava/lang/String;
    .restart local v0    # "json":Lorg/json/JSONObject;
    .restart local v2    # "configStr":Ljava/lang/String;
    :cond_4
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v2    # "configStr":Ljava/lang/String;
    .restart local v16    # "json":Lorg/json/JSONObject;
    .restart local v17    # "configStr":Ljava/lang/String;
    const-string v0, "AccessAppManager"

    const-string v2, "loadConfigFile,appSupportScreenIds is null"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 895
    .end local v3    # "authJson":Lorg/json/JSONObject;
    .end local v4    # "appSupportScreenIdsJson":Lorg/json/JSONObject;
    .end local v16    # "json":Lorg/json/JSONObject;
    :goto_4
    goto :goto_6

    .line 893
    :catch_1
    move-exception v0

    goto :goto_5

    .end local v17    # "configStr":Ljava/lang/String;
    .restart local v2    # "configStr":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v17, v2

    .line 894
    .end local v2    # "configStr":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "configStr":Ljava/lang/String;
    :goto_5
    const-string v2, "AccessAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadConfigFile,exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

.method private merge(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 341
    .local p1, "src":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;>;"
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 342
    const/4 v1, 0x0

    .line 343
    .local v1, "srcApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    .line 344
    .local v2, "targetApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    .line 345
    .local v4, "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 346
    move-object v1, v4

    .line 347
    goto :goto_2

    .line 349
    .end local v4    # "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    :cond_0
    goto :goto_1

    .line 350
    :cond_1
    :goto_2
    if-nez v1, :cond_2

    .end local v1    # "srcApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    .end local v2    # "targetApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    goto :goto_3

    .line 355
    .restart local v1    # "srcApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    .restart local v2    # "targetApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    :cond_2
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIconUrl:Ljava/lang/String;

    iget-object v4, v1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIconUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iput-boolean v3, v2, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIconUrlChanged:Z

    .line 356
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIconUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIconUrl:Ljava/lang/String;

    .line 341
    .end local v1    # "srcApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    .end local v2    # "targetApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 361
    .end local v0    # "i":I
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    .line 362
    .local v1, "accessApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    const/4 v2, 0x0

    .line 363
    .local v2, "found":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    .line 364
    .local v4, "targetApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 365
    const/4 v2, 0x1

    .line 366
    goto :goto_6

    .line 368
    .end local v4    # "targetApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    :cond_4
    goto :goto_5

    .line 369
    :cond_5
    :goto_6
    if-nez v2, :cond_6

    .line 370
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    .end local v1    # "accessApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    .end local v2    # "found":Z
    :cond_6
    goto :goto_4

    .line 373
    :cond_7
    return-void
.end method

.method private onAppChanged(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V
    .locals 6
    .param p1, "app"    # Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 376
    const-string v0, "AccessAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppChanged app.getAppId()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",app.mScreenShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mScreenShow:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    instance-of v0, p1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    .line 378
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    new-array v3, v3, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-object v5, p1

    check-cast v5, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->toParcelableAppInfo()Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-interface {v0, v4, v3, v1}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    new-array v3, v3, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    aput-object p1, v3, v2

    invoke-interface {v0, v4, v3, v1}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 383
    :goto_0
    return-void
.end method

.method private onAppChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 386
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    const-string v0, "AccessAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method private static parseSupportScreenIds(Lorg/json/JSONArray;)[I
    .locals 7
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .line 899
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 900
    .local v0, "length":I
    new-array v1, v0, [I

    .line 901
    .local v1, "screenIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 903
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    .line 904
    .local v3, "value":I
    aput v3, v1, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    .end local v3    # "value":I
    goto :goto_1

    .line 905
    :catch_0
    move-exception v3

    .line 906
    .local v3, "e":Lorg/json/JSONException;
    const-string v4, "AccessAppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseSupportScreenIds,exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 909
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private toAppInfo(Lcom/xiaopeng/app/xpAppInfo;)Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    .locals 5
    .param p1, "xpApp"    # Lcom/xiaopeng/app/xpAppInfo;

    .line 221
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    iget-object v1, p1, Lcom/xiaopeng/app/xpAppInfo;->mXpAppId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaopeng/app/xpAppInfo;->pkgName:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaopeng/app/xpAppInfo;->mXpAppTitle:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .local v0, "accessApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    iget v1, p1, Lcom/xiaopeng/app/xpAppInfo;->supportScreenId:I

    if-nez v1, :cond_0

    .line 231
    const/4 v1, -0x1

    iput v1, p1, Lcom/xiaopeng/app/xpAppInfo;->supportScreenId:I

    .line 234
    :cond_0
    iget v1, p1, Lcom/xiaopeng/app/xpAppInfo;->supportScreenId:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->updateScreenShow(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;I)V

    .line 236
    iget-object v1, p1, Lcom/xiaopeng/app/xpAppInfo;->resId:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIconUrl:Ljava/lang/String;

    .line 237
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsInstalled:Z

    .line 238
    iput-boolean v1, v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsAuthed:Z

    .line 240
    return-object v0
.end method

.method private updateMetaExtra(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 5
    .param p1, "oldStr"    # Ljava/lang/String;
    .param p2, "installed"    # Z
    .param p3, "authed"    # Z

    .line 744
    const/4 v0, 0x0

    .line 746
    .local v0, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 747
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 754
    :catch_0
    move-exception v1

    goto :goto_1

    .line 749
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 751
    :goto_0
    const-string v1, "installed"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 752
    const-string v1, "authed"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 753
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 754
    :goto_1
    nop

    .line 755
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AccessAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMetaExtra,exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    return-object p1
.end method

.method private updateXpAppInfoListIfNeeded()V
    .locals 17

    .line 245
    move-object/from16 v0, p0

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mUpdateXpAppInfoTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 247
    .local v1, "now":J
    iget-wide v3, v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mLastUpdateAppInfoTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v5, v3

    if-eqz v3, :cond_0

    iget-wide v3, v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mLastUpdateAppInfoTime:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0x36ee80

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 248
    const-string v3, "AccessAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Should update after "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mLastUpdateAppInfoTime:J

    sub-long v7, v1, v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void

    .line 251
    :cond_0
    const-string v3, "AccessAppManager"

    const-string v4, "do update xp app info"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v3, 0x0

    .line 253
    .local v3, "ret":I
    new-instance v4, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v4}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 254
    .local v4, "dataOut":Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    const-string v6, "AccessManager"

    const-string v7, "getAppList"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v3

    .line 256
    const/4 v5, 0x0

    .line 257
    .local v5, "retry":Z
    if-nez v3, :cond_c

    .line 258
    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v6

    .line 259
    .local v6, "data":[Landroid/os/Parcelable;
    if-eqz v6, :cond_a

    array-length v7, v6

    if-nez v7, :cond_1

    goto/16 :goto_8

    .line 263
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v6

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    .local v7, "xpAppInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v6

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 265
    .local v8, "accessAppInfos":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;>;"
    array-length v9, v6

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_2

    aget-object v12, v6, v11

    .line 266
    .local v12, "p":Landroid/os/Parcelable;
    move-object v13, v12

    check-cast v13, Lcom/xiaopeng/app/xpAppInfo;

    .line 267
    .local v13, "xpApp":Lcom/xiaopeng/app/xpAppInfo;
    invoke-direct {v0, v13}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->toAppInfo(Lcom/xiaopeng/app/xpAppInfo;)Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    .end local v12    # "p":Landroid/os/Parcelable;
    .end local v13    # "xpApp":Lcom/xiaopeng/app/xpAppInfo;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 270
    :cond_2
    iput-object v7, v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mXpAppList:Ljava/util/List;

    .line 271
    sget-object v9, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    if-eqz v9, :cond_4

    sget-object v9, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    .line 275
    :cond_3
    sget-object v9, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-direct {v0, v8, v9}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->merge(Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 272
    :cond_4
    :goto_1
    sput-object v8, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    .line 277
    :goto_2
    iput-wide v1, v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mLastUpdateAppInfoTime:J

    .line 278
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v9

    const/4 v11, 0x4

    invoke-virtual {v9, v11}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->queryByCategory(I)Ljava/util/List;

    move-result-object v9

    .line 279
    .local v9, "appMetas":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;>;"
    sget-object v11, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    .line 280
    .local v12, "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 281
    .local v14, "appMeta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    iget-object v15, v14, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->appId:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 282
    invoke-static {v14}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->isAppMetaInstalled(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)Z

    move-result v10

    const/4 v13, 0x1

    if-eqz v10, :cond_5

    .line 283
    iput-boolean v13, v12, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsInstalled:Z

    .line 287
    const/4 v10, 0x0

    goto :goto_5

    .line 285
    :cond_5
    const/4 v10, 0x0

    iput-boolean v10, v12, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsInstalled:Z

    .line 287
    :goto_5
    invoke-static {v14}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->isAppMetaAuthed(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 288
    iput-boolean v13, v12, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsAuthed:Z

    goto :goto_6

    .line 290
    :cond_6
    iput-boolean v10, v12, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsAuthed:Z

    .line 292
    :goto_6
    iget-boolean v13, v14, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->isFirstLaunch:Z

    invoke-virtual {v12, v13}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->setIsFirstLaunch(Z)V

    .line 293
    goto :goto_7

    .line 295
    .end local v14    # "appMeta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .line 296
    :cond_8
    const/4 v10, 0x0

    :goto_7
    invoke-virtual {v0, v12}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->updateAppInfoFromOperation(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    .line 297
    iget-boolean v13, v12, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsInstalled:Z

    if-eqz v13, :cond_9

    .line 298
    invoke-direct {v0, v12}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->fetchIconAsync(Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;)V

    .line 300
    .end local v12    # "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    :cond_9
    goto :goto_3

    .line 260
    .end local v7    # "xpAppInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    .end local v8    # "accessAppInfos":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;>;"
    .end local v9    # "appMetas":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;>;"
    :cond_a
    :goto_8
    const-string v7, "AccessAppManager"

    const-string v8, "updateXpAppInfoListIfNeeded,no valid data"

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/4 v5, 0x1

    .line 302
    .end local v6    # "data":[Landroid/os/Parcelable;
    :cond_b
    goto :goto_9

    .line 303
    :cond_c
    const-string v6, "AccessAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateXpAppInfoListIfNeeded,  ret="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v5, 0x1

    .line 306
    :goto_9
    if-eqz v5, :cond_d

    .line 307
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v6

    iget-object v7, v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mUpdateXpAppInfoTask:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 308
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v6

    iget-object v7, v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mUpdateXpAppInfoTask:Ljava/lang/Runnable;

    const-wide/16 v8, 0x7530

    invoke-virtual {v6, v7, v8, v9}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 310
    :cond_d
    return-void
.end method


# virtual methods
.method public dumpAllApps(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 119
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 123
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    .line 124
    .local v1, "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 125
    .end local v1    # "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    goto :goto_0

    .line 126
    :cond_1
    return-void

    .line 120
    :cond_2
    :goto_1
    const-string v0, "No app"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public getAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    .line 696
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 700
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    .line 701
    .local v2, "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 702
    const-string v0, "AccessAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppInfo, app.getAppId()="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",app.mScreenShow="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mScreenShow:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->toParcelableAppInfo()Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v0

    return-object v0

    .line 705
    .end local v2    # "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    :cond_1
    goto :goto_0

    .line 706
    :cond_2
    return-object v1

    .line 697
    :cond_3
    :goto_1
    const-string v0, "AccessAppManager"

    const-string v2, "getAppInfo, no app mAccessAppList is empty"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    return-object v1
.end method

.method public getAppInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 108
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .local v0, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    .line 110
    .local v2, "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    iget-boolean v3, v2, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsInstalled:Z

    if-eqz v3, :cond_1

    .line 111
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->toParcelableAppInfo()Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v2    # "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    :cond_1
    goto :goto_0

    .line 114
    :cond_2
    return-object v0

    .line 104
    .end local v0    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    :cond_3
    :goto_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mUpdateXpAppInfoTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mUpdateXpAppInfoTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfoList(I)Ljava/util/List;
    .locals 6
    .param p1, "screenId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 392
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->updateXpAppInfoListIfNeeded()V

    .line 393
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 396
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v0, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    .line 398
    .local v2, "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    iget-boolean v3, v2, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsInstalled:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getScreenShow(I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 399
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->toParcelableAppInfo()Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 401
    :cond_1
    const-string v3, "AccessAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppInfoList,no add app.getAppId()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    .end local v2    # "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    :goto_1
    goto :goto_0

    .line 404
    :cond_2
    const-string v1, "AccessAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppInfoList, appInfoList.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",screenId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-object v0

    .line 394
    .end local v0    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    :cond_3
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundRunningWebApp()Lcom/xiaopeng/app/xpAppInfo;
    .locals 7

    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, "info":Lcom/xiaopeng/app/xpAppInfo;
    const/4 v1, 0x0

    .line 561
    .local v1, "ret":I
    new-instance v2, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 562
    .local v2, "dataOut":Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    const-string v4, "AccessManager"

    const-string v5, "getForegroundWebApp"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v1

    .line 564
    if-nez v1, :cond_2

    .line 565
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v3

    .line 566
    .local v3, "data":[Landroid/os/Parcelable;
    if-eqz v3, :cond_1

    array-length v4, v3

    if-nez v4, :cond_0

    goto :goto_0

    .line 569
    :cond_0
    const/4 v4, 0x0

    aget-object v4, v3, v4

    move-object v0, v4

    check-cast v0, Lcom/xiaopeng/app/xpAppInfo;

    .end local v3    # "data":[Landroid/os/Parcelable;
    goto :goto_1

    .line 567
    .restart local v3    # "data":[Landroid/os/Parcelable;
    :cond_1
    :goto_0
    const-string v4, "AccessAppManager"

    const-string v5, "getForegroundRunningWebApp,no data"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    .end local v3    # "data":[Landroid/os/Parcelable;
    :goto_1
    goto :goto_2

    .line 572
    :cond_2
    const-string v3, "AccessAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getForegroundRunningWebApp,ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :goto_2
    return-object v0
.end method

.method public getManagerName()Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, "AccessAppManager"

    return-object v0
.end method

.method public getRunningApp()Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 6

    .line 542
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->getStartingApp()Lcom/xiaopeng/app/xpAppInfo;

    move-result-object v0

    .line 543
    .local v0, "info":Lcom/xiaopeng/app/xpAppInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 546
    :cond_0
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    .line 547
    .local v3, "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/xiaopeng/app/xpAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 548
    return-object v3

    .line 550
    .end local v3    # "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    :cond_1
    goto :goto_0

    .line 551
    :cond_2
    return-object v1

    .line 544
    :cond_3
    :goto_1
    return-object v1
.end method

.method public getStartingApp()Lcom/xiaopeng/app/xpAppInfo;
    .locals 7

    .line 579
    const/4 v0, 0x0

    .line 580
    .local v0, "info":Lcom/xiaopeng/app/xpAppInfo;
    const/4 v1, 0x0

    .line 581
    .local v1, "ret":I
    new-instance v2, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 582
    .local v2, "dataOut":Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    const-string v4, "AccessManager"

    const-string v5, "getStartingApp"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v1

    .line 584
    if-nez v1, :cond_2

    .line 585
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v3

    .line 586
    .local v3, "data":[Landroid/os/Parcelable;
    if-eqz v3, :cond_1

    array-length v4, v3

    if-nez v4, :cond_0

    goto :goto_0

    .line 589
    :cond_0
    const/4 v4, 0x0

    aget-object v4, v3, v4

    move-object v0, v4

    check-cast v0, Lcom/xiaopeng/app/xpAppInfo;

    .end local v3    # "data":[Landroid/os/Parcelable;
    goto :goto_1

    .line 587
    .restart local v3    # "data":[Landroid/os/Parcelable;
    :cond_1
    :goto_0
    const-string v4, "AccessAppManager"

    const-string v5, "getStartingApp,no data"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    .end local v3    # "data":[Landroid/os/Parcelable;
    :goto_1
    goto :goto_2

    .line 592
    :cond_2
    const-string v3, "AccessAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStartingApp,ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :goto_2
    return-object v0
.end method

.method public getSupportScreenIds(Ljava/lang/String;)[I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAppSupportScreenIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 520
    move-object v0, p1

    .line 521
    .local v0, "shortPkg":Ljava/lang/String;
    const-string v1, "com.xiaopeng.accessin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 522
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->getStartingApp()Lcom/xiaopeng/app/xpAppInfo;

    move-result-object v1

    .line 523
    .local v1, "runningWebApp":Lcom/xiaopeng/app/xpAppInfo;
    if-eqz v1, :cond_0

    .line 524
    iget-object v0, v1, Lcom/xiaopeng/app/xpAppInfo;->pkgName:Ljava/lang/String;

    goto :goto_0

    .line 527
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 530
    .end local v1    # "runningWebApp":Lcom/xiaopeng/app/xpAppInfo;
    :cond_1
    :goto_0
    invoke-super {p0, v0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v1

    .line 531
    .local v1, "packageInfo":Lcom/xiaopeng/app/xpPackageInfo;
    if-nez v1, :cond_2

    .line 532
    const-string v2, "access.default"

    invoke-super {p0, v2}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v1

    .line 534
    :cond_2
    if-eqz v1, :cond_3

    .line 535
    iput-object p1, v1, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    .line 537
    :cond_3
    return-object v1
.end method

.method public goAppHome(Ljava/lang/String;)I
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 689
    const-string v0, "AccessAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goHome "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    const-string v1, "AccessManager"

    const-string v2, "goToWebAppHome"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 4

    .line 94
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->loadAppsFromAppMeta()V

    .line 95
    const-string/jumbo v0, "xuiAccess"

    .line 96
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClientManager;->createBusClient(Ljava/lang/String;Landroid/content/Context;)Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    const-string v1, "access"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->addLogTagSuffix(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mUpdateXpAppInfoTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    return-void
.end method

.method public installApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 10
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 130
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    const/16 v1, -0x3ea

    if-eqz v0, :cond_a

    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 134
    :cond_0
    const/4 v0, 0x0

    .line 135
    .local v0, "installingApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    .line 136
    .local v3, "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 140
    .end local v3    # "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    :cond_1
    goto :goto_0

    .line 137
    .restart local v3    # "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    :cond_2
    :goto_1
    move-object v0, v3

    .line 138
    nop

    .line 141
    .end local v3    # "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    :cond_3
    if-nez v0, :cond_4

    .line 142
    const-string v2, "AccessAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installApp, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return v1

    .line 145
    :cond_4
    iget-boolean v1, v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsInstalled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 146
    const-string v1, "AccessAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installApp, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " already installed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return v2

    .line 149
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsInstalled:Z

    .line 150
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->setIsFirstLaunch(Z)V

    .line 151
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAppSupportScreenIdMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 152
    move v3, v2

    .local v3, "i":I
    :goto_2
    const/4 v4, 0x4

    if-gt v3, v4, :cond_6

    .line 153
    invoke-virtual {v0, v3, v2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->setScreenShow(II)V

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 155
    .end local v3    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAppSupportScreenIdMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    array-length v4, v3

    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_7

    aget v6, v3, v5

    .line 156
    .local v6, "screenId":I
    const-string v7, "AccessAppManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "installApp, screenId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",installingApp.getPkgName()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0, v6, v1}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->setScreenShow(II)V

    .line 155
    .end local v6    # "screenId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 160
    :cond_7
    const-string v3, "AccessAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installApp, installingApp.getPkgName()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mAppSupportScreenIdMap.get(installingApp.getPkgName())="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAppSupportScreenIdMap:Ljava/util/Map;

    .line 161
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->queryById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    move-result-object v3

    .line 165
    .local v3, "meta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    if-nez v3, :cond_8

    .line 166
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->toAppMeta(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    move-result-object v3

    .line 167
    iget-object v4, v3, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    invoke-direct {p0, v4, v1, v1}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->updateMetaExtra(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    .line 168
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->insert(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    goto :goto_4

    .line 170
    :cond_8
    iget-object v4, v3, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    invoke-direct {p0, v4, v1, v1}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->updateMetaExtra(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    .line 171
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->update(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    .line 175
    :goto_4
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->fetchIconAsync(Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;)V

    .line 177
    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    if-eqz v4, :cond_9

    .line 178
    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v5, 0x2

    new-array v1, v1, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->toParcelableAppInfo()Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v6}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 181
    :cond_9
    return v2

    .line 131
    .end local v0    # "installingApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    .end local v3    # "meta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    :cond_a
    :goto_5
    const-string v0, "AccessAppManager"

    const-string v2, "installApp, access app list is empty"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return v1
.end method

.method public isAccessApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 409
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 412
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    .line 413
    .local v2, "info":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 414
    const/4 v0, 0x1

    return v0

    .line 416
    .end local v2    # "info":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    :cond_1
    goto :goto_0

    .line 417
    :cond_2
    return v1

    .line 410
    :cond_3
    :goto_1
    return v1
.end method

.method public isAppAuthed(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 441
    const-string v0, "persist.xiaopeng.accessin.legal_note_accepted"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "authedVal":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    const/4 v1, 0x1

    return v1

    .line 446
    :cond_0
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 449
    :cond_1
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    .line 450
    .local v3, "info":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 451
    iget-boolean v1, v3, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsAuthed:Z

    return v1

    .line 453
    .end local v3    # "info":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    :cond_2
    goto :goto_0

    .line 455
    :cond_3
    return v2

    .line 447
    :cond_4
    :goto_1
    return v2
.end method

.method public isAppAuthedWithPreset(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAppPreAuthMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    const/4 v0, -0x1

    return v0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAppPreAuthMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 426
    .local v0, "ret":I
    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 428
    return v1

    .line 432
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->isAppAuthed(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public onAppOperationChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "groupType"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 711
    const-string v0, "AccessAppManager"

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

    .line 712
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 713
    return-void

    .line 716
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .local v0, "changedApps":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 727
    :cond_1
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    .line 728
    .local v2, "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 729
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->updateAppInfoFromOperation(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    .line 730
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->isIconChanged()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 731
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->toParcelableAppInfo()Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->iconChangedNotified()V

    goto :goto_3

    .line 736
    .end local v2    # "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    :cond_2
    goto :goto_0

    .line 718
    :cond_3
    :goto_1
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    .line 719
    .restart local v2    # "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->updateAppInfoFromOperation(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    .line 720
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->isIconChanged()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 721
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->toParcelableAppInfo()Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->iconChangedNotified()V

    .line 724
    .end local v2    # "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    :cond_4
    goto :goto_2

    .line 738
    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 739
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->onAppChanged(Ljava/util/List;)V

    .line 741
    :cond_6
    return-void
.end method

.method public resetAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 610
    const/16 v0, -0x3e9

    return v0
.end method

.method public setAppAuth([Ljava/lang/String;I)I
    .locals 10
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "auth"    # I

    .line 459
    if-eqz p1, :cond_b

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 463
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v0, "authedApps":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_9

    aget-object v4, p1, v3

    .line 466
    .local v4, "pkgName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 467
    .local v5, "targetApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    .line 468
    .local v7, "info":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 469
    move-object v5, v7

    .line 470
    goto :goto_2

    .line 472
    .end local v7    # "info":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    :cond_1
    goto :goto_1

    .line 473
    :cond_2
    :goto_2
    if-nez v5, :cond_3

    .line 474
    const-string v6, "AccessAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAppAuth: not found app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    goto/16 :goto_6

    .line 477
    :cond_3
    iget-boolean v6, v5, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsAuthed:Z

    const/4 v7, 0x1

    if-nez v6, :cond_4

    if-ne v7, p2, :cond_4

    .line 478
    iput-boolean v7, v5, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsAuthed:Z

    .line 479
    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->toParcelableAppInfo()Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_4
    if-ne p2, v7, :cond_5

    move v6, v7

    goto :goto_3

    :cond_5
    move v6, v2

    :goto_3
    iput-boolean v6, v5, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsAuthed:Z

    .line 484
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v6

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->queryById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    move-result-object v6

    .line 485
    .local v6, "meta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    if-nez v6, :cond_7

    .line 486
    invoke-static {v5}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->toAppMeta(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    move-result-object v6

    .line 487
    iget-object v8, v6, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    if-ne v7, p2, :cond_6

    goto :goto_4

    :cond_6
    move v7, v2

    :goto_4
    invoke-direct {p0, v8, v2, v7}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->updateMetaExtra(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    .line 488
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->insert(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    goto :goto_6

    .line 491
    :cond_7
    iget-object v8, v6, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->isAppMetaInstalled(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)Z

    move-result v9

    if-ne v7, p2, :cond_8

    goto :goto_5

    :cond_8
    move v7, v2

    :goto_5
    invoke-direct {p0, v8, v9, v7}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->updateMetaExtra(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    .line 492
    const-string v7, "AccessAppManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setAppAuth: update meta "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->update(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    .line 464
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "targetApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    .end local v6    # "meta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 497
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 498
    new-instance v1, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$AccessAppManager$1qxTP0YfqtvLgF7xGN7eQApUA0Q;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$AccessAppManager$1qxTP0YfqtvLgF7xGN7eQApUA0Q;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 503
    :cond_a
    return v2

    .line 460
    .end local v0    # "authedApps":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    :cond_b
    :goto_7
    const/16 v0, -0x3039

    return v0
.end method

.method public startApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Landroid/os/Bundle;)I
    .locals 12
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p2, "extra"    # Landroid/os/Bundle;

    .line 615
    const-string v0, "AccessAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const/4 v0, 0x0

    .line 617
    .local v0, "targetApp":Lcom/xiaopeng/app/xpAppInfo;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mXpAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/app/xpAppInfo;

    .line 618
    .local v2, "app":Lcom/xiaopeng/app/xpAppInfo;
    iget-object v3, v2, Lcom/xiaopeng/app/xpAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 619
    move-object v0, v2

    .line 620
    goto :goto_1

    .line 622
    .end local v2    # "app":Lcom/xiaopeng/app/xpAppInfo;
    :cond_0
    goto :goto_0

    .line 623
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 624
    const/16 v1, -0x3ea

    return v1

    .line 626
    :cond_2
    const/4 v1, 0x0

    .line 627
    .local v1, "ret":I
    new-instance v2, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 628
    .local v2, "dataIn":Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;
    const/4 v3, 0x1

    new-array v4, v3, [Lcom/xiaopeng/app/xpAppInfo;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v4}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 630
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 631
    .local v4, "obj":Lorg/json/JSONObject;
    move v6, v5

    .line 633
    .local v6, "transfer":Z
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->getCallScreenId()I

    move-result v7

    .line 634
    .local v7, "screenId":I
    invoke-static {p2, v7}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->getScreenIdFromBundle(Landroid/os/Bundle;I)I

    move-result v8

    move v7, v8

    .line 635
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v8

    const-string v9, "com.xiaopeng.accessin"

    invoke-virtual {v8, v9}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getPackageTopActivityScreenId(Ljava/lang/String;)I

    move-result v8

    .line 636
    .local v8, "topScreenId":I
    const/4 v9, -0x1

    if-eq v9, v8, :cond_3

    .line 637
    if-eq v8, v7, :cond_3

    .line 638
    const/4 v6, 0x1

    .line 639
    const-string v9, "AccessAppManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startApp,screenId not match, topScreenId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",screenId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",transfer="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :cond_3
    const-string v9, "AccessAppManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startApp,set screenId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v9, "screenId"

    invoke-virtual {v4, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 645
    const-string v9, "AccessAppManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startApp,put screenId screenId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    .end local v7    # "screenId":I
    .end local v8    # "topScreenId":I
    goto :goto_2

    .line 646
    :catch_0
    move-exception v7

    .line 647
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "AccessAppManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startApp e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    .line 651
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    const-string v7, "AccessManager"

    const-string v8, "startApp"

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v2, v9}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v1

    .line 654
    if-eqz v6, :cond_4

    .line 655
    const-string v3, "AccessAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startApp,transfer,last="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mLastLaunchPkg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",target="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/xiaopeng/app/xpAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mLastLaunchPkg:Ljava/lang/String;

    iget-object v7, v0, Lcom/xiaopeng/app/xpAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 658
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    const-string v7, "AccessManager"

    const-string v8, "startApp"

    invoke-virtual {v3, v7, v8, v2, v9}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v1

    .line 663
    :cond_4
    iget-object v3, v0, Lcom/xiaopeng/app/xpAppInfo;->pkgName:Ljava/lang/String;

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mLastLaunchPkg:Ljava/lang/String;

    .line 665
    const-string v3, "AccessAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start app ret="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    sget-object v3, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    .line 668
    .local v7, "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 669
    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->isFirstLaunch()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 670
    invoke-virtual {v7, v5}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->setIsFirstLaunch(Z)V

    .line 671
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v3

    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->queryById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    move-result-object v3

    .line 672
    .local v3, "meta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    if-eqz v3, :cond_5

    .line 673
    iput-boolean v5, v3, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->isFirstLaunch:Z

    .line 674
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->update(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    goto :goto_4

    .line 676
    :cond_5
    const-string v5, "AccessAppManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startApp,meta not found,appId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    :goto_4
    invoke-direct {p0, v7}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->onAppChanged(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    .line 679
    .end local v3    # "meta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    goto :goto_5

    .line 682
    .end local v7    # "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    :cond_6
    goto :goto_3

    .line 684
    :cond_7
    :goto_5
    return v1
.end method

.method public underMyManagement(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 508
    const-string v0, "com.xiaopeng.accessin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 509
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 510
    :cond_1
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    .line 511
    .local v3, "info":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 512
    return v1

    .line 514
    .end local v3    # "info":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    :cond_2
    goto :goto_0

    .line 515
    :cond_3
    return v2
.end method

.method public uninstallApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 7
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 185
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    const/16 v1, -0x3ea

    if-eqz v0, :cond_8

    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 189
    :cond_0
    const/4 v0, 0x0

    .line 190
    .local v0, "uninstallingApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAccessAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;

    .line 191
    .local v3, "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 195
    .end local v3    # "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    :cond_1
    goto :goto_0

    .line 192
    .restart local v3    # "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    :cond_2
    :goto_1
    move-object v0, v3

    .line 193
    nop

    .line 196
    .end local v3    # "app":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    :cond_3
    if-nez v0, :cond_4

    .line 197
    const-string v2, "AccessAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uninstallApp, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return v1

    .line 200
    :cond_4
    iget-boolean v2, v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsInstalled:Z

    const/4 v3, 0x0

    if-nez v2, :cond_5

    .line 201
    const-string v1, "AccessAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uninstallApp, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " already uninstalled"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return v3

    .line 204
    :cond_5
    iput-boolean v3, v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsInstalled:Z

    .line 206
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->queryById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    move-result-object v2

    .line 207
    .local v2, "meta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    if-nez v2, :cond_6

    .line 208
    const-string v3, "AccessAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uninstallApp, meta of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return v1

    .line 211
    :cond_6
    iget-object v1, v2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->updateMetaExtra(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    .line 212
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->update(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    .line 214
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    if-eqz v1, :cond_7

    .line 215
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v5, 0x4

    new-array v4, v4, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->toParcelableAppInfo()Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v6

    aput-object v6, v4, v3

    const/4 v6, 0x0

    invoke-interface {v1, v5, v4, v6}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 217
    :cond_7
    return v3

    .line 186
    .end local v0    # "uninstallingApp":Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
    .end local v2    # "meta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    :cond_8
    :goto_2
    const-string v0, "AccessAppManager"

    const-string v2, "uninstallApp, access app list is empty"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return v1
.end method

.method public updateAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 605
    const/16 v0, -0x3e9

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

    .line 600
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    const/16 v0, -0x3e9

    return v0
.end method
