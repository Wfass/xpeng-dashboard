.class public Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;
.super Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
.source "PreDownloadedAppManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/utils/CarControlUtils$CarControlListener;


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PreDownloadedAppManager"

.field private static volatile fetched:Z

.field private static final mAppsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mRetryCount:I

.field private static mnewAppsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static moldAppsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLocalEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

.field private mPreDownloadedAppFetcher:Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->fetched:Z

    .line 45
    sput v0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mRetryCount:I

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppsMap:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->moldAppsMap:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mnewAppsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;-><init>()V

    .line 52
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$v5-BJodc5UhkxyAOACN-Z43NnY4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$v5-BJodc5UhkxyAOACN-Z43NnY4;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;)V

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;-><init>(Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$OnFetchListener;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mPreDownloadedAppFetcher:Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;

    .line 54
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager$1;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mLocalEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 41
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p2, "x2"    # Z

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->handleUninstallApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Z)V

    return-void
.end method

.method private getAppMeta(Ljava/lang/String;Ljava/util/List;)Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;",
            ">;)",
            "Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;"
        }
    .end annotation

    .line 142
    .local p2, "appMetas":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 146
    .local v2, "appMeta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    return-object v2

    .line 149
    .end local v2    # "appMeta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    :cond_1
    goto :goto_0

    .line 150
    :cond_2
    return-object v0

    .line 143
    :cond_3
    :goto_1
    return-object v0
.end method

.method private handleInstallApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;I)I
    .locals 3
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p2, "screenId"    # I

    .line 375
    nop

    .line 376
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 375
    const/16 v2, 0x3e8

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;->enqueue(ILjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v0

    const-string v1, "extra_key_show_dialog"

    .line 378
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->putExtra(Ljava/lang/String;Z)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v0

    const-string v1, "extra_key_params_dialog_share_id"

    .line 380
    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->putExtra(Ljava/lang/String;I)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v0

    const-string v1, "extra_key_params_start_download_show_toast"

    .line 381
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->putExtra(Ljava/lang/String;Z)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v0

    const-string v1, "extra_key_params_toast_share_id"

    .line 383
    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->putExtra(Ljava/lang/String;I)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->request()Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;

    move-result-object v0

    .line 385
    .local v0, "enqueueRequest":Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->assemble(Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object v1

    .line 386
    .local v1, "assembleResult":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    invoke-virtual {v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, -0x63

    :goto_0
    return v2
.end method

.method private handlePreLoadApp(ZLjava/util/List;)V
    .locals 12
    .param p1, "selfHandle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;",
            ">;)V"
        }
    .end annotation

    .line 250
    .local p2, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;>;"
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->queryByCategory(I)Ljava/util/List;

    move-result-object v0

    .line 273
    .local v0, "appMetas":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 274
    .local v1, "appsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v2, "tobeSavedMetaList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;

    .line 276
    .local v4, "app":Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;
    iget-object v6, v4, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;->pkgName:Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->getAppMeta(Ljava/lang/String;Ljava/util/List;)Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    move-result-object v6

    .line 277
    .local v6, "appMeta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    if-nez p1, :cond_0

    .line 278
    if-eqz v6, :cond_0

    const/4 v7, 0x5

    iget v8, v6, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->status:I

    if-ne v7, v8, :cond_0

    .line 280
    const-string v5, "PreDownloadedAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePreLoadApp,appMeta="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is uninstalled"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    goto :goto_0

    .line 284
    :cond_0
    const-string v7, "PreDownloadedAppManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handlePreLoadApp,app.supportScreen="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;->supportScreen:Ljava/util/List;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "app="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;->toInnerAppInfo()Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    move-result-object v7

    .line 286
    .local v7, "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    const-string v8, "PreDownloadedAppManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handlePreLoadApp,info="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ",pkgname="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",info.mScreenShow="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mScreenShow:[I

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",cached="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppsMap:Ljava/util/Map;

    iget-object v11, v4, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;->pkgName:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v8, ""

    .line 289
    .local v8, "smallIcon":Ljava/lang/String;
    iget-object v9, v4, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;->appIcons:Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$AppIcons;

    if-eqz v9, :cond_1

    iget-object v9, v4, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;->appIcons:Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$AppIcons;

    iget-object v9, v9, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$AppIcons;->smallIcon:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 290
    iget-object v9, v4, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;->appIcons:Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$AppIcons;

    iget-object v8, v9, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$AppIcons;->smallIcon:Ljava/lang/String;

    .line 292
    :cond_1
    const-string v9, "PreDownloadedAppManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handlePreLoadApp,smallIcon="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v7}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->isOperationDayIconValid()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->isOperationNightIconValid()Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 294
    sget-object v9, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$c_8Mifmo-GVgwB6IUF_kZ5vX_9g;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$c_8Mifmo-GVgwB6IUF_kZ5vX_9g;

    invoke-virtual {p0, v7, v8, v5, v9}, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->fetchAndResizeAppIconAsync(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Ljava/lang/String;ZLcom/xiaopeng/xuiservice/applist/AbsAppListManager$AppIconFetchedCallback;)V

    .line 305
    :cond_3
    const-string v5, ""

    .line 306
    .local v5, "dockIconUrl":Ljava/lang/String;
    iget-object v9, v4, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;->appIcons:Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$AppIcons;

    if-eqz v9, :cond_4

    iget-object v9, v4, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;->appIcons:Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$AppIcons;

    iget-object v9, v9, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$AppIcons;->dockIcon:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 307
    iget-object v9, v4, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;->appIcons:Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$AppIcons;

    iget-object v5, v9, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$AppIcons;->dockIcon:Ljava/lang/String;

    .line 309
    :cond_4
    const-string v9, "PreDownloadedAppManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handlePreLoadApp,dockIconUrl="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v7}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    if-nez p1, :cond_6

    .line 312
    invoke-static {v7}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->toAppMeta(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    move-result-object v9

    .line 313
    .local v9, "tobeSaved":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    .line 314
    if-eqz v6, :cond_5

    iget-object v10, v6, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    iget-object v11, v9, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .end local v4    # "app":Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;
    .end local v5    # "dockIconUrl":Ljava/lang/String;
    .end local v6    # "appMeta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    .end local v7    # "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .end local v8    # "smallIcon":Ljava/lang/String;
    .end local v9    # "tobeSaved":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    goto :goto_1

    .line 318
    .restart local v4    # "app":Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;
    .restart local v5    # "dockIconUrl":Ljava/lang/String;
    .restart local v6    # "appMeta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    .restart local v7    # "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .restart local v8    # "smallIcon":Ljava/lang/String;
    .restart local v9    # "tobeSaved":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    :cond_5
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    .end local v4    # "app":Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;
    .end local v5    # "dockIconUrl":Ljava/lang/String;
    .end local v6    # "appMeta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    .end local v7    # "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .end local v8    # "smallIcon":Ljava/lang/String;
    .end local v9    # "tobeSaved":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    :cond_6
    :goto_1
    goto/16 :goto_0

    .line 328
    :cond_7
    const-string v3, "PreDownloadedAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlePreLoadApp, client match appsMap size="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",server match mAppsMap size="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppsMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 330
    .local v3, "addList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 331
    .local v4, "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 332
    const-string v6, "PreDownloadedAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePreLoadApp,client match appsMap is null,remove server match mAppsMap="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppsMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppsMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 335
    :cond_8
    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppsMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 337
    const-string v6, "PreDownloadedAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePreLoadApp,server match mAppsMap is null,add all client match appsMap="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 340
    :cond_9
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    new-instance v7, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$sX5SmZAyJKh893ku3Q4AB9-poFs;

    invoke-direct {v7, v3, v1}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$sX5SmZAyJKh893ku3Q4AB9-poFs;-><init>(Ljava/util/List;Ljava/util/Map;)V

    invoke-interface {v6, v7}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 345
    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppsMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    new-instance v7, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$0alz-ts_v1uvkmVTXg0P68zLTkI;

    invoke-direct {v7, v1, v4}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$0alz-ts_v1uvkmVTXg0P68zLTkI;-><init>(Ljava/util/Map;Ljava/util/List;)V

    invoke-interface {v6, v7}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 352
    :goto_2
    const-string v6, "PreDownloadedAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePreLoadApp,addList="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",removeList="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "mAppEventListener==null=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    if-nez v8, :cond_a

    const/4 v8, 0x1

    goto :goto_3

    :cond_a
    move v8, v5

    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_b

    .line 354
    const-string v6, "PreDownloadedAppManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handlePreLoadApp,addList="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "nexi will add"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v8, 0x2

    new-array v9, v5, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v6, v8, v9, v7}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 356
    const-string v6, "PreDownloadedAppManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handlePreLoadApp,addList="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "add done"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_b
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 359
    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v8, 0x4

    new-array v9, v5, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v4, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v6, v8, v9, v7}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 361
    :cond_c
    const-string v6, "PreDownloadedAppManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handlePreLoadApp,appsMap="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",tobeSavedMetaList size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 361
    invoke-static {v6, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    .line 364
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v6

    new-instance v8, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$UT6uE4zLD540JL2lCem7KJ0J4sU;

    invoke-direct {v8, v2}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$UT6uE4zLD540JL2lCem7KJ0J4sU;-><init>(Ljava/util/List;)V

    invoke-virtual {v6, v8}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 368
    :cond_d
    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppsMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 369
    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppsMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 371
    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v8, 0x3

    sget-object v9, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppsMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    new-array v5, v5, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v9, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v6, v8, v5, v7}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method private handleUninstallApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Z)V
    .locals 6
    .param p1, "appInfo"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p2, "selfRemove"    # Z

    .line 390
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->queryById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    move-result-object v0

    .line 391
    .local v0, "appMeta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    if-nez v0, :cond_1

    .line 392
    if-eqz p2, :cond_0

    .line 393
    const-string v1, "PreDownloadedAppManager"

    const-string v2, "handleUninstallApp,appMeta is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_0
    return-void

    .line 397
    :cond_1
    const-string v1, "PreDownloadedAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUninstallApp,pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",appMeta="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",selfRemove="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/4 v1, 0x5

    iput v1, v0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->status:I

    .line 400
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->update(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    .line 403
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 404
    .local v1, "target":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    if-nez v1, :cond_2

    .line 405
    const-string v2, "PreDownloadedAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUninstallApp,strange,pkg removed but not found cached app info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-void

    .line 408
    :cond_2
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v3, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method static synthetic lambda$handlePreLoadApp$4(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p0, "appInfo"    # Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .line 295
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->isOperationNightIconValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setStoreIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->isOperationDayIconValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    new-instance v0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setStoreNightIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 301
    :cond_1
    const-string v0, "PreDownloadedAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePreLoadApp,mAppEventListener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    aput-object p0, v3, v1

    const/4 v1, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method static synthetic lambda$handlePreLoadApp$5(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p0, "addList"    # Ljava/util/List;
    .param p1, "appsMap"    # Ljava/util/Map;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 341
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_0
    return-void
.end method

.method static synthetic lambda$handlePreLoadApp$6(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p0, "appsMap"    # Ljava/util/Map;
    .param p1, "removeList"    # Ljava/util/List;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 346
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppsMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_0
    return-void
.end method

.method static synthetic lambda$handlePreLoadApp$7(Ljava/util/List;)V
    .locals 2
    .param p0, "tobeSavedMetaList"    # Ljava/util/List;

    .line 365
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->insert([Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    .line 366
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;)V
    .locals 3

    .line 88
    const-string v0, "PreDownloadedAppManager"

    const-string v1, "user unlocked"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-boolean v0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->fetched:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mPreDownloadedAppFetcher:Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;->startFetch(J)V

    .line 92
    :cond_0
    return-void
.end method

.method public static synthetic lambda$init$1(Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 98
    if-eqz p2, :cond_5

    array-length v0, p2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_3

    .line 102
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_4

    .line 103
    aget-object v3, p2, v2

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x48bcf732

    if-eq v5, v6, :cond_2

    const v6, 0x52971aad

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "-fetch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v4, v0

    goto :goto_1

    :cond_2
    const-string v5, "-install"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v4, v1

    :cond_3
    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 109
    :pswitch_0
    new-instance v3, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-direct {v3}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;-><init>()V

    .line 110
    .local v3, "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setCategory(I)V

    .line 111
    const-string v4, "CATEGORY_PRE_DOWNLOADED_APPS.io.dushu.car"

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setAppId(Ljava/lang/String;)V

    .line 112
    const-string v4, "io.dushu.car"

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setPkgName(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->installApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I

    .line 114
    .end local v3    # "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    goto :goto_2

    .line 105
    :pswitch_1
    const-string v3, "start fetch..."

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mPreDownloadedAppFetcher:Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;->startFetch(J)V

    .line 107
    nop

    .line 102
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v2    # "i":I
    :cond_4
    return-void

    .line 99
    :cond_5
    :goto_3
    const-string v0, "args is null or empty"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$installApp$2(Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 192
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->getCallScreenId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->handleInstallApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;I)I

    .line 193
    return-void
.end method

.method public static synthetic lambda$uninstallApp$3(Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 204
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->handleUninstallApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Z)V

    .line 205
    return-void
.end method

.method public static synthetic lambda$v5-BJodc5UhkxyAOACN-Z43NnY4(Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;ZLcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApps;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->onAppFetched(ZLcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApps;)V

    return-void
.end method

.method private onAppFetched(ZLcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApps;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "apps"    # Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApps;

    .line 123
    const-string v0, "PreDownloadedAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppFetched,success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",apps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    if-nez p1, :cond_1

    .line 125
    sget v0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mRetryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 126
    sget v0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mRetryCount:I

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mPreDownloadedAppFetcher:Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;->startFetch(J)V

    .line 130
    :cond_0
    return-void

    .line 132
    :cond_1
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApps;->apps:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApps;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApps;->apps:Ljava/util/List;

    .line 137
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;>;"
    const-string v1, "PreDownloadedAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAppFetched,appList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->handlePreLoadApp(ZLjava/util/List;)V

    .line 139
    return-void

    .line 133
    .end local v0    # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;>;"
    :cond_3
    :goto_0
    const-string v0, "PreDownloadedAppManager"

    const-string v1, "onAppFetched, result is empty"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method


# virtual methods
.method public getAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .line 212
    if-eqz p1, :cond_1

    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 214
    .local v1, "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    return-object v1

    .line 217
    .end local v1    # "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    :cond_0
    goto :goto_0

    .line 219
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 155
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->innerList2OutList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfoList(I)Ljava/util/List;
    .locals 4
    .param p1, "screenId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 160
    const-string v0, "PreDownloadedAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppInfoList,screenId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->getAppInfoList()Ljava/util/List;

    move-result-object v0

    .line 162
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    const-string v1, "PreDownloadedAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppInfoList,apps="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-object v0
.end method

.method public getManagerName()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "PreDownloadedAppManager"

    return-object v0
.end method

.method public init()V
    .locals 3

    .line 84
    const-string v0, "PreDownloadedAppManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mLocalEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->registerAppEventListener(Lcom/xiaopeng/xuimanager/applist/AppEventListener;)V

    .line 86
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->getInstance()Lcom/xiaopeng/xuiservice/utils/CarControlUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->addCarControlListener(Lcom/xiaopeng/xuiservice/utils/CarControlUtils$CarControlListener;)V

    .line 87
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$Ol28KMbgn7lwAVm7ymezb5GW4ao;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$Ol28KMbgn7lwAVm7ymezb5GW4ao;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->addUserUnlockedTask(Ljava/lang/Runnable;)V

    .line 93
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->isBootComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->fetched:Z

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mPreDownloadedAppFetcher:Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;->startFetch(J)V

    .line 97
    :cond_0
    const-string v0, "predown"

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$G9KBqB4cIUvZGJNJn50RH6w1Xuw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$G9KBqB4cIUvZGJNJn50RH6w1Xuw;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 120
    return-void
.end method

.method public installApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 4
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, "ret":I
    const-string v1, "PreDownloadedAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install app,info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->getInstance()Lcom/xiaopeng/xuimanager/utils/WorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$hBh2hMvWFfH-2Us8hFCvJmH57og;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$hBh2hMvWFfH-2Us8hFCvJmH57og;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 195
    return v0
.end method

.method public onAppOperationChanged(ILjava/lang/String;)V
    .locals 7
    .param p1, "groupType"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 224
    const-string v0, "PreDownloadedAppManager"

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

    .line 225
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 228
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 230
    sget-object v3, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppsMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->updateAppsInfoFromOperation([Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Ljava/util/Collection;)V

    .line 231
    sget-object v3, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppsMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    new-array v1, v1, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v4, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v3, v0, v1, v2}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_1
    sget-object v3, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppsMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 235
    .local v3, "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    if-eqz v3, :cond_2

    .line 236
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->updateAppInfoFromOperation(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    .line 237
    const-string v4, "PreDownloadedAppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAppOperationChanged,packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",info.mScreenShow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mScreenShow:[I

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    aput-object v3, v5, v1

    invoke-interface {v4, v0, v5, v2}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_2
    const-string v0, "PreDownloadedAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppOperationChanged,not found app info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .end local v3    # "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    :goto_0
    return-void

    .line 226
    :cond_3
    :goto_1
    return-void
.end method

.method public onIgStatusChange(I)V
    .locals 3
    .param p1, "status"    # I

    .line 413
    const-string v0, "PreDownloadedAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIgStatusChange,status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 419
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->isBootComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mPreDownloadedAppFetcher:Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;->startFetch(J)V

    goto :goto_0

    .line 416
    :pswitch_1
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->mRetryCount:I

    .line 417
    nop

    .line 426
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resetAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 178
    const/16 v0, -0x3e9

    return v0
.end method

.method public startApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p2, "extra"    # Landroid/os/Bundle;

    .line 183
    const/16 v0, -0x3e9

    return v0
.end method

.method public uninstallApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 4
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, "ret":I
    const-string v1, "PreDownloadedAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uninstall app,info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$OjVJ02u4KFqLbtI5soCcQMwoswQ;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$OjVJ02u4KFqLbtI5soCcQMwoswQ;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 207
    return v0
.end method

.method public updateAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 173
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

    .line 168
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    const/16 v0, -0x3e9

    return v0
.end method
