.class public Lxframework/android/app/usage/StorageStatsManagerWrapper;
.super Ljava/lang/Object;
.source "StorageStatsManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxframework/android/app/usage/StorageStatsManagerWrapper$SingletonHolder;
    }
.end annotation


# static fields
.field private static final MODULE_NAME:Ljava/lang/String; = "sysWrapper"

.field private static final TAG:Ljava/lang/String; = "StorageStatsManagerWrapper"

.field private static final busServiceName:Ljava/lang/String; = "xuiservice"


# instance fields
.field private final busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xuiservice"

    const-string v2, "sysWrapper"

    .line 27
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClientManager;->getBusAgent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    move-result-object v0

    iput-object v0, p0, Lxframework/android/app/usage/StorageStatsManagerWrapper;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v1, "syswrapper"

    .line 29
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->setTagSuffix(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lxframework/android/app/usage/StorageStatsManagerWrapper$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lxframework/android/app/usage/StorageStatsManagerWrapper;-><init>()V

    return-void
.end method

.method public static getInstance()Lxframework/android/app/usage/StorageStatsManagerWrapper;
    .locals 1

    .line 37
    invoke-static {}, Lxframework/android/app/usage/StorageStatsManagerWrapper$SingletonHolder;->access$100()Lxframework/android/app/usage/StorageStatsManagerWrapper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppUseStorage(Ljava/lang/String;)[J
    .locals 4

    .line 80
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 81
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 82
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lxframework/android/app/usage/StorageStatsManagerWrapper;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v2, "sysWrapper"

    const-string v3, "sysWrapper.getAppUsageStorage"

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    if-nez p1, :cond_0

    .line 87
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getLongArray()[J

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p1, "StorageStatsManagerWrapper"

    const-string p2, "queryStatsForPackage packageName is null"

    .line 50
    invoke-static {p1, p2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 53
    :cond_0
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 54
    new-instance v2, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    if-nez p1, :cond_1

    .line 56
    sget-object p1, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    :cond_1
    if-nez p3, :cond_2

    .line 59
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    new-array p1, p1, [Landroid/os/Parcelable;

    aput-object p3, p1, v4

    .line 62
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 63
    iget-object p1, p0, Lxframework/android/app/usage/StorageStatsManagerWrapper;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string p2, "sysWrapper"

    const-string p3, "sysWrapper.queryStatsForPackage"

    invoke-virtual {p1, p2, p3, v1, v2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    .line 69
    :cond_3
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object p1

    aget-object p1, p1, v4

    check-cast p1, Landroid/app/usage/StorageStats;

    return-object p1
.end method
