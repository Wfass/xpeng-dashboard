.class public Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;
.super Ljava/lang/Object;
.source "XAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ActivityChangedListener;,
        Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$BasePackageInfo;,
        Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageStatusListener;,
        Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;,
        Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageCallback;,
        Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$DefinePackageMonitor;,
        Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$InstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XAppManagerService"

.field private static sCurrentPackage:Ljava/lang/String;


# instance fields
.field private curApp:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;

.field private mActivityChangeInfoSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ActivityChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityManager:Landroid/app/IActivityManager;

.field private mAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBasePackageInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$BasePackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLastPackagePidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private final mLock:Ljava/lang/Object;

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mPackageManagerApi:Landroid/content/pm/PackageManager;

.field private mPackageMonitor:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$DefinePackageMonitor;

.field private mPackageNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedActivities:[Ljava/lang/String;

.field private mSharedPackageInfoArray:[Lcom/xiaopeng/app/xpPackageInfo;

.field private mSharedPackageStartTimes:[J

.field private mSharedPackages:[Ljava/lang/String;

.field private mUserManager:Landroid/os/UserManager;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowStatusCallback:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;

.field private mXAppBIHandler:Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;

.field private mXAppService:Lcom/xiaopeng/xuiservice/xapp/XAppService;

.field private mXMiniProgService:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

.field private mXpDialogInfoArray:[Lcom/xiaopeng/app/xpDialogInfo;

.field private sCurrentPackageStartTime:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mActivityHistoryList:Ljava/util/ArrayList;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->curApp:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->sCurrentPackageStartTime:J

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mBasePackageInfoList:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mActivityChangedListeners:Ljava/util/List;

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mActivityChangeInfoSparseArray:Landroid/util/SparseArray;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mLastPackagePidMap:Ljava/util/Map;

    .line 103
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1056
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$7;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$7;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mWindowStatusCallback:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;

    .line 138
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mContext:Landroid/content/Context;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mAppInfoList:Ljava/util/List;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageNameMap:Ljava/util/Map;

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mWindowManager:Landroid/view/WindowManager;

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mUserManager:Landroid/os/UserManager;

    .line 144
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->initActivityManager()V

    .line 145
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->initPackageManager()V

    .line 146
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->loadLocalDataAsync()V

    .line 147
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->loadAndSyncAllXpPackageInfo()V

    .line 148
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->addIgOnStatusListener()V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageStatusListeners:Ljava/util/List;

    .line 150
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->registerScreenEvent()V

    .line 151
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mXAppBIHandler:Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$1;

    .line 71
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;
    .param p1, "x1"    # I

    .line 71
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->refreshDialogInfo(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageStatusListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageNameMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mBasePackageInfoList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;ILcom/xiaopeng/app/xpPackageInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->notifyPackageInfoChanged(ILcom/xiaopeng/app/xpPackageInfo;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mActivityChangeInfoSparseArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    .line 71
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->handleAppResume(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mXAppBIHandler:Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->handleKaraokeApp()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/UserHandle;

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->addAllApp(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mAppInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->addAppToMap(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private addAllApp(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 876
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .local p2, "outList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    .line 877
    .local v1, "info":Landroid/content/pm/LauncherActivityInfo;
    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;

    invoke-direct {v2, v1}, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;)V

    .line 878
    .local v2, "appInfo":Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    .end local v1    # "info":Landroid/content/pm/LauncherActivityInfo;
    .end local v2    # "appInfo":Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;
    goto :goto_0

    .line 880
    :cond_0
    return-void
.end method

.method private addAppToMap(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "pn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 833
    .local p2, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageNameMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 836
    :cond_0
    const-string v0, "XAppManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info list is null with package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :goto_0
    return-void
.end method

.method private addIgOnStatusListener()V
    .locals 2

    .line 176
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$3;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 190
    return-void
.end method

.method private clearPidData()V
    .locals 2

    .line 1016
    const-string v0, "XAppManagerService"

    const-string v1, "IG_OFF: clearPidData"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mLastPackagePidMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1018
    return-void
.end method

.method private closeApp()V
    .locals 0

    .line 541
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->startHome()V

    .line 542
    return-void
.end method

.method private convertToAppRecord(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;
    .locals 5
    .param p1, "activityInfo"    # Ljava/lang/String;

    .line 225
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;-><init>()V

    .line 227
    .local v0, "record":Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "packageName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;->access$402(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    const-string v2, "privateFlags"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;->mFlag:I

    .line 230
    const-string v2, "fullscreen"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;->mIsFullscreen:Z

    .line 231
    iget v2, v0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;->mFlag:I

    const/16 v3, 0x100

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;->mIsPanel:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_1

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XAppManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertToAppRecord error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method private getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;
    .locals 1

    .line 129
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$InstanceHolder;->access$100()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v0

    return-object v0
.end method

.method private getKaraokePkgInScreen(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "info"    # Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    .line 919
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 920
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    .line 921
    .local v1, "activityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getXpPackageInfo()Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 922
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getXpPackageInfo()Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v2

    iget v2, v2, Lcom/xiaopeng/app/xpPackageInfo;->appType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 923
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 925
    .end local v1    # "activityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    :cond_0
    goto :goto_0

    .line 927
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "activityName"    # Ljava/lang/String;

    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 301
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 303
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private getPid(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 999
    const/4 v0, -0x1

    .line 1001
    .local v0, "pid":I
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 1002
    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 1003
    .local v1, "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1004
    .local v3, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1005
    iget v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move v0, v2

    .line 1006
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1008
    .end local v3    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 1011
    .end local v1    # "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    goto :goto_1

    .line 1009
    :catch_0
    move-exception v1

    .line 1010
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v2, "XAppManagerService"

    const-string v3, "getPid failed"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    .end local v1    # "exception":Landroid/os/RemoteException;
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleAppResume(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    .line 1029
    if-nez p1, :cond_0

    .line 1030
    return-void

    .line 1033
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v0

    .line 1034
    .local v0, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1035
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    .line 1036
    .local v2, "activityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getAreaType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "secondary"

    if-eq v3, v4, :cond_2

    .line 1037
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_1

    .line 1038
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    move-result-object v1

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getXpPackageInfo()Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppOnResume(Lcom/xiaopeng/app/xpPackageInfo;)V

    .line 1040
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getDisplayId()I

    move-result v1

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getXpPackageInfo()Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->notifyPackageInfoChanged(ILcom/xiaopeng/app/xpPackageInfo;)V

    .line 1041
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getDisplayId()I

    move-result v1

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->handleAppTipsStatus(ILjava/lang/String;)V

    .line 1042
    return-void

    .line 1044
    .end local v2    # "activityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    :cond_2
    goto :goto_0

    .line 1046
    :cond_3
    return-void
.end method

.method private handleAppTipsStatus(ILjava/lang/String;)V
    .locals 2
    .param p1, "screenId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 809
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 810
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->getInstance()Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->queryAppOnlineStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 811
    .local v0, "status":I
    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->isNewApplication(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 812
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->showAppTipsStatusDialog(ILjava/lang/String;)V

    goto :goto_0

    .line 814
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->dismissAppTipsStatusDialog(Ljava/lang/String;)V

    .line 817
    .end local v0    # "status":I
    :cond_1
    :goto_0
    return-void
.end method

.method private handleAppUseDataLog(Ljava/lang/String;)V
    .locals 6
    .param p1, "newPkgName"    # Ljava/lang/String;

    .line 470
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->sCurrentPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->sCurrentPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 473
    .local v0, "endTime":J
    sget-object v2, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->sCurrentPackage:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "appName":Ljava/lang/String;
    sget-object v3, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->sCurrentPackage:Ljava/lang/String;

    iget-wide v4, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->sCurrentPackageStartTime:J

    .line 475
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 474
    invoke-static {v2, v3, v4, v5}, Lcom/xiaopeng/xuiservice/xapp/util/XAppBiLogUtil;->sendAppUseDataLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    .end local v0    # "endTime":J
    .end local v2    # "appName":Ljava/lang/String;
    :cond_0
    sput-object p1, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->sCurrentPackage:Ljava/lang/String;

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->sCurrentPackageStartTime:J

    .line 480
    :cond_1
    return-void
.end method

.method private handleKaraokeApp()V
    .locals 5

    .line 903
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mActivityChangeInfoSparseArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    .line 904
    .local v0, "primaryInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mActivityChangeInfoSparseArray:Landroid/util/SparseArray;

    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getSubScreenDeviceId()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    .line 905
    .local v1, "secondInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->isKaraokeInScreen(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->isKaraokeInScreen(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->setMicEnable(Z)V

    .line 906
    return-void
.end method

.method private handlePanelActivity()V
    .locals 7

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->curApp:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;

    if-eqz v0, :cond_3

    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->curApp:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;

    iget-boolean v0, v0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;->mIsFullscreen:Z

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->curApp:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;->getName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManager;->getScreenId(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v1

    .line 508
    .local v1, "sharedId":I
    if-eqz v1, :cond_0

    return-void

    .line 509
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 510
    .local v2, "am":Landroid/app/ActivityManager;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/content/pm/IPackageManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v3

    .line 511
    .local v3, "info":Lcom/xiaopeng/app/xpPackageInfo;
    if-eqz v3, :cond_1

    .line 512
    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 518
    :cond_1
    const-string v4, "XAppManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlePanelActivity activity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->curApp:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;->access$500(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->curApp:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;

    iget-object v6, v6, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v1    # "sharedId":I
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v3    # "info":Lcom/xiaopeng/app/xpPackageInfo;
    :cond_2
    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 523
    :cond_3
    :goto_0
    return-void
.end method

.method private handleSharedAppUseDataLog([Ljava/lang/String;)V
    .locals 7
    .param p1, "pkgNames"    # [Ljava/lang/String;

    .line 794
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 795
    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mSharedPackages:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 796
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mSharedPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 797
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 798
    .local v1, "endTime":J
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mSharedPackages:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 799
    .local v3, "appName":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mSharedPackages:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mSharedPackageStartTimes:[J

    aget-wide v5, v5, v0

    .line 800
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 799
    invoke-static {v3, v4, v5, v6, v0}, Lcom/xiaopeng/xuiservice/xapp/util/XAppBiLogUtil;->sendSharedAppUseDataLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 802
    .end local v1    # "endTime":J
    .end local v3    # "appName":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mSharedPackages:[Ljava/lang/String;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 803
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mSharedPackageStartTimes:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 794
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 806
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private hasPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 864
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 865
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 864
    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 866
    :catch_0
    move-exception v1

    .line 868
    return v0
.end method

.method private initActivityManager()V
    .locals 2

    .line 828
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 829
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 830
    return-void
.end method

.method private initPackageManager()V
    .locals 5

    .line 820
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 821
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 822
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageManagerApi:Landroid/content/pm/PackageManager;

    .line 823
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$DefinePackageMonitor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$DefinePackageMonitor;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$1;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageMonitor:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$DefinePackageMonitor;

    .line 824
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageMonitor:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$DefinePackageMonitor;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$DefinePackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 825
    return-void
.end method

.method private isComponentValid(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 858
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 859
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 858
    :goto_0
    return v0
.end method

.method private isKaraokeInScreen(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    .line 931
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 932
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    .line 933
    .local v1, "activityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getXpPackageInfo()Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 934
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getXpPackageInfo()Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v2

    iget v2, v2, Lcom/xiaopeng/app/xpPackageInfo;->appType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 935
    const/4 v0, 0x1

    return v0

    .line 937
    .end local v1    # "activityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    :cond_0
    goto :goto_0

    .line 939
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isNewApplication(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 987
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mLastPackagePidMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 988
    .local v0, "mLastPid":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getPid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 989
    .local v1, "mCurrentPid":Ljava/lang/String;
    const-string v2, "XAppManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mLastPid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " &mCurrentPid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 992
    const/4 v2, 0x0

    return v2

    .line 994
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mLastPackagePidMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    const/4 v2, 0x1

    return v2
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 532
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/Constants;->PACKAGE_SYSTEM_APPS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 533
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 534
    const/4 v0, 0x1

    return v0

    .line 532
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 537
    :cond_1
    return v2
.end method

.method public static synthetic lambda$loadLocalDataAsync$0(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V
    .locals 12

    .line 558
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mAppInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 560
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageNameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 561
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    .line 562
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 563
    .local v2, "profileCount":I
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 564
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 565
    .local v4, "user":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mLauncherApps:Landroid/content/pm/LauncherApps;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    .line 566
    .local v5, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/LauncherActivityInfo;

    .line 567
    .local v7, "info":Landroid/content/pm/LauncherActivityInfo;
    new-instance v8, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;

    invoke-direct {v8, v7}, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;)V

    .line 568
    .local v8, "appInfo":Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;
    iget-object v9, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mAppInfoList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    const-string v9, "XAppManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "title:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " &package:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 570
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 569
    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v9, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageNameMap:Ljava/util/Map;

    iget-object v10, v8, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .end local v7    # "info":Landroid/content/pm/LauncherActivityInfo;
    .end local v8    # "appInfo":Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;
    goto :goto_1

    .line 563
    .end local v4    # "user":Landroid/os/UserHandle;
    .end local v5    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 574
    .end local v3    # "p":I
    :cond_1
    const-string v3, "XAppManagerService"

    const-string v4, "load local data complete."

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .end local v1    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .end local v2    # "profileCount":I
    monitor-exit v0

    .line 576
    return-void

    .line 575
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadAndSyncAllXpPackageInfo()V
    .locals 2

    .line 883
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$6;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 900
    return-void
.end method

.method private loadLocalDataAsync()V
    .locals 1

    .line 557
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XAppManagerService$ohUPkXnXn1Wkbzej7sXAtiKqvjU;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XAppManagerService$ohUPkXnXn1Wkbzej7sXAtiKqvjU;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 577
    return-void
.end method

.method private notifyPackageInfoChanged(ILcom/xiaopeng/app/xpPackageInfo;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "info"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 1049
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mActivityChangedListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mActivityChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mActivityChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ActivityChangedListener;

    .line 1051
    .local v1, "listener":Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ActivityChangedListener;
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ActivityChangedListener;->onTopActivityChanged(ILcom/xiaopeng/app/xpPackageInfo;)V

    .line 1052
    .end local v1    # "listener":Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ActivityChangedListener;
    goto :goto_0

    .line 1054
    :cond_0
    return-void
.end method

.method private refreshDialogInfo(I)V
    .locals 6
    .param p1, "displayId"    # I

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "topOnly"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    const-string v1, "screenId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    const/4 v1, 0x0

    .line 120
    .local v1, "dialog":Lcom/xiaopeng/app/xpDialogInfo;
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManager;->getService()Lcom/xiaopeng/screen/IScreenTaskManager;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Lcom/xiaopeng/screen/IScreenTaskManager;->getTopDialog(ILandroid/os/Bundle;)Lcom/xiaopeng/app/xpDialogInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 122
    goto :goto_0

    .line 121
    :catch_0
    move-exception v2

    .line 123
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaopeng/app/xpDialogInfo;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const-string v2, "null"

    .line 124
    .local v2, "dialogInfo":Ljava/lang/String;
    :goto_1
    const-string v3, "XAppManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshDialogInfo displayId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " top dialog is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mXpDialogInfoArray:[Lcom/xiaopeng/app/xpDialogInfo;

    aput-object v1, v3, p1

    .line 126
    return-void
.end method

.method private registerDialogReceiver()V
    .locals 3

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.xiaopeng.intent.action.XUI_DIALOG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    return-void
.end method

.method private registerPassengerBtStatus()V
    .locals 2

    .line 165
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->registerListener(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;)V

    .line 173
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 526
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 527
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.xiaopeng.intent.action.ACTIVITY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 529
    return-void
.end method

.method private registerScreenEvent()V
    .locals 2

    .line 155
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mWindowStatusCallback:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->addWindowStatusCallback(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;)V

    .line 156
    return-void
.end method

.method private startHome()V
    .locals 4

    .line 546
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 550
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XAppManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startHomePackage e= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public checkAppInstalled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 442
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->isSystemApp(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 443
    return v1

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;

    .line 446
    .local v0, "appInfo":Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public checkTopApp(Ljava/lang/String;)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getTopPackage(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "primaryPkgName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    return v0

    .line 248
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getTopPackage(I)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "secondPkgName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    return v0

    .line 253
    .end local v2    # "secondPkgName":Ljava/lang/String;
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public closeCancelableDialog()V
    .locals 5

    .line 580
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getShowDialog()Lcom/xiaopeng/app/xpDialogInfo;

    move-result-object v0

    .line 581
    .local v0, "dinfo":Lcom/xiaopeng/app/xpDialogInfo;
    if-eqz v0, :cond_1

    .line 583
    :try_start_0
    iget-object v1, v0, Lcom/xiaopeng/app/xpDialogInfo;->packageName:Ljava/lang/String;

    .line 584
    .local v1, "packageName":Ljava/lang/String;
    iget-boolean v2, v0, Lcom/xiaopeng/app/xpDialogInfo;->hasFocus:Z

    .line 585
    .local v2, "hasFocus":Z
    iget-boolean v3, v0, Lcom/xiaopeng/app/xpDialogInfo;->closeOutside:Z

    .line 586
    .local v3, "outsideTouchCancelable":Z
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 587
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "hasFocus":Z
    .end local v3    # "outsideTouchCancelable":Z
    :cond_0
    goto :goto_0

    .line 589
    :catch_0
    move-exception v1

    .line 590
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 593
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public closeMiniProg()V
    .locals 0

    .line 779
    return-void
.end method

.method public dismissDialog(I)V
    .locals 3
    .param p1, "screenId"    # I

    .line 375
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XAppManagerService"

    const-string v2, "dismissDialog failed"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public dismissDialogAsync(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 342
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$4;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$4;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 354
    return-void
.end method

.method public dismissDialogAsync(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extra"    # Landroid/os/Bundle;

    .line 357
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$5;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$5;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 366
    return-void
.end method

.method public exitApplet(Ljava/lang/String;)V
    .locals 1
    .param p1, "appletId"    # Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mXMiniProgService:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mXMiniProgService:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->exitApp(Ljava/lang/String;)V

    .line 433
    :cond_0
    return-void
.end method

.method public getActivityWindowLevel(Landroid/content/ComponentName;)I
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 842
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->isComponentValid(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v2, 0x80

    .line 844
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 843
    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 845
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 846
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    const-string v2, "android.permission.SUPER_APPLICATION_RUNNING"

    .line 847
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 846
    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->hasPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 848
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "window_level"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 853
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    goto :goto_0

    .line 852
    :catch_0
    move-exception v1

    .line 854
    :goto_0
    return v0
.end method

.method public getAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;

    return-object v0
.end method

.method public getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 488
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageManagerApi:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_1

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageManagerApi:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 491
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 492
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageManagerApi:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 497
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 496
    const-string v1, "XAppManagerService"

    const-string v2, "getAppName failed"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getAppType(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 596
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mBasePackageInfoList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$BasePackageInfo;

    .line 597
    .local v0, "basePackageInfo":Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$BasePackageInfo;
    if-eqz v0, :cond_0

    .line 598
    iget v1, v0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$BasePackageInfo;->appType:I

    return v1

    .line 600
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getCurApp()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->curApp:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;

    return-object v0
.end method

.method public getCurAppRecord(I)Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;
    .locals 1
    .param p1, "displayId"    # I

    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentMiniAppStatus(Ljava/lang/String;)I
    .locals 1
    .param p1, "ali_id"    # Ljava/lang/String;

    .line 483
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mXAppService:Lcom/xiaopeng/xuiservice/xapp/XAppService;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mXAppService:Lcom/xiaopeng/xuiservice/xapp/XAppService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppService;->getCurrentMiniAppStatus(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 483
    :goto_0
    return v0
.end method

.method public getInstalledAppList(I)Ljava/util/List;
    .locals 6
    .param p1, "appType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mAppInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;

    .line 606
    .local v2, "appInfo":Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 607
    .local v3, "packgaeName":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mBasePackageInfoList:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$BasePackageInfo;

    .line 608
    .local v4, "basePackageInfo":Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$BasePackageInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$BasePackageInfo;->appType:I

    if-ne v5, p1, :cond_0

    .line 609
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    .end local v2    # "appInfo":Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;
    .end local v3    # "packgaeName":Ljava/lang/String;
    .end local v4    # "basePackageInfo":Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$BasePackageInfo;
    :cond_0
    goto :goto_0

    .line 612
    :cond_1
    return-object v0
.end method

.method public getKaraokePkgForeground(I)Ljava/lang/String;
    .locals 2
    .param p1, "screenId"    # I

    .line 914
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mActivityChangeInfoSparseArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    .line 915
    .local v0, "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getKaraokePkgInScreen(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLauncherIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1021
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageManagerApi:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageManagerApi:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1023
    .local v0, "intent":Landroid/content/Intent;
    return-object v0

    .line 1025
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModeStatus(I)Landroid/os/Bundle;
    .locals 1
    .param p1, "displayId"    # I

    .line 369
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 370
    .local v0, "extra":Landroid/os/Bundle;
    return-object v0
.end method

.method public getPackageAreaType(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "screenId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 261
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getTopActivityInfo(I)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    move-result-object v0

    .line 262
    .local v0, "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 263
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    .line 264
    .local v2, "xAppActivityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getAreaType()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 267
    .end local v2    # "xAppActivityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    :cond_0
    goto :goto_0

    .line 269
    :cond_1
    const-string v1, ""

    return-object v1
.end method

.method public getShowDialog()Lcom/xiaopeng/app/xpDialogInfo;
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mActivityManager:Landroid/app/IActivityManager;

    if-nez v0, :cond_0

    .line 321
    const/4 v0, 0x0

    return-object v0

    .line 323
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getTopDialogInfo(I)Lcom/xiaopeng/app/xpDialogInfo;

    move-result-object v0

    return-object v0
.end method

.method public getShowDialog(I)Lcom/xiaopeng/app/xpDialogInfo;
    .locals 1
    .param p1, "screenId"    # I

    .line 327
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getTopDialogInfo(I)Lcom/xiaopeng/app/xpDialogInfo;

    move-result-object v0

    return-object v0
.end method

.method public getShowDialogByWms(I)Lcom/xiaopeng/app/xpDialogInfo;
    .locals 3
    .param p1, "displayId"    # I

    .line 332
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 333
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "topOnly"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 334
    const-string v1, "screenId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 335
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManager;->getService()Lcom/xiaopeng/screen/IScreenTaskManager;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/xiaopeng/screen/IScreenTaskManager;->getTopDialog(ILandroid/os/Bundle;)Lcom/xiaopeng/app/xpDialogInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 336
    .end local v0    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 338
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTopActivityInfo(I)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    .locals 1
    .param p1, "screenId"    # I

    .line 273
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getTopActivityInfo(I)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTopPackage(I)Ljava/lang/String;
    .locals 1
    .param p1, "screenId"    # I

    .line 257
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getTopPrimaryPackage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopPrimaryActivityInfo(I)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    .locals 5
    .param p1, "screenId"    # I

    .line 277
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getTopActivityInfo(I)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    move-result-object v0

    .line 278
    .local v0, "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 279
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    .line 280
    .local v2, "xAppActivityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    const-string v3, "secondary"

    .line 281
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getAreaType()Ljava/lang/String;

    move-result-object v4

    .line 280
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 282
    return-object v2

    .line 284
    .end local v2    # "xAppActivityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    :cond_0
    goto :goto_0

    .line 286
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTopPrimaryPackage(I)Ljava/lang/String;
    .locals 2
    .param p1, "screenId"    # I

    .line 290
    const-string v0, ""

    .line 291
    .local v0, "primaryPackage":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getTopPrimaryActivityInfo(I)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    move-result-object v1

    .line 292
    .local v1, "xAppActivityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    .line 295
    :cond_0
    return-object v0
.end method

.method public getXpPackageInfo(I)Lcom/xiaopeng/app/xpPackageInfo;
    .locals 2
    .param p1, "displayId"    # I

    .line 789
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getTopPrimaryPackage(I)Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, "pkgName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v1

    return-object v1
.end method

.method public getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 711
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 712
    return-object v1

    .line 714
    :cond_0
    move-object v0, v1

    .line 716
    .local v0, "info":Lcom/xiaopeng/app/xpPackageInfo;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 719
    goto :goto_0

    .line 717
    :catch_0
    move-exception v1

    .line 718
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XAppManagerService"

    const-string v3, "getXpPackageInfo failed"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public isAppSupportScreen(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "screenId"    # I

    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, "appInfo":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getAppListManager(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    move-result-object v1

    .line 452
    .local v1, "appListManager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 453
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->getRunningApp()Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v0

    .line 454
    const-string v3, "XAppManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAppSupportScreen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getAppInfoWithCategory(ILjava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v0

    .line 457
    if-nez v0, :cond_1

    .line 458
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getAppInfoWithCategory(ILjava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v0

    .line 461
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 462
    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getScreenShow(I)I

    move-result v3

    if-ne v3, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 463
    .local v2, "ret":Z
    :goto_1
    const-string v3, "XAppManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAppSupportScreen screenId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return v2

    .line 466
    .end local v2    # "ret":Z
    :cond_3
    return v2
.end method

.method public isHaveNotCancelableDialog()Z
    .locals 6

    .line 382
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getShowDialog()Lcom/xiaopeng/app/xpDialogInfo;

    move-result-object v0

    .line 383
    .local v0, "xpDialogInfo":Lcom/xiaopeng/app/xpDialogInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 385
    :try_start_0
    iget-boolean v2, v0, Lcom/xiaopeng/app/xpDialogInfo;->closeOutside:Z

    .line 386
    .local v2, "outsideTouchCancelable":Z
    const-string v3, "XAppManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialog json is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-boolean v3, v0, Lcom/xiaopeng/app/xpDialogInfo;->hasFocus:Z

    if-eqz v3, :cond_3

    const-string v3, "com.alipay.arome.app"

    iget-object v4, v0, Lcom/xiaopeng/app/xpDialogInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 390
    :cond_0
    iget-boolean v3, v0, Lcom/xiaopeng/app/xpDialogInfo;->closeOutside:Z

    if-eqz v3, :cond_1

    .line 391
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :cond_1
    if-nez v2, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1

    .line 388
    :cond_3
    :goto_0
    return v1

    .line 394
    .end local v2    # "outsideTouchCancelable":Z
    :catch_0
    move-exception v2

    .line 395
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 398
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    return v1
.end method

.method public isHaveNotCancelableDialog(I)Z
    .locals 7
    .param p1, "displayId"    # I

    .line 402
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 403
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "topOnly"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 404
    const-string v1, "screenId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 405
    const/4 v1, 0x0

    .line 407
    .local v1, "dialog":Lcom/xiaopeng/app/xpDialogInfo;
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManager;->getService()Lcom/xiaopeng/screen/IScreenTaskManager;

    move-result-object v3

    invoke-interface {v3, p1, v0}, Lcom/xiaopeng/screen/IScreenTaskManager;->getTopDialog(ILandroid/os/Bundle;)Lcom/xiaopeng/app/xpDialogInfo;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 409
    goto :goto_0

    .line 408
    :catch_0
    move-exception v3

    .line 410
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaopeng/app/xpDialogInfo;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v3, "null"

    .line 411
    .local v3, "dialogInfo":Ljava/lang/String;
    :goto_1
    const-string v4, "XAppManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get screen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " top dialog is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    if-eqz v1, :cond_2

    iget-boolean v4, v1, Lcom/xiaopeng/app/xpDialogInfo;->hasFocus:Z

    if-eqz v4, :cond_2

    iget-boolean v4, v1, Lcom/xiaopeng/app/xpDialogInfo;->visible:Z

    if-eqz v4, :cond_2

    .line 413
    iget-boolean v4, v1, Lcom/xiaopeng/app/xpDialogInfo;->closeOutside:Z

    if-eqz v4, :cond_1

    .line 414
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->dismissDialogAsync(Landroid/os/Bundle;)V

    .line 416
    :cond_1
    iget-boolean v4, v1, Lcom/xiaopeng/app/xpDialogInfo;->closeOutside:Z

    xor-int/2addr v2, v4

    return v2

    .line 418
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public isKaraokeAppForeground(I)Z
    .locals 2
    .param p1, "screenId"    # I

    .line 909
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mActivityChangeInfoSparseArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    .line 910
    .local v0, "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->isKaraokeInScreen(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)Z

    move-result v1

    return v1
.end method

.method public isOpened(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 728
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->curApp:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;->getName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOpened(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 732
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getTopActivityInfo(I)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    move-result-object v0

    .line 733
    .local v0, "activityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 734
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    .line 735
    .local v2, "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 736
    const/4 v1, 0x1

    return v1

    .line 738
    .end local v2    # "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    :cond_0
    goto :goto_0

    .line 740
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isPanelVisible(I)Z
    .locals 2
    .param p1, "flags"    # I

    .line 312
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuperPanelActivity(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 307
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getActivityWindowLevel(Landroid/content/ComponentName;)I

    move-result v0

    .line 308
    .local v0, "currentActivityLevel":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isThirdApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 724
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSharedActivityChanged([Ljava/lang/String;[Lcom/xiaopeng/app/xpPackageInfo;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgNames"    # [Ljava/lang/String;
    .param p2, "packageInfos"    # [Lcom/xiaopeng/app/xpPackageInfo;
    .param p3, "topActivities"    # [Ljava/lang/String;

    .line 782
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mSharedPackageInfoArray:[Lcom/xiaopeng/app/xpPackageInfo;

    .line 783
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mSharedActivities:[Ljava/lang/String;

    .line 784
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->handleSharedAppUseDataLog([Ljava/lang/String;)V

    .line 785
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->handleKaraokeApp()V

    .line 786
    return-void
.end method

.method public registerActivityChangedListener(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ActivityChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ActivityChangedListener;

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mActivityChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mActivityChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_0
    return-void
.end method

.method public registerPackageStatusListener(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageStatusListener;

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_0
    return-void
.end method

.method public setIgOnStatus(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .line 744
    const-string v0, "XAppManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIgOnStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    if-eqz p1, :cond_0

    .line 746
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->sCurrentPackageStartTime:J

    goto :goto_0

    .line 747
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->sCurrentPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 748
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 749
    .local v0, "endTime":J
    sget-object v2, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->sCurrentPackage:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 750
    .local v2, "appName":Ljava/lang/String;
    sget-object v3, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->sCurrentPackage:Ljava/lang/String;

    iget-wide v4, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->sCurrentPackageStartTime:J

    .line 751
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 750
    invoke-static {v2, v3, v4, v5}, Lcom/xiaopeng/xuiservice/xapp/util/XAppBiLogUtil;->sendAppUseDataLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    .end local v0    # "endTime":J
    .end local v2    # "appName":Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 754
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->clearPidData()V

    .line 756
    :cond_2
    return-void
.end method

.method public setXAppService(Lcom/xiaopeng/xuiservice/xapp/XAppService;)V
    .locals 0
    .param p1, "xAppService"    # Lcom/xiaopeng/xuiservice/xapp/XAppService;

    .line 422
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mXAppService:Lcom/xiaopeng/xuiservice/xapp/XAppService;

    .line 423
    return-void
.end method

.method public setupWithMiniProgService(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V
    .locals 0
    .param p1, "miniProgService"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    .line 426
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mXMiniProgService:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    .line 427
    return-void
.end method

.method public startMiniProgram(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/util/Map;

    .line 436
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mXMiniProgService:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mXMiniProgService:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->startMiniProgram(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 439
    :cond_0
    return-void
.end method

.method public stopPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    goto :goto_0

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, "exception":Landroid/os/RemoteException;
    const-string v1, "XAppManagerService"

    const-string v2, "forceStopPackage failed"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unregisterActivityChangedListener(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ActivityChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ActivityChangedListener;

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mActivityChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mActivityChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 214
    :cond_0
    return-void
.end method

.method public unregisterPackageStatusListener(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageStatusListener;

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mPackageStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    return-void
.end method

.method public updateBasePackageInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "packInfo"    # Ljava/lang/String;

    .line 759
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 761
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 762
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "packages"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 763
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "gameImageUri"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 764
    .local v3, "gameImageUri":Ljava/lang/String;
    const-string v4, "XAppManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBasePackageInfo,gameImageUri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 768
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader;->preloadGameImage(Ljava/lang/String;)V

    .line 770
    :cond_0
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->mBasePackageInfoList:Ljava/util/HashMap;

    new-instance v5, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$BasePackageInfo;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "appType"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v5, p0, v2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$BasePackageInfo;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;I)V

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "gameImageUri":Ljava/lang/String;
    goto :goto_0

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 775
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    return-void
.end method
