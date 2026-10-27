.class public Lcom/xiaopeng/xuiservice/xapp/XAppHalService;
.super Lcom/xiaopeng/xuiservice/HalServiceBase;
.source "XAppHalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/XAppHalService$XAppHalListener;,
        Lcom/xiaopeng/xuiservice/xapp/XAppHalService$XAppHalServiceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XAppHalService"


# instance fields
.field private mAppModeEngines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mListener:Lcom/xiaopeng/xuiservice/xapp/XAppHalService$XAppHalListener;

.field private mPackageNames:[Ljava/lang/String;

.field private mSharedXpPackageInfos:[Lcom/xiaopeng/app/xpPackageInfo;

.field private mShowToastReceiver:Lcom/xiaopeng/xuiservice/xapp/ShowToastReceiver;

.field private mTopActivities:[Ljava/lang/String;

.field private mXAppAudioFocusModeEngine:Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;

.field private mXAppCarService:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

.field private mXAppCheckPolicy:Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;

.field private mXAppGameModeEngine:Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;

.field private mXAppInputSourcePolicyEngine:Lcom/xiaopeng/xuiservice/xapp/mode/XAppInputSourcePolicyEngine;

.field private mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

.field private mXAppNavigationModeEngine:Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;

.field private mXAppOctopusModeEngine:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/HalServiceBase;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mAppModeEngines:Ljava/util/Map;

    .line 66
    const-string v0, "XAppHalService"

    const-string v1, "started XAppHalService!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->initHandler()V

    .line 68
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppCheckPolicy:Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;

    .line 69
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppCarService:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppCarService:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->start()V

    .line 71
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppGameModeEngine:Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;

    .line 72
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppNavigationModeEngine:Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;

    .line 73
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppAudioFocusModeEngine:Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;

    .line 74
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppOctopusModeEngine:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;

    .line 75
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppInputSourcePolicyEngine;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppInputSourcePolicyEngine;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppInputSourcePolicyEngine:Lcom/xiaopeng/xuiservice/xapp/mode/XAppInputSourcePolicyEngine;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mAppModeEngines:Ljava/util/Map;

    const-class v1, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppGameModeEngine:Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mAppModeEngines:Ljava/util/Map;

    const-class v1, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppNavigationModeEngine:Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mAppModeEngines:Ljava/util/Map;

    const-class v1, Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppAudioFocusModeEngine:Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mAppModeEngines:Ljava/util/Map;

    const-class v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppOctopusModeEngine:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mAppModeEngines:Ljava/util/Map;

    const-class v1, Lcom/xiaopeng/xuiservice/xapp/mode/XAppInputSourcePolicyEngine;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppInputSourcePolicyEngine:Lcom/xiaopeng/xuiservice/xapp/mode/XAppInputSourcePolicyEngine;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 82
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/ShowToastReceiver;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/ShowToastReceiver;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mShowToastReceiver:Lcom/xiaopeng/xuiservice/xapp/ShowToastReceiver;

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XAppHalService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppHalService$1;

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;-><init>()V

    return-void
.end method

.method private dispatchEventToListener(Lcom/xiaopeng/xuiservice/xapp/XAppHalService$XAppHalListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/XAppHalService$XAppHalListener;

    .line 239
    const-string v0, "XAppHalService"

    const-string v1, "handleHalEvents event:"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppHalService;
    .locals 1

    .line 97
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService$XAppHalServiceHolder;->sInstance:Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    return-object v0
.end method

.method private getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.xiaopeng"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 152
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private initAppStatusProvider()V
    .locals 2

    .line 124
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->isLockedBootComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "XAppHalService"

    const-string v1, "lockedBootComplete!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->getInstance()Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;

    .line 128
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XAppHalService$SlyR5jeytsing5X-lLt0xcwKDi8;->INSTANCE:Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XAppHalService$SlyR5jeytsing5X-lLt0xcwKDi8;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->addLockedBootCompleteTask(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method

.method private initHandler()V
    .locals 2

    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "XAppHalService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 88
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService$1;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppHalService$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppHalService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mHandler:Landroid/os/Handler;

    .line 94
    return-void
.end method

.method static synthetic lambda$initAppStatusProvider$0()V
    .locals 2

    .line 129
    const-string v0, "XAppHalService"

    const-string v1, "receiver LockedBootComplete!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->getInstance()Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;

    .line 131
    return-void
.end method

.method private onSharedActivityChanged([Ljava/lang/String;[Lcom/xiaopeng/app/xpPackageInfo;[Ljava/lang/String;)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "packageInfos"    # [Lcom/xiaopeng/app/xpPackageInfo;
    .param p3, "topActivities"    # [Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->onSharedActivityChanged([Ljava/lang/String;[Lcom/xiaopeng/app/xpPackageInfo;[Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method private onSharedPackageInfoChanged([Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 2
    .param p1, "packageInfos"    # [Lcom/xiaopeng/app/xpPackageInfo;

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mAppModeEngines:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;

    .line 136
    .local v1, "engine":Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;->onSharedPackageInfoChanged([Lcom/xiaopeng/app/xpPackageInfo;)V

    .line 137
    .end local v1    # "engine":Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;
    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method private registerActivityChangedEvent()V
    .locals 0

    .line 121
    return-void
.end method


# virtual methods
.method public checkAppPolicy(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppCheckPolicy:Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->checkAppPolicy(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public checkAppStartWithPrompt(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppCheckPolicy:Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->checkAppStartWithPrompt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public closeCancelableDialog()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->closeCancelableDialog()V

    .line 226
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 244
    const-string v0, "*XApp HAL*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public getAppType(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getAppType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAppUsedLimitEnable()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppCheckPolicy:Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->getAppUsedLimitEnable()Z

    move-result v0

    return v0
.end method

.method public getCarGearLevel()I
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppCheckPolicy:Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->getCarGearLevel()I

    move-result v0

    return v0
.end method

.method public getInstalledAppList(I)Ljava/util/List;
    .locals 1
    .param p1, "appType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstalledAppList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getModeEngineImpl(Ljava/lang/Class;)Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 249
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mAppModeEngines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;

    .line 250
    .local v0, "engine":Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    return-object v0

    .line 251
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown engine mode class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleHalEvents()V
    .locals 1

    .line 230
    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mListener:Lcom/xiaopeng/xuiservice/xapp/XAppHalService$XAppHalListener;

    .line 232
    .local v0, "listener":Lcom/xiaopeng/xuiservice/xapp/XAppHalService$XAppHalListener;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->dispatchEventToListener(Lcom/xiaopeng/xuiservice/xapp/XAppHalService$XAppHalListener;)V

    .line 236
    :cond_0
    return-void

    .line 232
    .end local v0    # "listener":Lcom/xiaopeng/xuiservice/xapp/XAppHalService$XAppHalListener;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 2

    .line 108
    const-string v0, "XAppHalService"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mAppModeEngines:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;

    .line 110
    .local v1, "engine":Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;->init()V

    .line 111
    .end local v1    # "engine":Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;
    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppCheckPolicy:Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppCheckPolicy:Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->init()V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mShowToastReceiver:Lcom/xiaopeng/xuiservice/xapp/ShowToastReceiver;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/ShowToastReceiver;->register()V

    .line 116
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->initAppStatusProvider()V

    .line 117
    return-void
.end method

.method public onAppConfigUpload(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppOctopusModeEngine:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->onAppConfigUpload(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->updateBasePackageInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "res":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->setXpPackageInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    goto :goto_0

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XAppHalService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v0, -0x1

    .line 205
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public onAppModeChanged(Ljava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 186
    const-string v0, "XAppHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppModeChanged, pkgName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    if-eqz p2, :cond_0

    .line 188
    const-string v0, "XAppHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppModeChanged, info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mAppModeEngines:Ljava/util/Map;

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

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;

    .line 191
    .local v1, "engine":Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;
    invoke-virtual {v1, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;->onAppInfoChange(Ljava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    .line 192
    .end local v1    # "engine":Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;
    goto :goto_0

    .line 193
    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 157
    const-string v0, "XAppHalService"

    const-string v1, "release()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mListener:Lcom/xiaopeng/xuiservice/xapp/XAppHalService$XAppHalListener;

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mAppModeEngines:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;

    .line 160
    .local v1, "engine":Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;->release()V

    .line 161
    .end local v1    # "engine":Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;
    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mShowToastReceiver:Lcom/xiaopeng/xuiservice/xapp/ShowToastReceiver;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/ShowToastReceiver;->unRegister()V

    .line 163
    return-void
.end method

.method public setAppUsedLimitEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mXAppCheckPolicy:Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->setAppUsedLimitEnable(Z)V

    .line 167
    return-void
.end method

.method public setListener(Lcom/xiaopeng/xuiservice/xapp/XAppHalService$XAppHalListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/XAppHalService$XAppHalListener;

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->mListener:Lcom/xiaopeng/xuiservice/xapp/XAppHalService$XAppHalListener;

    .line 103
    monitor-exit p0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateAppScreenFlag(I)V
    .locals 3
    .param p1, "gearLevel"    # I

    .line 210
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->updateAppScreenFlag(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XAppHalService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
