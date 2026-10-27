.class public Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;
.super Lcom/xiaopeng/xuimanager/pipebus/server/PipeBusManager;
.source "ApplistManagerServer.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/applist/ApplistFunc;
.implements Lcom/xiaopeng/xuimanager/applist/AppEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer$ApplistManagerServerHolder;
    }
.end annotation


# static fields
.field private static final MODULE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ApplistManagerServer"

.field private static final mAppIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mAppListManagerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLocalAppEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuimanager/applist/AppEventListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private onAppEventHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    sget-object v0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->MODULE_NAME:Ljava/lang/String;

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->MODULE_NAME:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppIdMap:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mLocalAppEventListeners:Ljava/util/Set;

    .line 89
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppListManagerMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/pipebus/server/PipeBusManager;-><init>()V

    .line 87
    const-string v0, "ApplistManagerServer"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->createWorkHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->onAppEventHandler:Landroid/os/Handler;

    return-void
.end method

.method private getAppAuth(ILjava/lang/String;)I
    .locals 5
    .param p1, "category"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 636
    const/4 v0, 0x1

    .line 638
    .local v0, "ret":I
    if-lez p1, :cond_1

    .line 639
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 641
    const/4 v0, 0x1

    goto :goto_0

    .line 643
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->isAppAuthed(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 646
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->isAppAuthedWithPreset(Ljava/lang/String;)I

    move-result v1

    .line 647
    .local v1, "preAuthRet":I
    const-string v2, "ApplistManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppAuth,preAuthRet="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const/4 v2, -0x1

    if-eq v2, v1, :cond_2

    .line 649
    move v0, v1

    goto :goto_0

    .line 651
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->isAccessApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .end local v1    # "preAuthRet":I
    goto :goto_0

    .line 655
    .restart local v1    # "preAuthRet":I
    :cond_3
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->isAppAuthed(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .line 659
    .end local v1    # "preAuthRet":I
    :goto_0
    return v0
.end method

.method private getCategory(Ljava/lang/String;)I
    .locals 3
    .param p1, "category"    # Ljava/lang/String;

    .line 333
    invoke-static {}, Lcom/xiaopeng/xuimanager/applist/ApplistConst;->getCategoryMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 334
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 337
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 338
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getCategoryString(I)Ljava/lang/String;
    .locals 2
    .param p1, "category"    # I

    .line 902
    invoke-static {}, Lcom/xiaopeng/xuimanager/applist/ApplistConst;->getCategoryMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 903
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "unknown"

    :goto_0
    return-object v1
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;
    .locals 1

    .line 106
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer$ApplistManagerServerHolder;->access$000()Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

    move-result-object v0

    return-object v0
.end method

.method private handleIoControlWithParcelable(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;II)I
    .locals 8
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "dataIn"    # Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;
    .param p3, "dataOut"    # Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;
    .param p4, "uid"    # I
    .param p5, "pid"    # I

    .line 753
    const/4 v0, 0x0

    .line 755
    .local v0, "ret":I
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "getCategoryMeta"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "updateApplist"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "updateAppInfo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "startApp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "installApp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "getAppInfoList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "getAppInfo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "getAppAuth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "resumeDownload"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto :goto_1

    :sswitch_9
    const-string v1, "pauseDownload"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto :goto_1

    :sswitch_a
    const-string v1, "cancelDownload"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_1

    :sswitch_b
    const-string v1, "getAppInfos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_c
    const-string v1, "notifyAppEvent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_d
    const-string v1, "uninstallApp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto :goto_1

    :sswitch_e
    const-string v1, "resetAppInfo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_f
    const-string v1, "stopApp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_10
    const-string v1, "setAppAuth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :cond_0
    :goto_0
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_9

    .line 890
    :pswitch_0
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v1

    aget-object v1, v1, v4

    check-cast v1, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 891
    .local v1, "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->uninstallApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I

    move-result v0

    .line 892
    .end local v1    # "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    goto/16 :goto_9

    .line 886
    :pswitch_1
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v1

    aget-object v1, v1, v4

    check-cast v1, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 887
    .restart local v1    # "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->installApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I

    move-result v0

    .line 888
    .end local v1    # "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    goto/16 :goto_9

    .line 882
    :pswitch_2
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getStringArray()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    .line 883
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;->resumeDownloading(Ljava/lang/String;)I

    move-result v0

    .line 884
    .end local v1    # "packageName":Ljava/lang/String;
    goto/16 :goto_9

    .line 878
    :pswitch_3
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getStringArray()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    .line 879
    .restart local v1    # "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;->pauseDownloading(Ljava/lang/String;)I

    move-result v0

    .line 880
    .end local v1    # "packageName":Ljava/lang/String;
    goto/16 :goto_9

    .line 874
    :pswitch_4
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getStringArray()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    .line 875
    .restart local v1    # "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;->cancelDownloading(Ljava/lang/String;)I

    move-result v0

    .line 876
    .end local v1    # "packageName":Ljava/lang/String;
    goto/16 :goto_9

    .line 860
    :pswitch_5
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getStringArray()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    .line 861
    .local v1, "appId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v2

    .line 862
    .local v2, "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    if-nez v2, :cond_1

    .line 863
    const/16 v0, -0x3ea

    goto :goto_2

    .line 865
    :cond_1
    sget-object v3, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppListManagerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getCategory()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    .line 866
    .local v3, "manager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    if-nez v3, :cond_2

    .line 867
    const/16 v0, -0x3eb

    goto :goto_2

    .line 869
    :cond_2
    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->stopApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I

    move-result v0

    .line 872
    .end local v1    # "appId":Ljava/lang/String;
    .end local v2    # "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .end local v3    # "manager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    :goto_2
    goto/16 :goto_9

    .line 855
    :pswitch_6
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 856
    .local v1, "packageNames":[Ljava/lang/String;
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getIntArray()[I

    move-result-object v2

    aget v2, v2, v4

    .line 857
    .local v2, "auth":I
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->setAppAuth([Ljava/lang/String;I)I

    move-result v0

    .line 858
    .end local v1    # "packageNames":[Ljava/lang/String;
    .end local v2    # "auth":I
    goto/16 :goto_9

    .line 846
    :pswitch_7
    const/4 v1, -0x1

    .line 847
    .local v1, "category":I
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getIntArray()[I

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getIntArray()[I

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_3

    .line 848
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getIntArray()[I

    move-result-object v2

    aget v1, v2, v4

    .line 850
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getStringArray()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    .line 851
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getAppAuth(ILjava/lang/String;)I

    move-result v5

    .line 852
    .local v5, "authRet":I
    new-array v3, v3, [I

    aput v5, v3, v4

    invoke-virtual {p3, v3}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIntArray([I)V

    .line 853
    .end local v1    # "category":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v5    # "authRet":I
    goto/16 :goto_9

    .line 834
    :pswitch_8
    const/4 v1, 0x0

    .line 835
    .local v1, "info":[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getIntArray()[I

    move-result-object v2

    if-eqz v2, :cond_4

    .line 836
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getStringArray()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    .line 837
    .restart local v2    # "packageName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getAppInfos(Ljava/lang/String;)[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v1

    .line 839
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_4
    if-nez v1, :cond_5

    .line 840
    const/16 v0, -0x3ea

    goto :goto_3

    .line 842
    :cond_5
    invoke-virtual {p3, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 844
    .end local v1    # "info":[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    :goto_3
    goto/16 :goto_9

    .line 818
    :pswitch_9
    const/4 v1, 0x0

    .line 819
    .local v1, "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getIntArray()[I

    move-result-object v2

    if-eqz v2, :cond_6

    .line 820
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getIntArray()[I

    move-result-object v2

    aget v2, v2, v4

    .line 821
    .local v2, "category":I
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getStringArray()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    .line 822
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v2, v5}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getAppInfoWithCategory(ILjava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v1

    .line 823
    .end local v2    # "category":I
    .end local v5    # "packageName":Ljava/lang/String;
    goto :goto_4

    .line 824
    :cond_6
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getStringArray()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    .line 825
    .local v2, "appId":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v1

    .line 827
    .end local v2    # "appId":Ljava/lang/String;
    :goto_4
    if-nez v1, :cond_7

    .line 828
    const/16 v0, -0x3ea

    goto :goto_5

    .line 830
    :cond_7
    new-array v2, v3, [Landroid/os/Parcelable;

    aput-object v1, v2, v4

    invoke-virtual {p3, v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 832
    .end local v1    # "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    :goto_5
    goto/16 :goto_9

    .line 810
    :pswitch_a
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getStringArray()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    .line 811
    .local v1, "appId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 812
    .local v2, "extra":Landroid/os/Bundle;
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 813
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v3

    aget-object v3, v3, v4

    move-object v2, v3

    check-cast v2, Landroid/os/Bundle;

    .line 815
    :cond_8
    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->startApp(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    .line 816
    .end local v1    # "appId":Ljava/lang/String;
    .end local v2    # "extra":Landroid/os/Bundle;
    goto/16 :goto_9

    .line 808
    :pswitch_b
    goto/16 :goto_9

    .line 806
    :pswitch_c
    goto/16 :goto_9

    .line 801
    :pswitch_d
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v1

    aget-object v1, v1, v4

    check-cast v1, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 802
    .local v1, "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    invoke-direct {p0, v1, p5}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->updateAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;I)I

    move-result v0

    .line 803
    .end local v1    # "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    goto/16 :goto_9

    .line 799
    :pswitch_e
    goto/16 :goto_9

    .line 769
    :pswitch_f
    const/4 v1, -0x1

    .line 770
    .local v1, "category":I
    const/4 v5, -0x1

    .line 771
    .local v5, "screenId":I
    if-eqz p2, :cond_9

    .line 772
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getIntArray()[I

    move-result-object v6

    .line 773
    .local v6, "params":[I
    if-eqz v6, :cond_9

    .line 774
    aget v1, v6, v4

    .line 775
    array-length v7, v6

    if-le v7, v3, :cond_9

    .line 776
    aget v5, v6, v3

    .line 781
    .end local v6    # "params":[I
    :cond_9
    const-string v3, "ApplistManagerServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CMD_GET_APP_INFO_LIST,category="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",screenId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const/4 v3, 0x0

    .line 783
    .local v3, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    if-eq v2, v1, :cond_b

    .line 784
    if-ne v2, v5, :cond_a

    .line 785
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getAppInfoList(I)Ljava/util/List;

    move-result-object v2

    goto :goto_6

    .line 787
    :cond_a
    invoke-virtual {p0, v1, v5}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getAppInfoList(II)Ljava/util/List;

    move-result-object v2

    goto :goto_6

    .line 790
    :cond_b
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getAppInfoList()Ljava/util/List;

    move-result-object v2

    .line 792
    .end local v3    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    .local v2, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    :goto_6
    if-eqz v2, :cond_c

    .line 793
    new-array v3, v4, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {p3, v3}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    goto :goto_7

    .line 795
    :cond_c
    const-string v3, "ApplistManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get null app list for:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getCategoryString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    .end local v1    # "category":I
    .end local v2    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    .end local v5    # "screenId":I
    :goto_7
    goto :goto_9

    .line 757
    :pswitch_10
    const/4 v1, -0x1

    .line 758
    .restart local v1    # "category":I
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getIntArray()[I

    move-result-object v2

    if-eqz v2, :cond_d

    .line 759
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getIntArray()[I

    move-result-object v2

    aget v1, v2, v4

    .line 761
    :cond_d
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getCategoryMetaData(I)Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;

    move-result-object v2

    .line 762
    .local v2, "metaData":Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;
    if-eqz v2, :cond_e

    .line 763
    new-array v3, v3, [Landroid/os/Parcelable;

    aput-object v2, v3, v4

    invoke-virtual {p3, v3}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    goto :goto_8

    .line 765
    :cond_e
    const/16 v0, -0x3ee

    .line 767
    .end local v1    # "category":I
    .end local v2    # "metaData":Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;
    :goto_8
    nop

    .line 896
    :goto_9
    const-string v1, "ApplistManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIoControlWithParcelable,cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",dataIn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",dataOut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7e1ca359 -> :sswitch_10
        -0x70511d41 -> :sswitch_f
        -0x52c2f1e0 -> :sswitch_e
        -0x4bdf6a21 -> :sswitch_d
        -0x47f3289e -> :sswitch_c
        -0x3fc2cea6 -> :sswitch_b
        -0x1e01bede -> :sswitch_a
        -0x1ae50362 -> :sswitch_9
        0xb0277d5 -> :sswitch_8
        0xe720f33 -> :sswitch_7
        0xe759639 -> :sswitch_6
        0x1101f677 -> :sswitch_5
        0x35ab3286 -> :sswitch_4
        0x4e7c4a5f -> :sswitch_3
        0x777df566 -> :sswitch_2
        0x778dcd36 -> :sswitch_1
        0x7a572a99 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initManagers()V
    .locals 5

    .line 732
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppListManagerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    .line 733
    .local v1, "manager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    invoke-virtual {v1, p0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->setAppEventListener(Lcom/xiaopeng/xuimanager/applist/AppEventListener;)V

    .line 734
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->init()V

    .line 735
    const-string v2, "ApplistManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initManagers manager:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    .end local v1    # "manager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    goto :goto_0

    .line 737
    :cond_0
    return-void
.end method

.method static synthetic lambda$dump$2(Ljava/io/PrintWriter;)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cached map size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 262
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    goto :goto_0

    .line 264
    :cond_0
    return-void
.end method

.method static synthetic lambda$dump$3(Ljava/io/PrintWriter;)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 266
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppListManagerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 267
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "category:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xuimanager/applist/ApplistConst;->getCategoryMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",manager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;>;"
    goto :goto_0

    .line 269
    :cond_0
    return-void
.end method

.method public static synthetic lambda$dump$4(Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "pkg"    # Ljava/lang/String;

    .line 271
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getCategory(Ljava/lang/String;)I

    move-result v0

    .line 272
    .local v0, "categoryInt":I
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppListManagerMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    .line 274
    .local v1, "appManager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    const/4 v2, -0x1

    if-eq v2, v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    .line 278
    :cond_0
    new-instance v2, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-direct {v2}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;-><init>()V

    .line 279
    .local v2, "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    invoke-virtual {v2, p3}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setPkgName(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setCategory(I)V

    .line 281
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->installApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I

    move-result v3

    .line 282
    .local v3, "ret":I
    if-eqz v3, :cond_1

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 290
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Install failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not allowed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Install failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    goto :goto_0

    .line 284
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " install success"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    nop

    .line 293
    :goto_0
    return-void

    .line 275
    .end local v2    # "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .end local v3    # "ret":I
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Install failed, unknown category:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    return-void

    :pswitch_data_0
    .packed-switch -0x3ea
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$dump$5(Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "pkg"    # Ljava/lang/String;

    .line 295
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getCategory(Ljava/lang/String;)I

    move-result v0

    .line 296
    .local v0, "categoryInt":I
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppListManagerMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    .line 298
    .local v1, "appManager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    const/4 v2, -0x1

    if-eq v2, v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    .line 302
    :cond_0
    new-instance v2, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-direct {v2}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;-><init>()V

    .line 303
    .local v2, "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    invoke-virtual {v2, p3}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setPkgName(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setCategory(I)V

    .line 305
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->uninstallApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I

    move-result v3

    .line 306
    .local v3, "ret":I
    if-eqz v3, :cond_1

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 314
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uninstall failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not allowed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uninstall failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    goto :goto_0

    .line 308
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uninstall success"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    nop

    .line 317
    :goto_0
    return-void

    .line 299
    .end local v2    # "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .end local v3    # "ret":I
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uninstall failed, unknown category:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    return-void

    :pswitch_data_0
    .packed-switch -0x3ea
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$dump$6(Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "category"    # Ljava/lang/String;

    .line 319
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getCategory(Ljava/lang/String;)I

    move-result v0

    .line 320
    .local v0, "categoryInt":I
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppListManagerMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    .line 322
    .local v1, "appManager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    if-nez v1, :cond_0

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed, unknown category:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    return-void

    .line 326
    :cond_0
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->dumpAllApps(Ljava/io/PrintWriter;)V

    .line 327
    return-void
.end method

.method static synthetic lambda$getAppInfoWithCategory$7(Ljava/lang/String;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 597
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getAppInfoWithCategory$8(Ljava/lang/String;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 605
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getAppInfos$10(I)[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 1
    .param p0, "x$0"    # I

    .line 621
    new-array v0, p0, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    return-object v0
.end method

.method static synthetic lambda$getAppInfos$9(Ljava/lang/String;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 620
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$init$1(Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public static synthetic lambda$onAppEvent$0(Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "infos"    # [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p3, "params"    # [Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->handleAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method private setAppAuth([Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "auth"    # I

    .line 663
    if-eqz p1, :cond_1

    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 668
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->setAppAuth([Ljava/lang/String;I)I

    move-result v0

    .line 670
    .local v0, "ret":I
    return v0

    .line 664
    .end local v0    # "ret":I
    :cond_1
    :goto_0
    const/16 v0, -0x3ea

    return v0
.end method

.method private specialPkgToAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 913
    const/4 v0, 0x0

    .line 914
    .local v0, "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    const/4 v1, 0x0

    .line 915
    .local v1, "manager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppListManagerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    .line 916
    .local v3, "m":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    invoke-virtual {v3, p1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->realPkgNameMatch(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 917
    move-object v1, v3

    .line 918
    goto :goto_1

    .line 920
    .end local v3    # "m":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    :cond_0
    goto :goto_0

    .line 921
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 922
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->getSpecialAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v0

    .line 923
    if-eqz v0, :cond_2

    .line 924
    const-string v2, "ApplistManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "specialPkgToAppInfo,match pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",manager="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    return-object v0

    .line 928
    :cond_2
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->getRunningAppInfo()Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v0

    .line 930
    :cond_3
    const-string v2, "ApplistManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "specialPkgToAppInfo,pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",manager="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    return-object v0
.end method

.method private updateAppIdMap([Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V
    .locals 5
    .param p1, "infos"    # [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 907
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 908
    .local v2, "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    sget-object v3, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppIdMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    .end local v2    # "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 910
    :cond_0
    return-void
.end method

.method private updateAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;I)I
    .locals 4
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p2, "pid"    # I

    .line 480
    const/4 v0, 0x0

    .line 482
    .local v0, "ret":I
    if-nez p1, :cond_0

    .line 483
    const/16 v0, -0x3ea

    goto :goto_0

    .line 485
    :cond_0
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppListManagerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getCategory()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    .line 486
    .local v1, "manager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    if-nez v1, :cond_1

    .line 487
    const/16 v0, -0x3eb

    goto :goto_0

    .line 489
    :cond_1
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->updateAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I

    move-result v0

    .line 493
    .end local v1    # "manager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    :goto_0
    const-string v1, "ApplistManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAppInfo,app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 493
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump ApplistManagerServer,args="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;-><init>()V

    .line 259
    .local v0, "helper":Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;
    new-instance v1, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$1uwANYLkLcxZwgYmv4sMlljejYU;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$1uwANYLkLcxZwgYmv4sMlljejYU;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->registerIdmapCommand(Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$NoParamCommandExecutor;)V

    .line 265
    new-instance v1, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$gyj-ZAJuye7C3hPyLYQpOmzxiz0;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$gyj-ZAJuye7C3hPyLYQpOmzxiz0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->registerListCategoryCommand(Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$NoParamCommandExecutor;)V

    .line 270
    new-instance v1, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$iSfly4QCztco1xsm51igv7aZjNc;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$iSfly4QCztco1xsm51igv7aZjNc;-><init>(Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->registerInstallCommand(Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$TwoParamsCommandExecutor;)V

    .line 294
    new-instance v1, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$1Q-TlwQjqy5GFyGgK41AL1UXmis;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$1Q-TlwQjqy5GFyGgK41AL1UXmis;-><init>(Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->registerUninstallCommand(Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$TwoParamsCommandExecutor;)V

    .line 318
    new-instance v1, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$Acmi2u_7-iWpf9gBq6A52TTh_gE;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$Acmi2u_7-iWpf9gBq6A52TTh_gE;-><init>(Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->registerListCategoryAppsCommand(Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$OneParamCommandExecutor;)V

    .line 329
    invoke-virtual {v0, p2, p1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->parse([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 330
    return-void
.end method

.method public getAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    .line 579
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 580
    .local v0, "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    if-nez v0, :cond_0

    .line 581
    const-string v1, "ApplistManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppInfo null for appId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const/4 v1, 0x0

    return-object v1

    .line 584
    :cond_0
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

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v0, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 400
    return-object v0
.end method

.method public getAppInfoList(I)Ljava/util/List;
    .locals 5
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppListManagerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    .line 413
    .local v1, "manager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    if-eqz v1, :cond_1

    .line 414
    const/16 v2, 0xc

    if-eq p1, v2, :cond_0

    .line 419
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->getAppInfoList()Ljava/util/List;

    move-result-object v0

    .line 420
    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->getAppInfoListWithCategory(I)Ljava/util/List;

    move-result-object v0

    .line 417
    goto :goto_0

    .line 423
    :cond_1
    const-string v2, "ApplistManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppInfoList,null manager for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getCategoryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :goto_0
    return-object v0
.end method

.method public getAppInfoList(II)Ljava/util/List;
    .locals 5
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

    .line 437
    const-string v0, "ApplistManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppInfoList,category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",screenId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const/4 v0, 0x0

    .line 439
    .local v0, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppListManagerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    .line 440
    .local v1, "manager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    if-eqz v1, :cond_1

    .line 441
    const/16 v2, 0xc

    if-eq p1, v2, :cond_0

    .line 446
    invoke-virtual {v1, p2}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->getAppInfoList(I)Ljava/util/List;

    move-result-object v0

    .line 447
    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {v1, p1, p2}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->getAppInfoListWithCategory(II)Ljava/util/List;

    move-result-object v0

    .line 444
    goto :goto_0

    .line 450
    :cond_1
    const-string v2, "ApplistManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppInfoList,null manager for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getCategoryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :goto_0
    return-object v0
.end method

.method public getAppInfoWithCategory(ILjava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 6
    .param p1, "category"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 588
    const/4 v0, 0x0

    .line 589
    .local v0, "result":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->specialPkgToAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v0

    .line 591
    if-eqz v0, :cond_0

    .line 592
    return-object v0

    .line 594
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v1, p1, :cond_1

    .line 596
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$s5V674BYKLt88iUY0aQgauJWYUc;

    invoke-direct {v3, p2}, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$s5V674BYKLt88iUY0aQgauJWYUc;-><init>(Ljava/lang/String;)V

    .line 597
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 598
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    goto :goto_0

    .line 600
    :cond_1
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppListManagerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    .line 601
    .local v1, "manager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    if-eqz v1, :cond_2

    .line 602
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->getAppInfoListWithCategory(I)Ljava/util/List;

    move-result-object v3

    .line 603
    .local v3, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    if-eqz v3, :cond_2

    .line 604
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$RSORLshqStP7mjqwaYbbmaPKfww;

    invoke-direct {v5, p2}, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$RSORLshqStP7mjqwaYbbmaPKfww;-><init>(Ljava/lang/String;)V

    .line 605
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 606
    invoke-interface {v4}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 610
    .end local v1    # "manager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    .end local v3    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    :cond_2
    :goto_0
    const-string v1, "ApplistManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppInfoWithCategory,category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-object v0
.end method

.method public getAppInfos(Ljava/lang/String;)[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 617
    const/4 v0, 0x0

    .line 619
    .local v0, "result":[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$0NrcSQPP7v-2b2gye0sKxSB8lLM;

    invoke-direct {v2, p1}, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$0NrcSQPP7v-2b2gye0sKxSB8lLM;-><init>(Ljava/lang/String;)V

    .line 620
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$8d2bhJizKd9asU4qKcKOH9BgGe8;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$8d2bhJizKd9asU4qKcKOH9BgGe8;

    .line 621
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 622
    const-string v1, "ApplistManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppInfos with AppInfo[],packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    return-object v0
.end method

.method public getAppListManager(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, "appManager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppListManagerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    .line 742
    .local v2, "manager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    invoke-virtual {v2, p1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->underMyManagement(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 743
    move-object v0, v2

    .line 744
    goto :goto_1

    .line 746
    .end local v2    # "manager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    :cond_0
    goto :goto_0

    .line 748
    :cond_1
    :goto_1
    return-object v0
.end method

.method public getCategoryMetaData(I)Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;
    .locals 4
    .param p1, "category"    # I

    .line 375
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppListManagerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    .line 376
    .local v0, "manager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->getCategoryMetaData()Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;

    move-result-object v1

    return-object v1

    .line 379
    :cond_0
    const-string v1, "ApplistManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCategoryMetaData failed,null manager, category:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const/4 v1, 0x0

    return-object v1
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 246
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public handleAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V
    .locals 6
    .param p1, "eventType"    # I
    .param p2, "infos"    # [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p3, "params"    # [Ljava/lang/String;

    .line 126
    const-string v0, "ApplistManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAppEvent,event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",info size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    array-length v3, p2

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",data="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",mCallback="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mCallback:Lcom/xiaopeng/xuimanager/pipebus/server/IPipeBusManagerCallback;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 141
    :pswitch_0
    if-eqz p2, :cond_1

    .line 142
    array-length v0, p2

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v1, p2, v2

    .line 143
    .local v1, "ai":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    const-string v3, "ApplistManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAppEvent,event==EVENT_APP_REMOVED,next will remove appId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v3, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppIdMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .end local v1    # "ai":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 134
    :pswitch_1
    if-eqz p2, :cond_1

    .line 135
    array-length v0, p2

    :goto_2
    if-ge v2, v0, :cond_1

    aget-object v1, p2, v2

    .line 136
    .restart local v1    # "ai":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    sget-object v3, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppIdMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .end local v1    # "ai":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 130
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->updateAppIdMap([Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V

    .line 131
    return-void

    .line 152
    :cond_1
    :goto_3
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mLocalAppEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mLocalAppEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    .line 154
    .local v1, "listener":Lcom/xiaopeng/xuimanager/applist/AppEventListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 155
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/applist/AppEventListener;
    goto :goto_4

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mCallback:Lcom/xiaopeng/xuimanager/pipebus/server/IPipeBusManagerCallback;

    if-eqz v0, :cond_5

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "pc":Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;
    if-nez p2, :cond_3

    if-eqz p3, :cond_4

    .line 161
    :cond_3
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    move-object v0, v1

    .line 162
    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 163
    invoke-virtual {v0, p3}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    .line 165
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mCallback:Lcom/xiaopeng/xuimanager/pipebus/server/IPipeBusManagerCallback;

    sget-object v2, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->MODULE_NAME:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaopeng/xuimanager/pipebus/server/IPipeBusManagerCallback;->onPipeBusParcelEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)V

    .line 167
    .end local v0    # "pc":Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()I
    .locals 2

    .line 176
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->MODULE_NAME:Ljava/lang/String;

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$1ssoJYVMbTOQb6GI2xQndB_iOpg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$1ssoJYVMbTOQb6GI2xQndB_iOpg;-><init>(Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 179
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->initManagers()V

    .line 181
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;->init()V

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public installApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 4
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 675
    const/4 v0, 0x0

    .line 677
    .local v0, "ret":I
    if-nez p1, :cond_0

    .line 678
    const/16 v0, -0x3ea

    goto :goto_0

    .line 680
    :cond_0
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppListManagerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getCategory()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    .line 681
    .local v1, "manager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    if-nez v1, :cond_1

    .line 682
    const/16 v0, -0x3eb

    goto :goto_0

    .line 684
    :cond_1
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->installApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I

    move-result v0

    .line 688
    .end local v1    # "manager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    :goto_0
    const-string v1, "ApplistManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installApp,app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    return v0
.end method

.method public ioControl(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public ioControlWithParcelable(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;II)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "dataIn"    # Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;
    .param p3, "dataOut"    # Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;
    .param p4, "uid"    # I
    .param p5, "pid"    # I

    .line 230
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->handleIoControlWithParcelable(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .local v0, "ret":I
    goto :goto_0

    .line 231
    .end local v0    # "ret":I
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ApplistManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ioControlWithParcelable e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/16 v0, -0x3e8

    .line 236
    .local v0, "ret":I
    :goto_0
    return v0
.end method

.method public ioControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "pid"    # I

    .line 211
    const-string v0, "ApplistManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControlWithPocket,cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public notifyAppEvent(II[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)I
    .locals 1
    .param p1, "category"    # I
    .param p2, "eventType"    # I
    .param p3, "info"    # [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p4, "params"    # [Ljava/lang/String;

    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V
    .locals 3
    .param p1, "eventType"    # I
    .param p2, "infos"    # [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p3, "params"    # [Ljava/lang/String;

    monitor-enter p0

    .line 118
    :try_start_0
    const-string v0, "ApplistManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppEvent,event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",info size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    array-length v2, p2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mCallback:Lcom/xiaopeng/xuimanager/pipebus/server/IPipeBusManagerCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->onAppEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$hTSl0Sp3lhasX78ZpPf9Ey4aias;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$hTSl0Sp3lhasX78ZpPf9Ey4aias;-><init>(Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 117
    .end local p1    # "eventType":I
    .end local p2    # "infos":[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .end local p3    # "params":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;
    throw p1
.end method

.method public onClientDied(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 349
    const-string v0, "ApplistManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClientDied,pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public registerAppEventListener(Lcom/xiaopeng/xuimanager/applist/AppEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    .line 718
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mLocalAppEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 719
    return-void
.end method

.method public registerListener(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 360
    const-string v0, "ApplistManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener,pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public resetAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 506
    const/4 v0, 0x0

    return v0
.end method

.method public startApp(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "extra"    # Landroid/os/Bundle;

    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 534
    .local v1, "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    const/4 v2, 0x0

    .line 535
    .local v2, "startType":I
    if-eqz p2, :cond_1

    .line 537
    const-string v3, "startType"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 538
    const-string v3, "ApplistManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startApp,special start type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 542
    :cond_0
    new-instance v4, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-direct {v4}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;-><init>()V

    move-object v1, v4

    .line 543
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setPkgName(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setCategory(I)V

    .line 545
    nop

    .line 551
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 552
    sget-object v3, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppIdMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 555
    :cond_2
    if-nez v1, :cond_3

    .line 556
    const/16 v0, -0x3ea

    goto :goto_1

    .line 558
    :cond_3
    sget-object v3, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppListManagerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getCategory()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    .line 559
    .local v3, "manager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    if-nez v3, :cond_4

    .line 560
    const/16 v0, -0x3eb

    goto :goto_1

    .line 562
    :cond_4
    invoke-virtual {v3, v1, p2}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->startApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Landroid/os/Bundle;)I

    move-result v0

    .line 566
    .end local v3    # "manager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    :goto_1
    const-string v3, "ApplistManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startApp,appId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 568
    return v0
.end method

.method public unRegisterAppEventListener(Lcom/xiaopeng/xuimanager/applist/AppEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    .line 728
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mLocalAppEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 729
    return-void
.end method

.method public unRegisterListener(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 371
    const-string v0, "ApplistManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterListener,pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public uninstallApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 4
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 694
    const/4 v0, 0x0

    .line 696
    .local v0, "ret":I
    if-nez p1, :cond_0

    .line 697
    const/16 v0, -0x3ea

    goto :goto_0

    .line 699
    :cond_0
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->mAppListManagerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getCategory()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    .line 700
    .local v1, "manager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    if-nez v1, :cond_1

    .line 701
    const/16 v0, -0x3eb

    goto :goto_0

    .line 703
    :cond_1
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->uninstallApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I

    move-result v0

    .line 707
    .end local v1    # "manager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    :goto_0
    const-string v1, "ApplistManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uninstallApp,app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    return v0
.end method

.method public updateAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public updateApplist(ILjava/util/List;)I
    .locals 1
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;)I"
        }
    .end annotation

    .line 465
    .local p2, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    const/4 v0, 0x0

    return v0
.end method
