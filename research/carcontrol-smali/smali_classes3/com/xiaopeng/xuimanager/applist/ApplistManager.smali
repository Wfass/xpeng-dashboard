.class public Lcom/xiaopeng/xuimanager/applist/ApplistManager;
.super Ljava/lang/Object;
.source "ApplistManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/applist/ApplistFunc;
.implements Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/applist/ApplistManager$ApplistManagerHolder;
    }
.end annotation


# static fields
.field public static final MODULE_NAME:Ljava/lang/String; = "ApplistManager"

.field private static final TAG:Ljava/lang/String; = "ApplistManager"

.field private static final busServiceName:Ljava/lang/String; = "xuiservice"


# instance fields
.field private final busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

.field private final mAppEventListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuimanager/applist/AppEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->mAppEventListenerSet:Ljava/util/Set;

    .line 47
    sget-object v0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    .line 48
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "xuiservice"

    .line 47
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClientManager;->getBusAgent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v1, "appList"

    .line 49
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->setTagSuffix(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/applist/ApplistManager$1;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/applist/ApplistManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/applist/ApplistManager;
    .locals 1

    .line 43
    invoke-static {}, Lcom/xiaopeng/xuimanager/applist/ApplistManager$ApplistManagerHolder;->access$100()Lcom/xiaopeng/xuimanager/applist/ApplistManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelDownloading(Ljava/lang/String;)I
    .locals 4

    .line 495
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 496
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    .line 497
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object v1, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const-string v2, "cancelDownload"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method

.method public fetchAppOperation(ILjava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 535
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    .line 536
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIntArray([I)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    aput-object p2, p1, v3

    aput-object p3, p1, v1

    .line 537
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    .line 538
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object p2, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const-string p3, "fetchAppOperation"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method

.method public getAppInfo(ILjava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 5

    .line 312
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 313
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    .line 314
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIntArray([I)V

    new-array p1, v2, [Ljava/lang/String;

    aput-object p2, p1, v4

    .line 315
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    .line 316
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object p2, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const-string v2, "getAppInfo"

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    if-nez p1, :cond_0

    .line 320
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object p1

    aget-object p1, p1, v4

    check-cast p1, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    return-object p1

    .line 323
    :cond_0
    sget-object p2, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppInfo fail,ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 5

    .line 287
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 288
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 289
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    .line 290
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object v2, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "getAppInfo"

    invoke-virtual {p1, v2, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    if-nez p1, :cond_0

    .line 294
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object p1

    aget-object p1, p1, v3

    check-cast p1, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    return-object p1

    .line 297
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppInfo fail,ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAppInfoForSupportOpen(ILjava/lang/String;Landroid/os/Bundle;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 5

    .line 338
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 339
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    .line 340
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIntArray([I)V

    new-array p1, v2, [Ljava/lang/String;

    aput-object p2, p1, v4

    .line 341
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    if-eqz p3, :cond_0

    new-array p1, v2, [Landroid/os/Parcelable;

    aput-object p3, p1, v4

    .line 343
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 345
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object v2, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const-string v3, "getAppInfoForSupportOpen"

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    if-nez p1, :cond_1

    .line 349
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object p1

    aget-object p1, p1, v4

    check-cast p1, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 350
    sget-object v0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppInfoForSupportOpen success,info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "extra="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 353
    :cond_1
    sget-object p2, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAppInfoForSupportOpen fail,ret="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAppInfoList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object v2, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const-string v3, "getAppInfoList"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v1

    if-nez v1, :cond_2

    .line 85
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v4

    .line 89
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 91
    check-cast v4, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 95
    :cond_2
    sget-object v0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppInfoList,ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public getAppInfoList(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 112
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    .line 114
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIntArray([I)V

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object v2, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "getAppInfoList"

    invoke-virtual {p1, v2, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 119
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 123
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    array-length v1, p1

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, p1, v3

    .line 125
    check-cast v2, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 129
    :cond_2
    sget-object v1, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppInfoList with category,ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAppInfoList(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 146
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput p2, v2, p1

    .line 148
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIntArray([I)V

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object p2, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const-string v2, "getAppInfoList"

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    .line 153
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 157
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    array-length v0, p1

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v1, p1, v3

    .line 159
    check-cast v1, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    .line 163
    :cond_2
    sget-object v0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppInfoList with category,ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public getAppInfos(Ljava/lang/String;)[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 5

    .line 366
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 367
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 368
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    .line 369
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object v2, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "getAppInfos"

    invoke-virtual {p1, v2, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    if-nez p1, :cond_1

    .line 373
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 374
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object p1

    array-length p1, p1

    new-array p1, p1, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 375
    :goto_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v0

    array-length v0, v0

    if-ge v3, v0, :cond_0

    .line 376
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    aput-object v0, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    .line 383
    :cond_1
    sget-object v0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppInfos fail,ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCategoryMetaData(I)Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;
    .locals 5

    .line 53
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 54
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    .line 55
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIntArray([I)V

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object v2, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "getCategoryMeta"

    invoke-virtual {p1, v2, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 61
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_0

    .line 62
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object p1

    aget-object p1, p1, v3

    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;

    :cond_0
    return-object v0

    .line 66
    :cond_1
    sget-object v1, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCategoryMetaData,ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public installApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 4

    .line 461
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/os/Parcelable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 463
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 464
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object v1, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const-string v2, "installApp"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method

.method public isAppAuthed(ILjava/lang/String;)Z
    .locals 5

    .line 418
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 419
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    .line 420
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIntArray([I)V

    new-array p1, v2, [Ljava/lang/String;

    aput-object p2, p1, v4

    .line 421
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    .line 423
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object p2, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const-string v3, "getAppAuth"

    invoke-virtual {p1, p2, v3, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    if-nez p1, :cond_1

    .line 426
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getIntArray()[I

    move-result-object p1

    aget p1, p1, v4

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :cond_1
    :goto_0
    return v2
.end method

.method public isAppAuthed(Ljava/lang/String;)Z
    .locals 6

    .line 396
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 397
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 398
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    .line 400
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object v3, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const-string v5, "getAppAuth"

    invoke-virtual {p1, v3, v5, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    if-nez p1, :cond_1

    .line 403
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getIntArray()[I

    move-result-object p1

    aget p1, p1, v4

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :cond_1
    :goto_0
    return v2
.end method

.method public notifyAppEvent(II[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)I
    .locals 3

    .line 237
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 238
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIntArray([I)V

    .line 239
    invoke-virtual {v0, p3}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 240
    invoke-virtual {v0, p4}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    .line 241
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object p2, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const-string p3, "notifyAppEvent"

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, v0, p4}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method

.method public onPipeBusEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 578
    sget-object v0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPipeBusEvent,types="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",events="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPipeBusParcelEvent(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)V
    .locals 4

    .line 589
    sget-object v0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPipeBusParcelEvent,types="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",listener size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->mAppEventListenerSet:Ljava/util/Set;

    .line 590
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 589
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->mAppEventListenerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 595
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 600
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    .line 602
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 603
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 605
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v3

    aget-object v3, v3, v2

    check-cast v3, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 608
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 609
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->mAppEventListenerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    .line 610
    invoke-interface {v2, p1, v0, p2}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 613
    sget-object p2, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPipeBusParcelEvent e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public pauseDownloading(Ljava/lang/String;)I
    .locals 4

    .line 510
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 511
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    .line 512
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object v1, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const-string v2, "pauseDownload"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized registerAppEventListener(Lcom/xiaopeng/xuimanager/applist/AppEventListener;)V
    .locals 2

    monitor-enter p0

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->mAppEventListenerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object v1, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->registerModuleListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;)V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->mAppEventListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public resetAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 4

    .line 216
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/os/Parcelable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 218
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 219
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object v1, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const-string v2, "resetAppInfo"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method

.method public resumeDownloading(Ljava/lang/String;)I
    .locals 4

    .line 525
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 526
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    .line 527
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object v1, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const-string v2, "resumeDownload"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method

.method public setAppAuthed([Ljava/lang/String;I)I
    .locals 3

    .line 441
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 442
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 443
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v2, 0x0

    aput p2, p1, v2

    .line 444
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIntArray([I)V

    .line 446
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object p2, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const-string v2, "setAppAuth"

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method

.method public startApp(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 4

    .line 256
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 257
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-array p1, v1, [Landroid/os/Parcelable;

    aput-object p2, p1, v3

    .line 259
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 262
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object p2, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "startApp"

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method

.method public stopApp(Ljava/lang/String;)I
    .locals 4

    .line 270
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 271
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    .line 272
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object v1, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const-string v2, "stopApp"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized unRegisterAppEventListener(Lcom/xiaopeng/xuimanager/applist/AppEventListener;)V
    .locals 1

    monitor-enter p0

    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->mAppEventListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 565
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->mAppEventListenerSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 566
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object v0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->unRegisterModuleListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public uninstallApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 4

    .line 479
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/os/Parcelable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 481
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 482
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object v1, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const-string v2, "uninstallApp"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method

.method public updateAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 4

    .line 198
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/os/Parcelable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 200
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 201
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object v1, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const-string v2, "updateAppInfo"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method

.method public updateApplist(ILjava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;)I"
        }
    .end annotation

    .line 179
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 181
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIntArray([I)V

    .line 182
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 183
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    sget-object p2, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    const-string v1, "updateApplist"

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method
