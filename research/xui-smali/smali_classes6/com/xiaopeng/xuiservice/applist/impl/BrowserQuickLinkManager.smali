.class public Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;
.super Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
.source "BrowserQuickLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager$BrowserQuickLinkManagerHolder;
    }
.end annotation


# static fields
.field private static final APP_HOLDING_PACKAGE:Ljava/lang/String; = "com.xp.xpbrowser"

.field private static final TAG:Ljava/lang/String; = "BrowserQuickLinkManager"

.field private static final mAppInfoSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLocalEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppInfoSet:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;-><init>()V

    .line 47
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager$1;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mLocalEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager$1;

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 39
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->deleteAppBitmap(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    return-void
.end method

.method private checkInnerAppInfo(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .locals 3
    .param p1, "innerAppInfo"    # Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .param p2, "appMeta"    # Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 376
    if-nez p1, :cond_0

    .line 377
    const-string v0, "BrowserQuickLinkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkInnerAppInfo,innerAppInfo is null,appMeta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    return-void

    .line 380
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->isOperationDayIconValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dayIconPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 382
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getStoreIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v0

    iget-object v1, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dayIconPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 385
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->isOperationNightIconValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 386
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->storeNightIconPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 387
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getStoreNightIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v0

    iget-object v1, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->storeNightIconPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 390
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->isOperationDockIconValid()Z

    move-result v0

    if-nez v0, :cond_3

    .line 391
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dockerIconPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 392
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getDockerIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v0

    iget-object v1, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dockerIconPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 395
    :cond_3
    return-void
.end method

.method private getDataFromInnerAppInfo(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 346
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 347
    return-object v0

    .line 349
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 350
    return-object v0

    .line 352
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;
    .locals 1

    .line 97
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager$BrowserQuickLinkManagerHolder;->access$200()Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;

    move-result-object v0

    return-object v0
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "sourceData"    # Ljava/lang/String;

    .line 336
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppInfoSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 337
    .local v1, "installed":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->getDataFromInnerAppInfo(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    const/4 v0, 0x1

    return v0

    .line 340
    .end local v1    # "installed":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    :cond_0
    goto :goto_0

    .line 342
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$init$0([Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V
    .locals 3
    .param p0, "appInfos"    # [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 126
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method static synthetic lambda$installApp$1(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V
    .locals 4
    .param p0, "innerAppInfo"    # Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 294
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method static synthetic lambda$uninstallApp$2(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V
    .locals 4
    .param p0, "finalTarget"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 326
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method static synthetic lambda$updateIconsFromPkg$3(Ljava/util/List;)V
    .locals 4
    .param p0, "appInfos"    # Ljava/util/List;

    .line 371
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method private updateIconsFromPkg(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 356
    if-nez p1, :cond_0

    .line 357
    return-void

    .line 359
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v0, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppInfoSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 361
    .local v2, "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 362
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->updateAppInfoFromOperation(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    .line 363
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    .end local v2    # "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    :cond_1
    goto :goto_0

    .line 366
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 367
    const-string v1, "BrowserQuickLinkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIconsFromPkg,appInfos is empty,packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void

    .line 370
    :cond_3
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$BrowserQuickLinkManager$42M9wfC9tKOIt0ZY-zvGgh7s20c;

    invoke-direct {v2, v0}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$BrowserQuickLinkManager$42M9wfC9tKOIt0ZY-zvGgh7s20c;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 373
    return-void
.end method


# virtual methods
.method public getAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    .line 211
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppInfoSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 214
    :cond_0
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppInfoSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 215
    .local v2, "appInfo":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    return-object v2

    .line 218
    .end local v2    # "appInfo":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    :cond_1
    goto :goto_0

    .line 219
    :cond_2
    return-object v0

    .line 212
    :cond_3
    :goto_1
    return-object v0
.end method

.method public getAppInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 134
    const-string v0, "BrowserQuickLinkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppInfoList size= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppInfoSet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppInfoSet:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->innerList2OutList(Ljava/util/Collection;)Ljava/util/List;

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

    .line 140
    const-string v0, "BrowserQuickLinkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppInfoList size= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppInfoSet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", screenId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppInfoSet:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->innerList2OutList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getManagerName()Ljava/lang/String;
    .locals 1

    .line 93
    const-string v0, "BrowserQuickLinkManager"

    return-object v0
.end method

.method public init()V
    .locals 8

    .line 102
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mLocalEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->registerAppEventListener(Lcom/xiaopeng/xuimanager/applist/AppEventListener;)V

    .line 103
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v0

    .line 104
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->queryByCategory(I)Ljava/util/List;

    move-result-object v0

    .line 105
    .local v0, "appMetaList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 108
    .local v2, "appMeta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    new-instance v3, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    invoke-direct {v3}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;-><init>()V

    .line 109
    .local v3, "innerAppInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->appMetaToAppInfo(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V

    .line 110
    iget-object v4, v2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->jsonStringToStartIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 111
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "BrowserQuickLinkManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "find app meta:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ",intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setLaunchIntent(Landroid/content/Intent;)V

    .line 113
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, v3, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->bundle:Landroid/os/Bundle;

    .line 114
    iget-object v5, v3, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->bundle:Landroid/os/Bundle;

    const-string v6, "startIntent"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 115
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->updateAppInfoFromOperation(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    .line 116
    invoke-direct {p0, v3, v2}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->checkInnerAppInfo(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    .line 117
    sget-object v5, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppInfoSet:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v2    # "appMeta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    .end local v3    # "innerAppInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 119
    :cond_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 121
    :cond_1
    :goto_1
    const-string v1, "BrowserQuickLinkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init mAppInfoSet size= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppInfoSet:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppInfoSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppInfoSet:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 124
    .local v1, "appInfos":[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$BrowserQuickLinkManager$IZhJgMTm6m88TSl90G-NA9EUAE0;

    invoke-direct {v3, v1}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$BrowserQuickLinkManager$IZhJgMTm6m88TSl90G-NA9EUAE0;-><init>([Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    .end local v1    # "appInfos":[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    :cond_2
    return-void
.end method

.method public declared-synchronized installApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 11
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    monitor-enter p0

    .line 241
    const/4 v0, 0x0

    .line 243
    .local v0, "ret":I
    :try_start_0
    new-instance v1, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;-><init>()V

    .line 244
    .local v1, "innerAppInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    const/4 v2, 0x0

    .line 245
    .local v2, "dataString":Ljava/lang/String;
    iget-object v3, p1, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->bundle:Landroid/os/Bundle;

    const/16 v4, -0x3ec

    if-eqz v3, :cond_6

    .line 246
    iget-object v3, p1, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->bundle:Landroid/os/Bundle;

    const-string v5, "startIntent"

    .line 247
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 248
    .local v3, "parcelable":Landroid/os/Parcelable;
    if-eqz v3, :cond_5

    instance-of v5, v3, Landroid/content/Intent;

    if-eqz v5, :cond_5

    .line 249
    move-object v5, v3

    check-cast v5, Landroid/content/Intent;

    .line 250
    .local v5, "sourceIntent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 251
    if-eqz v2, :cond_4

    const-string v6, "http"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_1

    .line 255
    :cond_0
    invoke-virtual {v5}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 256
    const-string v4, "BrowserQuickLinkManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "installApp,app is installed,,dataString="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    const/4 v4, 0x0

    monitor-exit p0

    return v4

    .line 259
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 260
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    :cond_2
    invoke-virtual {v1, v5}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setLaunchIntent(Landroid/content/Intent;)V

    .line 263
    const-string v4, "BrowserQuickLinkManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "installApp,sourceIntent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .end local v5    # "sourceIntent":Landroid/content/Intent;
    nop

    .line 268
    .end local v3    # "parcelable":Landroid/os/Parcelable;
    nop

    .line 273
    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->appInfo2InnerAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    .line 274
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 275
    .local v3, "d":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMddHHmmss.SSS"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 276
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/xuimanager/applist/ApplistConst;->getCategoryMap()Ljava/util/Map;

    move-result-object v6

    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".i"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppInfoSet:Ljava/util/List;

    .line 277
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 278
    .local v5, "appId":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setAppId(Ljava/lang/String;)V

    .line 279
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setIsFirstLaunch(Z)V

    .line 280
    invoke-virtual {v1, v6}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setStatus(I)V

    .line 281
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, v1, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->bundle:Landroid/os/Bundle;

    .line 282
    iget-object v6, v1, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->bundle:Landroid/os/Bundle;

    const-string v7, "startIntent"

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 283
    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppInfoSet:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->toAppMeta(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    move-result-object v6

    .line 285
    .local v6, "meta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    invoke-virtual {p0, v1, v6}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->saveAppBitmap(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    .line 286
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->startIntentToJsonString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    .line 287
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->insert(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    .line 290
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->updateAppInfoFromOperation(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    .line 291
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->getInstance()Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    move-result-object v7

    const/16 v8, 0xf

    .line 292
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    .line 291
    invoke-virtual {v7, v8, v9, v10}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->fetchAppOperation(ILjava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v7

    new-instance v8, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$BrowserQuickLinkManager$kbBRHi0TVNR_5L4VNukzy6Y1bxg;

    invoke-direct {v8, v1}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$BrowserQuickLinkManager$kbBRHi0TVNR_5L4VNukzy6Y1bxg;-><init>(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    invoke-virtual {v7, v8}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 296
    const-string v7, "BrowserQuickLinkManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "installApp,meta="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ",inner app="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ",default icon bmp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getStoreIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getStoreIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->getBitMap()Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 296
    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    monitor-exit p0

    return v0

    .line 252
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v6    # "meta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    .local v3, "parcelable":Landroid/os/Parcelable;
    .local v5, "sourceIntent":Landroid/content/Intent;
    :cond_4
    :goto_1
    :try_start_2
    const-string v6, "BrowserQuickLinkManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "installApp,dataString is null or invalid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    monitor-exit p0

    return v4

    .line 265
    .end local v5    # "sourceIntent":Landroid/content/Intent;
    :cond_5
    :try_start_3
    const-string v5, "BrowserQuickLinkManager"

    const-string v6, "installApp,parcelable is null or not Intent"

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    monitor-exit p0

    return v4

    .line 269
    .end local v3    # "parcelable":Landroid/os/Parcelable;
    :cond_6
    :try_start_4
    const-string v3, "BrowserQuickLinkManager"

    const-string v5, "installApp,bundle is null"

    invoke-static {v3, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 270
    monitor-exit p0

    return v4

    .line 240
    .end local v0    # "ret":I
    .end local v1    # "innerAppInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .end local v2    # "dataString":Ljava/lang/String;
    .end local p1    # "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .line 240
    .end local p0    # "this":Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;
    throw p1
.end method

.method public onAppOperationChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "groupType"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 224
    const-string v0, "BrowserQuickLinkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppOperationChanged,group="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mAppInfoSet size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppInfoSet:Ljava/util/List;

    .line 225
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppInfoSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 230
    :cond_0
    if-nez p2, :cond_1

    .line 232
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppInfoSet:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->updateAppsInfoFromOperation([Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Ljava/util/Collection;)V

    .line 233
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v2, 0x3

    sget-object v3, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppInfoSet:Ljava/util/List;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v0, v2, v3, v1}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_1
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->updateIconsFromPkg(Ljava/lang/String;)V

    .line 237
    :goto_0
    return-void

    .line 227
    :cond_2
    :goto_1
    return-void
.end method

.method public resetAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 156
    const/16 v0, -0x3e9

    return v0
.end method

.method public startApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Landroid/os/Bundle;)I
    .locals 10
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p2, "extra"    # Landroid/os/Bundle;

    .line 161
    const/4 v0, 0x0

    .line 163
    .local v0, "ret":I
    if-eqz p1, :cond_5

    instance-of v1, p1, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 167
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 168
    .local v1, "innerAppInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v2

    .line 169
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_4

    .line 170
    const/high16 v3, 0x10200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 172
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->getCallScreenId()I

    move-result v3

    .line 173
    .local v3, "screenId":I
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v4, "extraBundle":Landroid/os/Bundle;
    if-eqz p2, :cond_1

    .line 175
    const-string v5, "screenId"

    invoke-virtual {p2, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    move v3, v5

    .line 176
    invoke-virtual {p0, p2, v2, v4}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->extraBundleToStartIntent(Landroid/os/Bundle;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 177
    const-string v5, "BrowserQuickLinkManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "client set screenId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_1
    const-string v5, "BrowserQuickLinkManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startApp,screenId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v5

    sget-object v6, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v2, v3, v4}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)I

    .line 181
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->isFirstLaunch()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 183
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setIsFirstLaunch(Z)V

    .line 185
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v6

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->queryById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    move-result-object v6

    .line 186
    .local v6, "meta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    if-eqz v6, :cond_2

    .line 187
    iput-boolean v5, v6, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->isFirstLaunch:Z

    .line 188
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->update(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    .line 189
    sget-object v7, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v8, 0x3

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    aput-object p1, v9, v5

    const/4 v5, 0x0

    invoke-interface {v7, v8, v9, v5}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 190
    const-string v5, "BrowserQuickLinkManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pkg is first launch:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_2
    const-string v5, "BrowserQuickLinkManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pkg is first launch, but meta is null:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .end local v6    # "meta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    :goto_0
    goto :goto_1

    .line 195
    :cond_3
    const-string v5, "BrowserQuickLinkManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkg is not first launch:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "screenId":I
    .end local v4    # "extraBundle":Landroid/os/Bundle;
    goto :goto_1

    .line 197
    :catch_0
    move-exception v3

    .line 198
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "BrowserQuickLinkManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start app e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/16 v0, -0x3ed

    .line 200
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 202
    :cond_4
    const/16 v0, -0x3ec

    .line 205
    :goto_2
    const-string v3, "BrowserQuickLinkManager"

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

    .line 206
    return v0

    .line 164
    .end local v1    # "innerAppInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    :goto_3
    const-string v1, "BrowserQuickLinkManager"

    const-string v2, "startApp,info is not InnerAppInfo"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/16 v1, -0x3ea

    return v1
.end method

.method public declared-synchronized uninstallApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 7
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    monitor-enter p0

    .line 303
    const/4 v0, 0x0

    .line 305
    .local v0, "ret":I
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->queryById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    move-result-object v1

    .line 306
    .local v1, "meta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    if-nez v1, :cond_0

    .line 307
    const-string v2, "BrowserQuickLinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uninstallApp,db meta is null,app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    const/16 v2, -0x3ea

    monitor-exit p0

    return v2

    .line 311
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->delete(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    .line 313
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->deleteAppBitmap(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    .line 315
    const/4 v2, 0x0

    .line 316
    .local v2, "target":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    sget-object v3, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppInfoSet:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 317
    .local v4, "appInfo":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 318
    move-object v2, v4

    .line 319
    goto :goto_1

    .line 321
    .end local v4    # "appInfo":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    :cond_1
    goto :goto_0

    .line 322
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 323
    move-object v3, v2

    .line 324
    .local v3, "finalTarget":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->mAppInfoSet:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 325
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v4

    new-instance v5, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$BrowserQuickLinkManager$RuC5t-dbBeSJnmruehLADGfsRy8;

    invoke-direct {v5, v3}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$BrowserQuickLinkManager$RuC5t-dbBeSJnmruehLADGfsRy8;-><init>(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 328
    .end local v3    # "finalTarget":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    goto :goto_2

    .line 329
    :cond_3
    const-string v3, "BrowserQuickLinkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uninstallApp,cache is null,app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :goto_2
    const-string v3, "BrowserQuickLinkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uninstallApp,target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",in="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    monitor-exit p0

    return v0

    .line 302
    .end local v0    # "ret":I
    .end local v1    # "meta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    .end local v2    # "target":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .end local p1    # "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;
    throw p1
.end method

.method public updateAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 151
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

    .line 146
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    const/16 v0, -0x3e9

    return v0
.end method
