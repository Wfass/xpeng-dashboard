.class public Lcom/android/car/pm/CarPackageManagerService;
.super Landroid/car/content/pm/ICarPackageManager$Stub;
.source "CarPackageManagerService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/pm/CarPackageManagerService$PackageParsingEventReceiver;,
        Lcom/android/car/pm/CarPackageManagerService$BootEventReceiver;,
        Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;,
        Lcom/android/car/pm/CarPackageManagerService$ActivityLaunchListener;,
        Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;,
        Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;,
        Lcom/android/car/pm/CarPackageManagerService$PackageHandler;
    }
.end annotation


# static fields
.field private static final DBG_POLICY_CHECK:Z = false

.field private static final DBG_POLICY_ENFORCEMENT:Z = false

.field private static final DBG_POLICY_SET:Z = false

.field private static final LOG_SIZE:I = 0x14

.field private static final PACKAGE_ACTIVITY_DELIMITER:Ljava/lang/String; = "/"

.field private static final PACKAGE_DELIMITER:Ljava/lang/String; = ","


# instance fields
.field private mActivityBlacklistMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityBlockingActivity:Landroid/content/ComponentName;

.field private final mActivityLaunchListener:Lcom/android/car/pm/CarPackageManagerService$ActivityLaunchListener;

.field private mActivityWhitelistMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlockedActivityLogs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBootEventReceiver:Lcom/android/car/pm/CarPackageManagerService$BootEventReceiver;

.field private mBootLockedIntentRx:Z

.field private final mCarUxRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

.field private final mClientPolicies:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mConfiguredBlacklist:Ljava/lang/String;

.field private mConfiguredWhitelist:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mEnableActivityBlocking:Z

.field private final mHandler:Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mHasParsedPackages:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageManagerActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageParsingEventReceiver:Lcom/android/car/pm/CarPackageManagerService$PackageParsingEventReceiver;

.field private mProxies:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/car/pm/AppBlockingPolicyProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

.field private final mUxRestrictionsListener:Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;

.field private final mWaitingPolicies:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/car/content/pm/CarAppBlockingPolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/CarUxRestrictionsManagerService;Lcom/android/car/SystemActivityMonitoringService;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uxRestrictionsService"    # Lcom/android/car/CarUxRestrictionsManagerService;
    .param p3, "systemActivityMonitoringService"    # Lcom/android/car/SystemActivityMonitoringService;

    .line 143
    invoke-direct {p0}, Landroid/car/content/pm/ICarPackageManager$Stub;-><init>()V

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mBlockedActivityLogs:Ljava/util/LinkedList;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mClientPolicies:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityWhitelistMap:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityBlacklistMap:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mWaitingPolicies:Ljava/util/LinkedList;

    .line 117
    new-instance v0, Lcom/android/car/pm/CarPackageManagerService$ActivityLaunchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/pm/CarPackageManagerService$ActivityLaunchListener;-><init>(Lcom/android/car/pm/CarPackageManagerService;Lcom/android/car/pm/CarPackageManagerService$1;)V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityLaunchListener:Lcom/android/car/pm/CarPackageManagerService$ActivityLaunchListener;

    .line 122
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    const-string v4, "android.intent.action.PACKAGE_DATA_CLEARED"

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    const-string v6, "android.intent.action.PACKAGE_REPLACED"

    const-string v7, "android.intent.action.PACKAGE_FULLY_REMOVED"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageManagerActions:Ljava/util/List;

    .line 130
    new-instance v0, Lcom/android/car/pm/CarPackageManagerService$PackageParsingEventReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/car/pm/CarPackageManagerService$PackageParsingEventReceiver;-><init>(Lcom/android/car/pm/CarPackageManagerService;Lcom/android/car/pm/CarPackageManagerService$1;)V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageParsingEventReceiver:Lcom/android/car/pm/CarPackageManagerService$PackageParsingEventReceiver;

    .line 132
    new-instance v0, Lcom/android/car/pm/CarPackageManagerService$BootEventReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/car/pm/CarPackageManagerService$BootEventReceiver;-><init>(Lcom/android/car/pm/CarPackageManagerService;Lcom/android/car/pm/CarPackageManagerService$1;)V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mBootEventReceiver:Lcom/android/car/pm/CarPackageManagerService$BootEventReceiver;

    .line 144
    iput-object p1, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/android/car/pm/CarPackageManagerService;->mCarUxRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

    .line 146
    iput-object p3, p0, Lcom/android/car/pm/CarPackageManagerService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    .line 147
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 148
    new-instance v0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;

    invoke-direct {v0, p0, p2}, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;-><init>(Lcom/android/car/pm/CarPackageManagerService;Lcom/android/car/CarUxRestrictionsManagerService;)V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mUxRestrictionsListener:Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;

    .line 149
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CAR.PACKAGE"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 150
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 151
    new-instance v0, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;-><init>(Lcom/android/car/pm/CarPackageManagerService;Landroid/os/Looper;Lcom/android/car/pm/CarPackageManagerService$1;)V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandler:Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 153
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mEnableActivityBlocking:Z

    .line 154
    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "blockingActivity":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityBlockingActivity:Landroid/content/ComponentName;

    .line 156
    return-void
.end method

.method static synthetic access$2200(Lcom/android/car/pm/CarPackageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService;

    .line 74
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->doHandleInit()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/car/pm/CarPackageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService;

    .line 74
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->doParseInstalledPackages()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/car/pm/CarPackageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService;

    .line 74
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->doSetPolicy()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/car/pm/CarPackageManagerService;Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/car/content/pm/CarAppBlockingPolicy;
    .param p3, "x3"    # I

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/pm/CarPackageManagerService;->doUpdatePolicy(Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/car/pm/CarPackageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService;

    .line 74
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->doHandleRelease()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/car/pm/CarPackageManagerService;Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService;
    .param p1, "x1"    # Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    .line 74
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService;->blockTopActivityIfNecessary(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/car/pm/CarPackageManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService;

    .line 74
    iget-boolean v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHasParsedPackages:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/car/pm/CarPackageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService;

    .line 74
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->blockTopActivitiesIfNecessary()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/car/pm/CarPackageManagerService;)Lcom/android/car/pm/CarPackageManagerService$PackageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService;

    .line 74
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandler:Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/car/pm/CarPackageManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService;
    .param p1, "x1"    # Z

    .line 74
    iput-boolean p1, p0, Lcom/android/car/pm/CarPackageManagerService;->mBootLockedIntentRx:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/car/pm/CarPackageManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService;

    .line 74
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageManagerActions:Ljava/util/List;

    return-object v0
.end method

.method private addLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "log"    # Ljava/lang/String;

    .line 980
    :goto_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mBlockedActivityLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 981
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mBlockedActivityLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 983
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CAR.PACKAGE"

    .line 984
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "MM-dd HH:mm:ss"

    .line 986
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 985
    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    .line 986
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 987
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 988
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mBlockedActivityLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 989
    return-void
.end method

.method private assertPackageAndClassName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 266
    if-eqz p1, :cond_1

    .line 269
    if-eqz p2, :cond_0

    .line 272
    return-void

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Class name null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package name null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blockTopActivitiesIfNecessary()V
    .locals 4

    .line 937
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mUxRestrictionsListener:Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;

    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->access$600(Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;)Z

    move-result v0

    .line 938
    .local v0, "restricted":Z
    if-nez v0, :cond_0

    .line 939
    return-void

    .line 941
    :cond_0
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    invoke-virtual {v1}, Lcom/android/car/SystemActivityMonitoringService;->getTopTasks()Ljava/util/List;

    move-result-object v1

    .line 942
    .local v1, "topTasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    .line 943
    .local v3, "topTask":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    invoke-direct {p0, v3}, Lcom/android/car/pm/CarPackageManagerService;->doBlockTopActivityIfNotAllowed(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;)V

    .line 944
    .end local v3    # "topTask":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    goto :goto_0

    .line 945
    :cond_1
    return-void
.end method

.method private blockTopActivityIfNecessary(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;)V
    .locals 1
    .param p1, "topTask"    # Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    .line 864
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mUxRestrictionsListener:Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;

    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->access$600(Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;)Z

    move-result v0

    .line 865
    .local v0, "restricted":Z
    if-nez v0, :cond_0

    .line 866
    return-void

    .line 868
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService;->doBlockTopActivityIfNotAllowed(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;)V

    .line 869
    return-void
.end method

.method private doBlockTopActivityIfNotAllowed(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;)V
    .locals 9
    .param p1, "topTask"    # Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    .line 872
    iget-object v0, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->topActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 873
    return-void

    .line 875
    :cond_0
    iget-object v0, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->topActivity:Landroid/content/ComponentName;

    .line 876
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->topActivity:Landroid/content/ComponentName;

    .line 877
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 875
    invoke-virtual {p0, v0, v1}, Lcom/android/car/pm/CarPackageManagerService;->isActivityDistractionOptimized(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 881
    .local v0, "allowed":Z
    if-eqz v0, :cond_1

    .line 882
    return-void

    .line 884
    :cond_1
    monitor-enter p0

    .line 885
    :try_start_0
    iget-boolean v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mEnableActivityBlocking:Z

    if-nez v1, :cond_2

    .line 886
    const-string v1, "CAR.PACKAGE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not allowed, blocking disabled. Number of tasks in stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->stackInfo:Landroid/app/ActivityManager$StackInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    monitor-exit p0

    return-void

    .line 891
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 898
    .local v1, "blockedActivityLog":Ljava/lang/StringBuilder;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 899
    .local v2, "newActivityIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityBlockingActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 900
    const-string v3, "blocked_activity"

    iget-object v4, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->topActivity:Landroid/content/ComponentName;

    .line 902
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 900
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 903
    const-string v3, "Blocked activity "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->topActivity:Landroid/content/ComponentName;

    .line 904
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Task id "

    .line 905
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->taskId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 909
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->stackInfo:Landroid/app/ActivityManager$StackInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 911
    iget-object v4, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->stackInfo:Landroid/app/ActivityManager$StackInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    aget v4, v4, v3

    iget v5, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->taskId:I

    if-ne v4, v5, :cond_4

    .line 914
    iget-object v4, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->stackInfo:Landroid/app/ActivityManager$StackInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 916
    .local v4, "taskRootActivity":Ljava/lang/String;
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 918
    .local v5, "rootActivityName":Landroid/content/ComponentName;
    nop

    .line 919
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 918
    invoke-virtual {p0, v6, v7}, Lcom/android/car/pm/CarPackageManagerService;->isActivityDistractionOptimized(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 920
    const-string v6, "blocked_task"

    iget v7, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->taskId:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 922
    const-string v6, "CAR.PACKAGE"

    const/4 v7, 0x4

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 923
    const-string v6, "CAR.PACKAGE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Blocked task "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->taskId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has DO root activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_3
    const-string v6, ". Root DO activity "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 909
    .end local v4    # "taskRootActivity":Ljava/lang/String;
    .end local v5    # "rootActivityName":Landroid/content/ComponentName;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 932
    .end local v3    # "i":I
    :cond_5
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/car/pm/CarPackageManagerService;->addLog(Ljava/lang/String;)V

    .line 933
    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    invoke-virtual {v3, p1, v2}, Lcom/android/car/SystemActivityMonitoringService;->blockActivity(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;Landroid/content/Intent;)V

    .line 934
    return-void

    .line 891
    .end local v1    # "blockedActivityLog":Ljava/lang/StringBuilder;
    .end local v2    # "newActivityIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private doHandleInit()V
    .locals 5

    .line 356
    invoke-virtual {p0}, Lcom/android/car/pm/CarPackageManagerService;->startAppBlockingPolicies()V

    .line 357
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 358
    .local v0, "bootIntent":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mBootEventReceiver:Lcom/android/car/pm/CarPackageManagerService$BootEventReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 360
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 361
    .local v1, "pkgParseIntent":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageManagerActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 362
    .local v3, "action":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    .end local v3    # "action":Ljava/lang/String;
    goto :goto_0

    .line 364
    :cond_0
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 365
    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageParsingEventReceiver:Lcom/android/car/pm/CarPackageManagerService$PackageParsingEventReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 367
    :try_start_0
    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mCarUxRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService;->mUxRestrictionsListener:Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;

    invoke-virtual {v2, v3}, Lcom/android/car/CarUxRestrictionsManagerService;->registerUxRestrictionsChangeListener(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    nop

    .line 373
    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityLaunchListener:Lcom/android/car/pm/CarPackageManagerService$ActivityLaunchListener;

    invoke-virtual {v2, v3}, Lcom/android/car/SystemActivityMonitoringService;->registerActivityLaunchListener(Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;)V

    .line 375
    return-void

    .line 368
    :catch_0
    move-exception v2

    .line 370
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "CAR.PACKAGE"

    const-string v4, "sensor subscription failed"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    return-void
.end method

.method private doHandlePolicyConnection(Lcom/android/car/pm/AppBlockingPolicyProxy;Landroid/car/content/pm/CarAppBlockingPolicy;)V
    .locals 3
    .param p1, "proxy"    # Lcom/android/car/pm/AppBlockingPolicyProxy;
    .param p2, "policy"    # Landroid/car/content/pm/CarAppBlockingPolicy;

    .line 782
    const/4 v0, 0x0

    .line 783
    .local v0, "shouldSetPolicy":Z
    monitor-enter p0

    .line 784
    :try_start_0
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mProxies:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 785
    invoke-virtual {p1}, Lcom/android/car/pm/AppBlockingPolicyProxy;->disconnect()V

    .line 786
    monitor-exit p0

    return-void

    .line 788
    :cond_0
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mProxies:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 789
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mProxies:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 790
    const/4 v0, 0x1

    .line 791
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mProxies:Ljava/util/LinkedList;

    .line 793
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 795
    if-eqz p2, :cond_3

    .line 800
    :try_start_1
    invoke-virtual {p1}, Lcom/android/car/pm/AppBlockingPolicyProxy;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2, v2}, Lcom/android/car/pm/CarPackageManagerService;->doSetAppBlockingPolicy(Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 803
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Lcom/android/car/pm/AppBlockingPolicyProxy;->disconnect()V

    .line 804
    if-eqz v0, :cond_2

    .line 805
    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandler:Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    invoke-static {v2}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->access$500(Lcom/android/car/pm/CarPackageManagerService$PackageHandler;)V

    :cond_2
    throw v1

    .line 803
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/android/car/pm/AppBlockingPolicyProxy;->disconnect()V

    .line 804
    if-eqz v0, :cond_4

    .line 805
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandler:Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    invoke-static {v1}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->access$500(Lcom/android/car/pm/CarPackageManagerService$PackageHandler;)V

    .line 808
    :cond_4
    return-void

    .line 793
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private declared-synchronized doHandleRelease()V
    .locals 1

    monitor-enter p0

    .line 387
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    monitor-exit p0

    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/pm/CarPackageManagerService;
    throw v0
.end method

.method private doParseInstalledPackages()V
    .locals 1

    .line 378
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->generateActivityWhitelistMap()V

    .line 379
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->generateActivityBlacklistMap()V

    .line 380
    monitor-enter p0

    .line 381
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHasParsedPackages:Z

    .line 382
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mUxRestrictionsListener:Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;

    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->access$1300(Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;)V

    .line 384
    return-void

    .line 382
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private doSetAppBlockingPolicy(Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;IZ)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policy"    # Landroid/car/content/pm/CarAppBlockingPolicy;
    .param p3, "flags"    # I
    .param p4, "setNow"    # Z

    .line 176
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CONTROL_APP_BLOCKING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 181
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/car/CarServiceUtils;->assertPackageName(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    if-eqz p2, :cond_3

    .line 185
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set both FLAG_SET_POLICY_ADD and FLAG_SET_POLICY_REMOVE flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandler:Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    invoke-static {v0, p1, p2, p3}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->access$400(Lcom/android/car/pm/CarPackageManagerService$PackageHandler;Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;I)V

    .line 191
    if-eqz p4, :cond_2

    .line 192
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandler:Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->access$500(Lcom/android/car/pm/CarPackageManagerService$PackageHandler;)V

    .line 193
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    .line 194
    monitor-enter p2

    .line 196
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    goto :goto_1

    .line 199
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 197
    :catch_0
    move-exception v0

    .line 199
    :goto_1
    :try_start_1
    monitor-exit p2

    goto :goto_3

    :goto_2
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 202
    :cond_2
    :goto_3
    return-void

    .line 183
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "policy cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "requires permission android.car.permission.CONTROL_APP_BLOCKING"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doSetPolicy()V
    .locals 1

    .line 401
    monitor-enter p0

    .line 402
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->wakeupClientsWaitingForPolicySetitngLocked()V

    .line 403
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->blockTopActivitiesIfNecessary()V

    .line 405
    return-void

    .line 403
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private doUpdatePolicy(Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policy"    # Landroid/car/content/pm/CarAppBlockingPolicy;
    .param p3, "flags"    # I

    .line 412
    iget-object v0, p2, Landroid/car/content/pm/CarAppBlockingPolicy;->blacklists:[Landroid/car/content/pm/AppBlockingPackageInfo;

    invoke-direct {p0, v0}, Lcom/android/car/pm/CarPackageManagerService;->verifyList([Landroid/car/content/pm/AppBlockingPackageInfo;)[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    move-result-object v0

    .line 413
    .local v0, "blacklistWrapper":[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    iget-object v1, p2, Landroid/car/content/pm/CarAppBlockingPolicy;->whitelists:[Landroid/car/content/pm/AppBlockingPackageInfo;

    invoke-direct {p0, v1}, Lcom/android/car/pm/CarPackageManagerService;->verifyList([Landroid/car/content/pm/AppBlockingPackageInfo;)[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    move-result-object v1

    .line 414
    .local v1, "whitelistWrapper":[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    monitor-enter p0

    .line 415
    :try_start_0
    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mClientPolicies:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;

    .line 416
    .local v2, "clientPolicy":Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    if-nez v2, :cond_0

    .line 417
    new-instance v3, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;-><init>(Lcom/android/car/pm/CarPackageManagerService$1;)V

    move-object v2, v3

    .line 418
    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService;->mClientPolicies:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_0
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_1

    .line 421
    invoke-static {v2, v0}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->access$1500(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    .line 422
    invoke-static {v2, v1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->access$1600(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    goto :goto_0

    .line 423
    :cond_1
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_2

    .line 424
    invoke-static {v2, v0}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->access$1700(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    .line 425
    invoke-static {v2, v1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->access$1800(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    goto :goto_0

    .line 427
    :cond_2
    invoke-static {v2, v0}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->access$1900(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    .line 428
    invoke-static {v2, v1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->access$2000(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    .line 430
    :goto_0
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_3

    .line 431
    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService;->mWaitingPolicies:Ljava/util/LinkedList;

    invoke-virtual {v3, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 436
    .end local v2    # "clientPolicy":Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->blockTopActivitiesIfNecessary()V

    .line 438
    return-void

    .line 436
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private dumpPoliciesLocked(Z)Ljava/lang/String;
    .locals 7
    .param p1, "dumpAll"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 826
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 827
    const-string v1, "**System white list**\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityWhitelistMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 829
    .local v2, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    .end local v2    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    goto :goto_0

    .line 831
    :cond_0
    const-string v1, "**System Black list**\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityBlacklistMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 833
    .restart local v2    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    .end local v2    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    goto :goto_1

    .line 836
    :cond_1
    const-string v1, "**Client Policies**\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mClientPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 838
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    const-string v3, "  whitelists:\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;

    invoke-static {v3}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->access$1000(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 841
    .local v4, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    .end local v4    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    goto :goto_3

    .line 843
    :cond_2
    const-string v3, "  blacklists:\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;

    invoke-static {v3}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->access$700(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 845
    .restart local v4    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    .end local v4    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    goto :goto_4

    .line 847
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;>;"
    :cond_3
    goto/16 :goto_2

    .line 848
    :cond_4
    const-string v1, "**Unprocessed policy services**\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mProxies:Ljava/util/LinkedList;

    if-eqz v1, :cond_5

    .line 850
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mProxies:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/pm/AppBlockingPolicyProxy;

    .line 851
    .local v2, "proxy":Lcom/android/car/pm/AppBlockingPolicyProxy;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/car/pm/AppBlockingPolicyProxy;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    .end local v2    # "proxy":Lcom/android/car/pm/AppBlockingPolicyProxy;
    goto :goto_5

    .line 854
    :cond_5
    const-string v1, "**Whitelist string in resource**\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mConfiguredWhitelist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    const-string v1, "**Blacklist string in resource**\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mConfiguredBlacklist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateActivityBlacklistMap()V
    .locals 17

    .line 631
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 632
    .local v2, "activityBlacklist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;>;"
    iget-object v0, v1, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    const v3, 0x7f060006

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/car/pm/CarPackageManagerService;->mConfiguredBlacklist:Ljava/lang/String;

    .line 633
    iget-object v0, v1, Lcom/android/car/pm/CarPackageManagerService;->mConfiguredBlacklist:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 637
    return-void

    .line 639
    :cond_0
    iget-object v0, v1, Lcom/android/car/pm/CarPackageManagerService;->mConfiguredBlacklist:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/car/pm/CarPackageManagerService;->parseConfiglist(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 640
    .local v3, "configBlacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v3, :cond_1

    .line 644
    return-void

    .line 647
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 648
    .local v12, "pkg":Ljava/lang/String;
    const/4 v0, 0x0

    move v5, v0

    .line 652
    .local v5, "flags":I
    :try_start_0
    iget-object v0, v1, Lcom/android/car/pm/CarPackageManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const v6, 0x80c0001

    invoke-virtual {v0, v12, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 659
    nop

    .line 662
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 663
    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 664
    :cond_2
    or-int/lit8 v5, v5, 0x1

    .line 666
    :cond_3
    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Ljava/util/Set;

    .line 667
    .local v13, "configActivities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 669
    or-int/lit8 v5, v5, 0x2

    .line 670
    invoke-direct {v1, v0}, Lcom/android/car/pm/CarPackageManagerService;->getActivitiesInPackage(Landroid/content/pm/PackageInfo;)[Ljava/lang/String;

    move-result-object v6

    .line 672
    .end local v5    # "flags":I
    .local v6, "activities":[Ljava/lang/String;
    .local v14, "flags":I
    :goto_1
    move v14, v5

    goto :goto_2

    .end local v6    # "activities":[Ljava/lang/String;
    .end local v14    # "flags":I
    .restart local v5    # "flags":I
    :cond_4
    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v13, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_1

    .end local v5    # "flags":I
    .restart local v6    # "activities":[Ljava/lang/String;
    .restart local v14    # "flags":I
    :goto_2
    move-object v15, v6

    .line 675
    .end local v6    # "activities":[Ljava/lang/String;
    .local v15, "activities":[Ljava/lang/String;
    if-nez v15, :cond_5

    .line 676
    goto :goto_0

    .line 678
    :cond_5
    new-instance v16, Landroid/car/content/pm/AppBlockingPackageInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v5, v16

    move-object v6, v12

    move v9, v14

    move-object v11, v15

    invoke-direct/range {v5 .. v11}, Landroid/car/content/pm/AppBlockingPackageInfo;-><init>(Ljava/lang/String;III[Landroid/content/pm/Signature;[Ljava/lang/String;)V

    .line 680
    .local v5, "appBlockingInfo":Landroid/car/content/pm/AppBlockingPackageInfo;
    new-instance v6, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v6, v5, v8, v7}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;-><init>(Landroid/car/content/pm/AppBlockingPackageInfo;ZLcom/android/car/pm/CarPackageManagerService$1;)V

    .line 682
    .local v6, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    invoke-virtual {v2, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "appBlockingInfo":Landroid/car/content/pm/AppBlockingPackageInfo;
    .end local v6    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "configActivities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "flags":I
    .end local v15    # "activities":[Ljava/lang/String;
    goto :goto_0

    .line 657
    .local v5, "flags":I
    .restart local v12    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 658
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "CAR.PACKAGE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " not found to blacklist "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    goto/16 :goto_0

    .line 684
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "flags":I
    .end local v12    # "pkg":Ljava/lang/String;
    :cond_6
    monitor-enter p0

    .line 685
    :try_start_1
    iget-object v0, v1, Lcom/android/car/pm/CarPackageManagerService;->mActivityBlacklistMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 686
    iget-object v0, v1, Lcom/android/car/pm/CarPackageManagerService;->mActivityBlacklistMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 687
    monitor-exit p0

    .line 688
    return-void

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private generateActivityWhitelistMap()V
    .locals 19

    .line 520
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 521
    .local v2, "activityWhitelist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;>;"
    iget-object v0, v1, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    const v3, 0x7f060005

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/car/pm/CarPackageManagerService;->mConfiguredWhitelist:Ljava/lang/String;

    .line 522
    iget-object v0, v1, Lcom/android/car/pm/CarPackageManagerService;->mConfiguredWhitelist:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 526
    return-void

    .line 529
    :cond_0
    iget-object v0, v1, Lcom/android/car/pm/CarPackageManagerService;->mConfiguredWhitelist:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/car/pm/CarPackageManagerService;->parseConfiglist(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 530
    .local v3, "configWhitelist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v3, :cond_1

    .line 534
    return-void

    .line 538
    :cond_1
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v4, v0

    .line 539
    .local v4, "defaultActivity":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, v1, Lcom/android/car/pm/CarPackageManagerService;->mActivityBlockingActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 540
    iget-object v0, v1, Lcom/android/car/pm/CarPackageManagerService;->mActivityBlockingActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-object v0, v1, Lcom/android/car/pm/CarPackageManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const v5, 0xc0041

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 547
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 548
    .local v7, "info":Landroid/content/pm/PackageInfo;
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_2

    .line 549
    goto :goto_0

    .line 552
    :cond_2
    const/4 v0, 0x0

    .line 553
    .local v0, "flags":I
    const/4 v8, 0x0

    .line 555
    .local v8, "activities":[Ljava/lang/String;
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 556
    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    .line 562
    .end local v0    # "flags":I
    .local v9, "flags":I
    :cond_3
    :goto_1
    move v9, v0

    goto :goto_3

    .line 557
    .end local v9    # "flags":I
    .restart local v0    # "flags":I
    :cond_4
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 562
    .end local v0    # "flags":I
    .restart local v9    # "flags":I
    :goto_3
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/Set;

    .line 563
    .local v10, "configActivitiesForPackage":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v10, :cond_6

    .line 567
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 569
    or-int/lit8 v9, v9, 0x2

    .line 571
    invoke-direct {v1, v7}, Lcom/android/car/pm/CarPackageManagerService;->getActivitiesInPackage(Landroid/content/pm/PackageInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 572
    .end local v8    # "activities":[Ljava/lang/String;
    .local v0, "activities":[Ljava/lang/String;
    goto :goto_4

    .line 582
    .end local v0    # "activities":[Ljava/lang/String;
    .restart local v8    # "activities":[Ljava/lang/String;
    :cond_5
    nop

    .line 583
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 582
    invoke-interface {v10, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .end local v8    # "activities":[Ljava/lang/String;
    .restart local v0    # "activities":[Ljava/lang/String;
    goto :goto_4

    .line 589
    .end local v0    # "activities":[Ljava/lang/String;
    .restart local v8    # "activities":[Ljava/lang/String;
    :cond_6
    :try_start_0
    iget-object v0, v1, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    iget-object v11, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v11}, Lcom/android/car/pm/CarAppMetadataReader;->findDistractionOptimizedActivities(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    .end local v8    # "activities":[Ljava/lang/String;
    .restart local v0    # "activities":[Ljava/lang/String;
    nop

    .line 596
    nop

    .line 608
    :goto_4
    if-nez v0, :cond_7

    .line 609
    goto :goto_0

    .line 613
    :cond_7
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 614
    .local v8, "signatures":[Landroid/content/pm/Signature;
    new-instance v18, Landroid/car/content/pm/AppBlockingPackageInfo;

    iget-object v12, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v11, v18

    move v15, v9

    move-object/from16 v16, v8

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v17}, Landroid/car/content/pm/AppBlockingPackageInfo;-><init>(Ljava/lang/String;III[Landroid/content/pm/Signature;[Ljava/lang/String;)V

    .line 616
    .local v11, "appBlockingInfo":Landroid/car/content/pm/AppBlockingPackageInfo;
    new-instance v12, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct {v12, v11, v13, v14}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;-><init>(Landroid/car/content/pm/AppBlockingPackageInfo;ZLcom/android/car/pm/CarPackageManagerService$1;)V

    .line 618
    .local v12, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    iget-object v13, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    .end local v0    # "activities":[Ljava/lang/String;
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    .end local v8    # "signatures":[Landroid/content/pm/Signature;
    .end local v9    # "flags":I
    .end local v10    # "configActivitiesForPackage":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "appBlockingInfo":Landroid/car/content/pm/AppBlockingPackageInfo;
    .end local v12    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    goto :goto_0

    .line 592
    .restart local v7    # "info":Landroid/content/pm/PackageInfo;
    .local v8, "activities":[Ljava/lang/String;
    .restart local v9    # "flags":I
    .restart local v10    # "configActivitiesForPackage":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "CAR.PACKAGE"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading metadata: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    goto/16 :goto_0

    .line 620
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    .end local v8    # "activities":[Ljava/lang/String;
    .end local v9    # "flags":I
    .end local v10    # "configActivitiesForPackage":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    monitor-enter p0

    .line 621
    :try_start_1
    iget-object v0, v1, Lcom/android/car/pm/CarPackageManagerService;->mActivityWhitelistMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 622
    iget-object v0, v1, Lcom/android/car/pm/CarPackageManagerService;->mActivityWhitelistMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 623
    monitor-exit p0

    .line 624
    return-void

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getActivitiesInPackage(Landroid/content/pm/PackageInfo;)[Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Landroid/content/pm/PackageInfo;

    .line 725
    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    goto :goto_1

    .line 728
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .local v0, "activityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 730
    .local v4, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    .end local v4    # "aInfo":Landroid/content/pm/ActivityInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 732
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 726
    .end local v0    # "activityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private isActivityInMapAndMatching(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 310
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 311
    .local v0, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$800(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$900(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/car/content/pm/AppBlockingPackageInfo;->isActivityCovered(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 315
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private isActivityInWhitelistsLocked(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mClientPolicies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;

    .line 301
    .local v1, "policy":Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    invoke-static {v1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->access$1000(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v2, p1, p2}, Lcom/android/car/pm/CarPackageManagerService;->isActivityInMapAndMatching(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    const/4 v0, 0x1

    return v0

    .line 304
    .end local v1    # "policy":Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    :cond_0
    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityWhitelistMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/car/pm/CarPackageManagerService;->isActivityInMapAndMatching(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private parseConfiglist(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .param p1, "configList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 697
    if-nez p1, :cond_0

    .line 698
    const/4 v0, 0x0

    return-object v0

    .line 700
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 701
    .local v0, "packageToActivityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 702
    .local v1, "entries":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v1, v4

    .line 703
    .local v5, "entry":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 704
    .local v6, "packageActivityPair":[Ljava/lang/String;
    aget-object v7, v6, v3

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 705
    .local v7, "activities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 706
    .local v8, "newPackage":Z
    if-nez v7, :cond_1

    .line 707
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    move-object v7, v9

    .line 708
    const/4 v8, 0x1

    .line 709
    aget-object v9, v6, v3

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    :cond_1
    array-length v9, v6

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 712
    invoke-interface {v7}, Ljava/util/Set;->clear()V

    goto :goto_1

    .line 713
    :cond_2
    array-length v9, v6

    const/4 v11, 0x2

    if-ne v9, v11, :cond_4

    .line 715
    if-nez v8, :cond_3

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 716
    :cond_3
    aget-object v9, v6, v10

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 702
    .end local v5    # "entry":Ljava/lang/String;
    .end local v6    # "packageActivityPair":[Ljava/lang/String;
    .end local v7    # "activities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "newPackage":Z
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 720
    :cond_5
    return-object v0
.end method

.method private searchFromBlacklistsLocked(Ljava/lang/String;)Landroid/car/content/pm/AppBlockingPackageInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mClientPolicies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;

    .line 277
    .local v1, "policy":Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    invoke-static {v1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->access$700(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 278
    .local v2, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$800(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    invoke-static {v2}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$900(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v0

    return-object v0

    .line 281
    .end local v1    # "policy":Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    .end local v2    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    :cond_0
    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityBlacklistMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 283
    .local v0, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$900(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method private searchFromWhitelistsLocked(Ljava/lang/String;)Landroid/car/content/pm/AppBlockingPackageInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mClientPolicies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;

    .line 289
    .local v1, "policy":Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    invoke-static {v1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->access$1000(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 290
    .local v2, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$800(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    invoke-static {v2}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$900(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v0

    return-object v0

    .line 293
    .end local v1    # "policy":Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    .end local v2    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    :cond_0
    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityWhitelistMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 295
    .local v0, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$900(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method private verifyList([Landroid/car/content/pm/AppBlockingPackageInfo;)[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    .locals 6
    .param p1, "list"    # [Landroid/car/content/pm/AppBlockingPackageInfo;

    .line 441
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 442
    return-object v0

    .line 444
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 445
    .local v1, "wrappers":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 446
    aget-object v3, p1, v2

    .line 447
    .local v3, "info":Landroid/car/content/pm/AppBlockingPackageInfo;
    if-nez v3, :cond_1

    .line 448
    goto :goto_1

    .line 450
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/car/pm/CarPackageManagerService;->isInstalledPackageMatching(Landroid/car/content/pm/AppBlockingPackageInfo;)Z

    move-result v4

    .line 451
    .local v4, "isMatching":Z
    new-instance v5, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    invoke-direct {v5, v3, v4, v0}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;-><init>(Landroid/car/content/pm/AppBlockingPackageInfo;ZLcom/android/car/pm/CarPackageManagerService$1;)V

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v3    # "info":Landroid/car/content/pm/AppBlockingPackageInfo;
    .end local v4    # "isMatching":Z
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 453
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    return-object v0
.end method

.method private wakeupClientsWaitingForPolicySetitngLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mWaitingPolicies:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/content/pm/CarAppBlockingPolicy;

    .line 393
    .local v1, "waitingPolicy":Landroid/car/content/pm/CarAppBlockingPolicy;
    monitor-enter v1

    .line 394
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 395
    monitor-exit v1

    .line 396
    .end local v1    # "waitingPolicy":Landroid/car/content/pm/CarAppBlockingPolicy;
    goto :goto_0

    .line 395
    .restart local v1    # "waitingPolicy":Landroid/car/content/pm/CarAppBlockingPolicy;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 397
    .end local v1    # "waitingPolicy":Landroid/car/content/pm/CarAppBlockingPolicy;
    :cond_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mWaitingPolicies:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 398
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 812
    monitor-enter p0

    .line 813
    :try_start_0
    const-string v0, "*PackageManagementService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnableActivityBlocking:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mEnableActivityBlocking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHasParsedPackages:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mHasParsedPackages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBootLockedIntentRx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mBootLockedIntentRx:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityRestricted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mUxRestrictionsListener:Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;

    invoke-static {v1}, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->access$600(Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    const-string v0, "\n"

    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mBlockedActivityLogs:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 819
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/car/pm/CarPackageManagerService;->dumpPoliciesLocked(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 820
    monitor-exit p0

    .line 821
    return-void

    .line 820
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDistractionOptimizedActivities(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 968
    :try_start_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/car/pm/CarAppMetadataReader;->findDistractionOptimizedActivities(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 969
    :catch_0
    move-exception v0

    .line 970
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1

    .line 322
    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandler:Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->access$1100(Lcom/android/car/pm/CarPackageManagerService$PackageHandler;)V

    .line 324
    monitor-exit p0

    .line 325
    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isActivityBackedBySafeActivity(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "activityName"    # Landroid/content/ComponentName;

    .line 244
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mUxRestrictionsListener:Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;

    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->access$600(Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 245
    return v1

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    invoke-virtual {v0, p1}, Lcom/android/car/SystemActivityMonitoringService;->getFocusedStackForTopActivity(Landroid/content/ComponentName;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    .line 249
    .local v0, "info":Landroid/app/ActivityManager$StackInfo;
    if-nez v0, :cond_1

    .line 250
    return v1

    .line 252
    :cond_1
    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v2, v2

    if-gt v2, v1, :cond_2

    .line 253
    const/4 v1, 0x0

    return v1

    .line 255
    :cond_2
    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 257
    .local v1, "activityBehind":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-virtual {p0, v2, v3}, Lcom/android/car/pm/CarPackageManagerService;->isActivityDistractionOptimized(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public isActivityDistractionOptimized(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/car/pm/CarPackageManagerService;->assertPackageAndClassName(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    monitor-enter p0

    .line 212
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService;->searchFromBlacklistsLocked(Ljava/lang/String;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v0

    .line 213
    .local v0, "info":Landroid/car/content/pm/AppBlockingPackageInfo;
    if-eqz v0, :cond_0

    .line 214
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 216
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/car/pm/CarPackageManagerService;->isActivityInWhitelistsLocked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    monitor-exit p0

    return v1

    .line 217
    .end local v0    # "info":Landroid/car/content/pm/AppBlockingPackageInfo;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isAnySignatureMatching([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 6
    .param p1, "fromPackage"    # [Landroid/content/pm/Signature;
    .param p2, "fromPolicy"    # [Landroid/content/pm/Signature;

    .line 496
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 497
    return v0

    .line 499
    :cond_0
    if-nez p2, :cond_1

    .line 500
    return v0

    .line 502
    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 503
    .local v1, "setFromPackage":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 504
    .local v4, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 503
    .end local v4    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 506
    :cond_2
    array-length v2, p2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, p2, v3

    .line 507
    .restart local v4    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 508
    const/4 v0, 0x1

    return v0

    .line 506
    .end local v4    # "sig":Landroid/content/pm/Signature;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 511
    :cond_4
    return v0
.end method

.method isInstalledPackageMatching(Landroid/car/content/pm/AppBlockingPackageInfo;)Z
    .locals 5
    .param p1, "info"    # Landroid/car/content/pm/AppBlockingPackageInfo;

    .line 457
    const/4 v0, 0x0

    .line 459
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 463
    nop

    .line 464
    if-nez v0, :cond_0

    .line 465
    return v1

    .line 468
    :cond_0
    iget v2, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 469
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 470
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v2

    if-nez v2, :cond_2

    .line 471
    :cond_1
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 472
    .local v2, "signatires":[Landroid/content/pm/Signature;
    iget-object v4, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {p0, v2, v4}, Lcom/android/car/pm/CarPackageManagerService;->isAnySignatureMatching([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 473
    return v1

    .line 476
    .end local v2    # "signatires":[Landroid/content/pm/Signature;
    :cond_2
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 477
    .local v2, "version":I
    iget v4, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->minRevisionCode:I

    if-nez v4, :cond_5

    .line 478
    iget v4, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->maxRevisionCode:I

    if-nez v4, :cond_3

    .line 479
    return v3

    .line 481
    :cond_3
    iget v4, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->maxRevisionCode:I

    if-le v4, v2, :cond_4

    move v1, v3

    nop

    :cond_4
    return v1

    .line 484
    :cond_5
    iget v4, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->maxRevisionCode:I

    if-nez v4, :cond_7

    .line 485
    iget v4, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->minRevisionCode:I

    if-ge v4, v2, :cond_6

    move v1, v3

    nop

    :cond_6
    return v1

    .line 487
    :cond_7
    iget v4, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->minRevisionCode:I

    if-ge v4, v2, :cond_8

    iget v4, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->maxRevisionCode:I

    if-le v4, v2, :cond_8

    move v1, v3

    nop

    :cond_8
    return v1

    .line 461
    .end local v2    # "version":I
    :catch_0
    move-exception v2

    .line 462
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method public isServiceDistractionOptimized(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 222
    if-eqz p1, :cond_2

    .line 225
    monitor-enter p0

    .line 230
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService;->searchFromBlacklistsLocked(Ljava/lang/String;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v0

    .line 231
    .local v0, "info":Landroid/car/content/pm/AppBlockingPackageInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 232
    monitor-exit p0

    return v1

    .line 234
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService;->searchFromWhitelistsLocked(Ljava/lang/String;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v2

    move-object v0, v2

    .line 235
    if-eqz v0, :cond_1

    .line 236
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 238
    .end local v0    # "info":Landroid/car/content/pm/AppBlockingPackageInfo;
    :cond_1
    monitor-exit p0

    .line 239
    return v1

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 223
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package name null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPolicyConnectionAndSet(Lcom/android/car/pm/AppBlockingPolicyProxy;Landroid/car/content/pm/CarAppBlockingPolicy;)V
    .locals 0
    .param p1, "proxy"    # Lcom/android/car/pm/AppBlockingPolicyProxy;
    .param p2, "policy"    # Landroid/car/content/pm/CarAppBlockingPolicy;

    .line 773
    invoke-direct {p0, p1, p2}, Lcom/android/car/pm/CarPackageManagerService;->doHandlePolicyConnection(Lcom/android/car/pm/AppBlockingPolicyProxy;Landroid/car/content/pm/CarAppBlockingPolicy;)V

    .line 774
    return-void
.end method

.method public onPolicyConnectionFailure(Lcom/android/car/pm/AppBlockingPolicyProxy;)V
    .locals 1
    .param p1, "proxy"    # Lcom/android/car/pm/AppBlockingPolicyProxy;

    .line 777
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/car/pm/CarPackageManagerService;->doHandlePolicyConnection(Lcom/android/car/pm/AppBlockingPolicyProxy;Landroid/car/content/pm/CarAppBlockingPolicy;)V

    .line 778
    return-void
.end method

.method public release()V
    .locals 2

    .line 329
    monitor-enter p0

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandler:Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->access$1200(Lcom/android/car/pm/CarPackageManagerService$PackageHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 336
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHasParsedPackages:Z

    .line 337
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityWhitelistMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 338
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityBlacklistMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 339
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mClientPolicies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 340
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mProxies:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mProxies:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/pm/AppBlockingPolicyProxy;

    .line 342
    .local v1, "proxy":Lcom/android/car/pm/AppBlockingPolicyProxy;
    invoke-virtual {v1}, Lcom/android/car/pm/AppBlockingPolicyProxy;->disconnect()V

    .line 343
    .end local v1    # "proxy":Lcom/android/car/pm/AppBlockingPolicyProxy;
    goto :goto_1

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mProxies:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 346
    :cond_1
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->wakeupClientsWaitingForPolicySetitngLocked()V

    .line 347
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 348
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageParsingEventReceiver:Lcom/android/car/pm/CarPackageManagerService$PackageParsingEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 349
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mBootEventReceiver:Lcom/android/car/pm/CarPackageManagerService$BootEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 350
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mCarUxRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mUxRestrictionsListener:Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;

    invoke-virtual {v0, v1}, Lcom/android/car/CarUxRestrictionsManagerService;->unregisterUxRestrictionsChangeListener(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;)V

    .line 351
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/SystemActivityMonitoringService;->registerActivityLaunchListener(Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;)V

    .line 352
    return-void

    .line 347
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public restartTask(I)V
    .locals 1
    .param p1, "taskId"    # I

    .line 171
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    invoke-virtual {v0, p1}, Lcom/android/car/SystemActivityMonitoringService;->restartTask(I)V

    .line 172
    return-void
.end method

.method public setAppBlockingPolicy(Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policy"    # Landroid/car/content/pm/CarAppBlockingPolicy;
    .param p3, "flags"    # I

    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/pm/CarPackageManagerService;->doSetAppBlockingPolicy(Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;IZ)V

    .line 164
    return-void
.end method

.method public declared-synchronized setEnableActivityBlocking(Z)V
    .locals 4
    .param p1, "enable"    # Z

    monitor-enter p0

    .line 950
    :try_start_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 956
    iput-boolean p1, p0, Lcom/android/car/pm/CarPackageManagerService;->mEnableActivityBlocking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 957
    monitor-exit p0

    return-void

    .line 952
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 953
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not have the right signature"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 949
    .end local p1    # "enable":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/pm/CarPackageManagerService;
    throw p1
.end method

.method public startAppBlockingPolicies()V
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 741
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 742
    .local v0, "policyIntent":Landroid/content/Intent;
    const-string v1, "android.car.content.pm.CarAppBlockingPolicyService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 743
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 744
    .local v1, "policyInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_0

    .line 745
    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandler:Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    invoke-static {v2}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->access$500(Lcom/android/car/pm/CarPackageManagerService$PackageHandler;)V

    .line 746
    return-void

    .line 748
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 749
    .local v2, "proxies":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/car/pm/AppBlockingPolicyProxy;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 750
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 751
    .local v5, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-nez v5, :cond_1

    .line 752
    goto :goto_0

    .line 754
    :cond_1
    invoke-virtual {v5}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 755
    iget-object v6, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.car.permission.CONTROL_APP_BLOCKING"

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    .line 757
    goto :goto_0

    .line 759
    :cond_2
    const-string v6, "CAR.PACKAGE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "found policy holding service:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    new-instance v6, Lcom/android/car/pm/AppBlockingPolicyProxy;

    iget-object v7, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7, v5}, Lcom/android/car/pm/AppBlockingPolicyProxy;-><init>(Lcom/android/car/pm/CarPackageManagerService;Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V

    .line 762
    .local v6, "proxy":Lcom/android/car/pm/AppBlockingPolicyProxy;
    invoke-virtual {v6}, Lcom/android/car/pm/AppBlockingPolicyProxy;->connect()V

    .line 763
    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 765
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v6    # "proxy":Lcom/android/car/pm/AppBlockingPolicyProxy;
    :cond_3
    goto :goto_0

    .line 766
    :cond_4
    monitor-enter p0

    .line 767
    :try_start_0
    iput-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mProxies:Ljava/util/LinkedList;

    .line 768
    monitor-exit p0

    .line 769
    return-void

    .line 768
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
