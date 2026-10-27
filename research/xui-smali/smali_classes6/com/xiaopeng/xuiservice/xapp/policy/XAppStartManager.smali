.class public Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;
.super Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;
.source "XAppStartManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$InstanceHolder;
    }
.end annotation


# static fields
.field private static final BROADCAST_SET_APP_WINDOW:Ljava/lang/String; = "com.xiaopeng.intent.action.ACTIVITY_SIZE_CHANGED"

.field public static final CHECK_TYPE_SHOW_DIALOG:I = 0x1

.field public static final CHECK_TYPE_SHOW_NONE:I = -0x1

.field public static final CHECK_TYPE_SHOW_TOAST:I = 0x0

.field private static final D_GEAR_VALUE:I = 0x1

.field private static final INVALID_GEAR_VALUE:I = 0x0

.field private static final KEY_APPUSE_LIMIT_ENABLE:Ljava/lang/String; = "isAppUsedLimitEnable"

.field private static final KEY_APP_SCREEN_FLOW:Ljava/lang/String; = "app_screen_flow"

.field private static final KEY_XPILOT_LIMIT_ENABLE:Ljava/lang/String; = "isAppXpilotLimitEnable"

.field private static final KEY_XPILOT_MODE:Ljava/lang/String; = "curXPilotStatus"

.field private static final N_GEAR_VALUE:I = 0x2

.field private static final P_GEAR_VALUE:I = 0x4

.field private static final R_GEAR_VALUE:I = 0x3

.field public static final SHARED_FROM_USER:Ljava/lang/String; = "user"

.field public static final START_ALLOW:I = 0x0

.field public static final START_APP_KARAOKE_DENIED:I = 0xc

.field public static final START_APP_PARK_DENIED:I = 0xb

.field public static final START_APP_PARK_DESKTOP_DENIED:I = 0xd

.field public static final START_FORCE_DIALOG_DENIED:I = 0x8

.field public static final START_FORCE_GEAR_DENIED:I = 0x3

.field public static final START_FORCE_UPDATED_DENIED:I = 0x6

.field public static final START_FULLSCREEN_ADAPTION_DENIED:I = 0xa

.field public static final START_FULLSCREEN_DENIED:I = 0x1

.field public static final START_FULL_SCREEN_MODE_DENIED:I = 0xe

.field public static final START_GEAR_DENIED:I = 0x2

.field public static final START_MODE_DENIED:I = 0x7

.field public static final START_SCENE_DENIED:I = 0xf

.field public static final START_SCREEN_DENIED:I = 0x11

.field public static final START_SUSPEND_DENIED:I = 0x5

.field public static final START_TRANSFER_DENIED:I = 0x10

.field public static final START_XPILOT_DENIED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "XAppCheckPolicyStart"

.field private static final WINDOW_FULLSCREEN:I = 0x1

.field private static final WINDOW_NORMAL:I

.field private static enableWindowAdaptive:Z

.field private static mCurGear:I

.field private static mCurXPilotMode:I


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

.field private mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mGearLimitXpPackages:[Ljava/lang/String;

.field private mNeedCheckMultiScreenPkgArray:[Ljava/lang/String;

.field private mPromptMsgArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->enableWindowAdaptive:Z

    .line 91
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mCurGear:I

    .line 93
    sput v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mCurXPilotMode:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 123
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$1;

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 781
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$3;-><init>(Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mWindowManager:Landroid/view/WindowManager;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mNeedCheckMultiScreenPkgArray:[Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mGearLimitXpPackages:[Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->initMsgArray()V

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$1;

    .line 52
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 52
    sget v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mCurXPilotMode:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 52
    sput p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mCurXPilotMode:I

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->handleCarStatusChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->showSafePrivacyPage()V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    .line 52
    sget v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mCurGear:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 52
    sput p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mCurGear:I

    return p0
.end method

.method private checkAppScreenStatus(II)I
    .locals 4
    .param p1, "screenId"    # I
    .param p2, "screenLevelFlags"    # I

    .line 556
    const/4 v0, 0x0

    .line 557
    .local v0, "result":I
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getFlagMask(I)I

    move-result v1

    invoke-static {p2, v1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->isLevelFlagSupport(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    const/16 v0, 0x11

    .line 560
    :cond_0
    const-string v1, "XAppCheckPolicyStart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAppScreenStatus result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return v0
.end method

.method private checkAppScreenStatus(ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)I
    .locals 2
    .param p1, "screenId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 551
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->isAppSupportScreen(Ljava/lang/String;I)Z

    move-result v0

    .line 552
    .local v0, "support":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    :goto_0
    return v1
.end method

.method private checkAppStartGearStatus(I)I
    .locals 1
    .param p1, "gearLevelFlags"    # I

    .line 530
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getAppUsedLimitEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkGearPolicy(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkAppStartGearStatus(Ljava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "packageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 476
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 477
    return v1

    .line 479
    :cond_0
    const/4 v0, -0x1

    .line 480
    .local v0, "gearLevelFlags":I
    if-eqz p2, :cond_2

    .line 482
    iget v2, p2, Lcom/xiaopeng/app/xpPackageInfo;->versionCode:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    .line 483
    iget v1, p2, Lcom/xiaopeng/app/xpPackageInfo;->gearLevel:I

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkOldAppStartGearStatus(I)I

    move-result v1

    return v1

    .line 485
    :cond_1
    iget v0, p2, Lcom/xiaopeng/app/xpPackageInfo;->gearLevelFlags:I

    goto :goto_0

    .line 486
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->isNeedGearCheckXpApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 487
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getFlagMask(I)I

    move-result v0

    .line 489
    :cond_3
    :goto_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppStartGearStatus(I)I

    move-result v1

    :goto_1
    return v1
.end method

.method private checkAppStartKaraokeStatus(IILjava/lang/String;)I
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "appType"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 332
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasMultiScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    if-ne p2, v0, :cond_1

    .line 334
    if-nez p1, :cond_0

    .line 335
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getSubScreenDeviceId()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 337
    .local v0, "otherDisplayId":I
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getKaraokePkgForeground(I)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "otherKPkgName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 339
    const/16 v1, 0xc

    return v1

    .line 342
    .end local v0    # "otherDisplayId":I
    .end local v2    # "otherKPkgName":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private checkAppStartModeStatus(Ljava/lang/String;ILandroid/os/Bundle;)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "screenId"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 395
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getInstance()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->canAppLaunch(Ljava/lang/String;I)Z

    move-result v0

    .line 396
    .local v0, "canLaunch":Z
    const-string v1, "XAppCheckPolicyStart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAppStartModeStatus canAppLaunch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " &screenId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " &packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    if-nez v0, :cond_0

    .line 398
    const/4 v1, 0x7

    return v1

    .line 400
    :cond_0
    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 401
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getInstance()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v1, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->queryResize(IIZZ)I

    move-result v2

    .line 403
    .local v2, "resizeStatus":I
    const-string v3, "XAppCheckPolicyStart"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSceneStatus queryResize result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 405
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->startAppWithPolicy(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v1

    .line 406
    .local v1, "sceneCode":I
    return v1

    .line 409
    .end local v1    # "sceneCode":I
    .end local v2    # "resizeStatus":I
    :cond_1
    return v1
.end method

.method private checkAppStartMultiScreenStatus(ILcom/xiaopeng/app/xpPackageInfo;Ljava/lang/String;)I
    .locals 7
    .param p1, "screenId"    # I
    .param p2, "packageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 352
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasMultiScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, p3, p2}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->needCheckMultiScreenStatus(Ljava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    if-nez p1, :cond_0

    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getSubScreenDeviceId()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 354
    .local v0, "otherScreenId":I
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getTopActivityInfo(I)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    move-result-object v2

    .line 355
    .local v2, "topActivityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    if-eqz v2, :cond_2

    .line 356
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v3

    .line 357
    .local v3, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 358
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    .line 359
    .local v5, "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 360
    const-string v1, "XAppCheckPolicyStart"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAppStartMultiScreenStatus info :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", screenId :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/16 v1, 0x10

    return v1

    .line 363
    .end local v5    # "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    :cond_1
    goto :goto_1

    .line 367
    .end local v0    # "otherScreenId":I
    .end local v2    # "topActivityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    .end local v3    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    :cond_2
    return v1
.end method

.method private checkAppStartXPilotStatus(Lcom/xiaopeng/app/xpPackageInfo;)I
    .locals 3
    .param p1, "packageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 300
    sget v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mCurXPilotMode:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getAppXPilotLimitEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/xiaopeng/app/xpPackageInfo;->isFullscreen(Lcom/xiaopeng/app/xpPackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "XAppCheckPolicyStart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAppStartXPilotStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mCurXPilotMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x4

    return v0

    .line 304
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkAppStoreStatus(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, "result":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->getInstance()Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->queryAppOnlineStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 567
    .local v1, "storeStatus":I
    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_0

    .line 568
    const/4 v0, 0x5

    goto :goto_0

    .line 569
    :cond_0
    const/16 v2, 0x41b

    if-ne v1, v2, :cond_1

    .line 570
    const/4 v0, 0x6

    .line 572
    :cond_1
    :goto_0
    const-string v2, "XAppCheckPolicyStart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAppStoreStatus result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    return v0
.end method

.method private checkDialogStatus(I)I
    .locals 8
    .param p1, "screenId"    # I

    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, "result":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 579
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "topOnly"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 580
    const-string v2, "screenId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 581
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getShowDialog(I)Lcom/xiaopeng/app/xpDialogInfo;

    move-result-object v2

    .line 582
    .local v2, "dialog":Lcom/xiaopeng/app/xpDialogInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/xiaopeng/app/xpDialogInfo;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "null"

    .line 583
    .local v4, "dialogInfo":Ljava/lang/String;
    :goto_0
    const-string v5, "XAppCheckPolicyStart"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get screen:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " top dialog is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    if-eqz v2, :cond_2

    iget-boolean v5, v2, Lcom/xiaopeng/app/xpDialogInfo;->hasFocus:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v2, Lcom/xiaopeng/app/xpDialogInfo;->visible:Z

    if-eqz v5, :cond_2

    .line 585
    iget-boolean v5, v2, Lcom/xiaopeng/app/xpDialogInfo;->closeOutside:Z

    if-eqz v5, :cond_1

    .line 586
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->dismissDialogAsync(Landroid/os/Bundle;)V

    goto :goto_1

    .line 588
    :cond_1
    const/16 v0, 0x8

    .line 589
    invoke-direct {p0, p1, v3}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->showDialogDeniedToast(IZ)V

    .line 592
    :cond_2
    :goto_1
    const-string v3, "XAppCheckPolicyStart"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDialogStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return v0
.end method

.method private checkGearPolicy(I)Z
    .locals 4
    .param p1, "gearLevelFlags"    # I

    .line 534
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getCarGearLevel()I

    move-result v0

    .line 535
    .local v0, "currentGear":I
    const-string v1, "XAppCheckPolicyStart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkGearNewPolicy currentGear:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " &gearFlags:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    if-eqz v0, :cond_0

    .line 537
    add-int/lit8 v1, v0, -0x1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getFlagMask(I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->isLevelFlagSupport(II)Z

    move-result v1

    return v1

    .line 539
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private checkOldAppGearStatus(I)Z
    .locals 4
    .param p1, "gearLevel"    # I

    .line 511
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getCarGearLevel()I

    move-result v0

    .line 512
    .local v0, "currentGear":I
    const-string v1, "XAppCheckPolicyStart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOldAppGearStatus currentGear:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " &gearLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 517
    :cond_0
    if-eq p1, v1, :cond_2

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 521
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 518
    :cond_2
    :goto_0
    return v1

    .line 514
    :cond_3
    :goto_1
    return v1
.end method

.method private checkOldAppStartGearStatus(I)I
    .locals 1
    .param p1, "gearLevel"    # I

    .line 507
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getAppUsedLimitEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkOldAppGearStatus(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkSceneStatus(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 314
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 315
    return v0

    .line 317
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getInstance()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, v0, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->queryResize(IIZZ)I

    move-result v1

    .line 319
    .local v1, "resizeStatus":I
    const-string v2, "XAppCheckPolicyStart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSceneStatus queryResize result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 321
    return v0

    .line 324
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->startAppWithPolicy(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v2

    .line 325
    .local v2, "sceneCode":I
    if-nez v2, :cond_2

    .line 326
    return v0

    .line 328
    :cond_2
    const/16 v0, 0xf

    return v0
.end method

.method public static get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;
    .locals 1

    .line 132
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$InstanceHolder;->access$200()Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    move-result-object v0

    return-object v0
.end method

.method private getAppScreenFlowLimitEnable()Z
    .locals 3

    .line 714
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_screen_flow"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static getFlagMask(I)I
    .locals 1
    .param p0, "flag"    # I

    .line 468
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method

.method private getModeDesText(I)Ljava/lang/String;
    .locals 7
    .param p1, "screenId"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches"
        }
    .end annotation

    .line 680
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e00fb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, "modeDes":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getInstance()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getRunningScenario(I)Ljava/lang/String;

    move-result-object v1

    .line 682
    .local v1, "mode":Ljava/lang/String;
    const-string v2, "XAppCheckPolicyStart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scenario_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "string"

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 685
    .local v2, "resId":I
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 688
    goto :goto_0

    .line 686
    :catch_0
    move-exception v3

    .line 687
    .local v3, "ex":Ljava/lang/Exception;
    const-string v4, "XAppCheckPolicyStart"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getModeDesText:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0e00fc

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 633
    const/4 v0, 0x0

    .line 635
    .local v0, "packageInfo":Lcom/xiaopeng/app/xpPackageInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v1

    move-object v0, v1

    .line 636
    if-nez v0, :cond_0

    .line 637
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getAppListManager(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    move-result-object v1

    .line 638
    .local v1, "appListManager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    if-eqz v1, :cond_0

    .line 639
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 644
    .end local v1    # "appListManager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    :cond_0
    goto :goto_0

    .line 642
    :catch_0
    move-exception v1

    .line 643
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 645
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private getPrimaryTopPkgName()Ljava/lang/String;
    .locals 2

    .line 178
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getTopPackage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStartLimitMessage(II)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # I
    .param p2, "screenId"    # I

    .line 671
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 672
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getModeDesText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mPromptMsgArray:Landroid/util/SparseArray;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 675
    .local v0, "msgId":I
    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private handle3rdApp(Lcom/xiaopeng/app/xpPackageInfo;I)I
    .locals 5
    .param p1, "info"    # Lcom/xiaopeng/app/xpPackageInfo;
    .param p2, "currentLevel"    # I

    .line 607
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 609
    .local v2, "isLimitedGear":Z
    :goto_1
    iget v3, p1, Lcom/xiaopeng/app/xpPackageInfo;->gearLevel:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    if-eqz v2, :cond_2

    .line 610
    const-string v0, "XAppCheckPolicyStart"

    const-string v1, "This Application is forced not allowed running in non-p gear"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const/4 v0, 0x3

    return v0

    .line 613
    :cond_2
    iget v3, p1, Lcom/xiaopeng/app/xpPackageInfo;->screenAdaption:I

    if-ne v3, v1, :cond_3

    sget-boolean v3, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->enableWindowAdaptive:Z

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v0

    .line 614
    .local v3, "isAdaptiveEnable":Z
    :goto_2
    invoke-static {p1}, Lcom/xiaopeng/app/xpPackageInfo;->isFullscreen(Lcom/xiaopeng/app/xpPackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 615
    if-eqz v2, :cond_6

    .line 616
    if-eqz v3, :cond_4

    .line 617
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->setAppWindow(I)V

    goto :goto_3

    .line 618
    :cond_4
    iget v4, p1, Lcom/xiaopeng/app/xpPackageInfo;->limitFullScreenInDGear:I

    if-ne v4, v1, :cond_6

    .line 620
    const-string v0, "XAppCheckPolicyStart"

    const-string v4, "This Fullscreen Application is forced not allowed running in non-p gear"

    invoke-static {v0, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    return v1

    .line 625
    :cond_5
    if-eqz v3, :cond_6

    const/4 v4, 0x4

    if-ne p2, v4, :cond_6

    .line 626
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->setAppWindow(I)V

    .line 629
    :cond_6
    :goto_3
    return v0
.end method

.method private handleCarStatusChanged()V
    .locals 4

    .line 170
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getPrimaryTopPkgName()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "topPkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    const-string v1, "XAppCheckPolicyStart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCarStatusChanged() topPkgName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppResume(Ljava/lang/String;I)V

    .line 175
    :cond_0
    return-void
.end method

.method private initMsgArray()V
    .locals 4

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mPromptMsgArray:Landroid/util/SparseArray;

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mPromptMsgArray:Landroid/util/SparseArray;

    const v1, 0x7f0e0101

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mPromptMsgArray:Landroid/util/SparseArray;

    const v1, 0x7f0e0103

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mPromptMsgArray:Landroid/util/SparseArray;

    const v1, 0x7f0e0104

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mPromptMsgArray:Landroid/util/SparseArray;

    const v1, 0x7f0e0106

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mPromptMsgArray:Landroid/util/SparseArray;

    const v1, 0x7f0e00fd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mPromptMsgArray:Landroid/util/SparseArray;

    const v1, 0x7f0e00fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mPromptMsgArray:Landroid/util/SparseArray;

    const v1, 0x7f0e00ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mPromptMsgArray:Landroid/util/SparseArray;

    const v1, 0x7f0e00eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mPromptMsgArray:Landroid/util/SparseArray;

    const v1, 0x7f0e00f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mPromptMsgArray:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mPromptMsgArray:Landroid/util/SparseArray;

    const v1, 0x7f0e00fa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    return-void
.end method

.method public static isFullscreen(I)Z
    .locals 5
    .param p0, "screenFlag"    # I

    .line 761
    const/4 v0, 0x0

    .line 762
    .local v0, "hideStatus":Z
    const/4 v1, 0x0

    .line 763
    .local v1, "hideNavigation":Z
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 764
    const/4 v0, 0x1

    .line 766
    :cond_0
    and-int/lit8 v2, p0, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    .line 767
    const/4 v1, 0x1

    .line 769
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private static isLevelFlagSupport(II)Z
    .locals 1
    .param p0, "levelFlags"    # I
    .param p1, "flag"    # I

    .line 543
    and-int v0, p1, p0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNeedGearCheckXpApp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 493
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mGearLimitXpPackages:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 495
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 496
    const/4 v0, 0x1

    return v0

    .line 494
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 500
    :cond_1
    return v1
.end method

.method private needCheckMultiScreenStatus(Ljava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "packageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 376
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 377
    return v0

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mNeedCheckMultiScreenPkgArray:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 381
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 382
    return v0

    .line 380
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 385
    :cond_2
    return v3
.end method

.method private registerObserver()V
    .locals 4

    .line 724
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getCurXPilotStatus()I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mCurXPilotMode:I

    .line 725
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "curXPilotStatus"

    .line 726
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 725
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 728
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isAppUsedLimitEnable"

    .line 729
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 728
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 730
    return-void
.end method

.method private setAppScreenFlowLimitEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 719
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_screen_flow"

    .line 720
    nop

    .line 719
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 721
    return-void
.end method

.method private setAppWindow(I)V
    .locals 3
    .param p1, "windowSize"    # I

    .line 649
    const-string v0, "XAppCheckPolicyStart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAppWindow("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->enableWindowAdaptive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    sget-boolean v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->enableWindowAdaptive:Z

    if-eqz v0, :cond_0

    .line 651
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.intent.action.ACTIVITY_SIZE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 653
    const-string v1, "fullscreen"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 654
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 656
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private showAppForceUpdateDialog(Ljava/lang/String;II)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "state"    # I

    .line 773
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.intent.action.SHOW_APP_UPDATE_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 774
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaopeng.appstore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    const-string v1, "com.xiaopeng.appstore.intent.extra.PACKAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    const-string v1, "com.xiaopeng.appstore.intent.extra.SCREEN"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 777
    const-string v1, "com.xiaopeng.appstore.intent.extra.STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 778
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 779
    return-void
.end method

.method private showDialogDeniedToast(IZ)V
    .locals 4
    .param p1, "screenId"    # I
    .param p2, "sharedEvent"    # Z

    .line 597
    move v0, p1

    .line 598
    .local v0, "displayId":I
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 599
    rsub-int/lit8 v0, p1, 0x1

    .line 601
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mContext:Landroid/content/Context;

    if-nez p1, :cond_1

    .line 602
    const v3, 0x7f0e00f3

    goto :goto_0

    :cond_1
    const v3, 0x7f0e00f6

    .line 601
    :goto_0
    invoke-static {v2, v3, v1, v0}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;III)V

    .line 604
    return-void
.end method

.method private showGearLevelDeniedDialog()V
    .locals 2

    .line 435
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 462
    return-void
.end method

.method private showGearLevelDeniedPrompt()V
    .locals 3

    .line 423
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isSupportRemoveGearLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->showGearLevelDeniedDialog()V

    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e00e9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 429
    :goto_0
    return-void
.end method

.method private showSafePrivacyPage()V
    .locals 5

    .line 416
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 417
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "xiaopeng.smartcontrol.safeprivacy"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 419
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 420
    return-void
.end method

.method private showStartLimitPrompt(II)V
    .locals 4
    .param p1, "deniedType"    # I
    .param p2, "screenId"    # I

    .line 663
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getStartLimitMessage(II)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, "message":Ljava/lang/String;
    const-string v1, "XAppCheckPolicyStart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showStartLimitPrompt msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, p2}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 668
    :cond_0
    return-void
.end method

.method private showTransferConfirmDialog(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "screenId"    # I

    .line 465
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->showTransferConfirmDialog(Landroid/content/Intent;ILcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;)V

    .line 466
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .line 733
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 734
    return-void
.end method


# virtual methods
.method public checkAppOnResume(Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 209
    if-eqz p1, :cond_0

    .line 210
    iget-object v0, p1, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppStartGearStatus(Ljava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)I

    move-result v0

    .line 211
    .local v0, "gearResult":I
    if-eqz v0, :cond_0

    .line 212
    const-string v1, "XAppCheckPolicyStart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAppOnResume packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " gearLevel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/xiaopeng/app/xpPackageInfo;->gearLevelFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->stopPackage(ILjava/lang/String;)V

    .line 214
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->showGearLevelDeniedPrompt()V

    .line 217
    .end local v0    # "gearResult":I
    :cond_0
    return-void
.end method

.method public checkAppPolicy(Ljava/lang/String;ILandroid/os/Bundle;)I
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "screenId"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "transferEvent":Z
    const/4 v1, 0x1

    .line 222
    .local v1, "checkGear":Z
    const/4 v2, 0x0

    .line 223
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_1

    .line 224
    const-string v3, "intent"

    const/4 v4, 0x0

    invoke-static {p3, v3, v4}, Lcom/xiaopeng/util/xpTextUtils;->getBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/content/Intent;

    .line 226
    if-eqz v2, :cond_0

    const-string v3, "secondary"

    invoke-virtual {v2}, Landroid/content/Intent;->getAreaType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    const/4 v1, 0x0

    .line 228
    const/4 v0, 0x1

    goto :goto_0

    .line 230
    :cond_0
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/util/IntentParamUtil;->isTransferEvent(Landroid/content/Intent;)Z

    move-result v0

    .line 233
    :cond_1
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v10, v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :goto_2
    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    move-object v6, p3

    move v9, p2

    move v11, v1

    invoke-virtual/range {v3 .. v11}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppStartWithPrompt(Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;IZIZZ)I

    move-result v3

    .line 235
    .local v3, "result":I
    return v3
.end method

.method public checkAppResume(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "screenId"    # I

    .line 197
    if-nez p2, :cond_0

    .line 198
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v0

    .line 199
    .local v0, "packageInfo":Lcom/xiaopeng/app/xpPackageInfo;
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppStartGearStatus(Ljava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)I

    move-result v1

    .line 200
    .local v1, "gearResult":I
    if-eqz v1, :cond_0

    .line 201
    const-string v2, "XAppCheckPolicyStart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAppResume packageName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", screenId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", has force stop."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->stopPackage(ILjava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->showGearLevelDeniedPrompt()V

    .line 206
    .end local v0    # "packageInfo":Lcom/xiaopeng/app/xpPackageInfo;
    .end local v1    # "gearResult":I
    :cond_0
    return-void
.end method

.method public checkAppStartMultiScreenStatus(ILjava/lang/String;)Z
    .locals 2
    .param p1, "screenId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 371
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v0

    .line 372
    .local v0, "info":Lcom/xiaopeng/app/xpPackageInfo;
    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppStartMultiScreenStatus(ILcom/xiaopeng/app/xpPackageInfo;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public checkAppStartStatus(Ljava/lang/String;Landroid/os/Bundle;ZIZZZ)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "checkStore"    # Z
    .param p4, "screenId"    # I
    .param p5, "checkMultiScreen"    # Z
    .param p6, "checkGear"    # Z
    .param p7, "checkScreen"    # Z

    .line 271
    invoke-direct {p0, p1, p4, p2}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppStartModeStatus(Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v0

    .line 272
    .local v0, "result":I
    const/16 v1, 0xfa1

    if-ne v0, v1, :cond_0

    .line 273
    const/16 v1, 0xf

    return v1

    .line 275
    :cond_0
    const/4 v1, 0x0

    .line 276
    .local v1, "packageInfo":Lcom/xiaopeng/app/xpPackageInfo;
    if-nez v0, :cond_4

    .line 277
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v1

    .line 278
    if-nez p4, :cond_1

    if-eqz p6, :cond_1

    .line 279
    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppStartGearStatus(Ljava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)I

    move-result v0

    .line 282
    :cond_1
    if-nez v0, :cond_2

    if-eqz p7, :cond_2

    .line 283
    invoke-direct {p0, p4, p1, v1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppScreenStatus(ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)I

    move-result v0

    .line 286
    :cond_2
    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    .line 287
    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    .line 288
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppStoreStatus(Ljava/lang/String;)I

    move-result v0

    .line 290
    :cond_3
    if-nez v0, :cond_4

    if-eqz p5, :cond_4

    .line 291
    iget v2, v1, Lcom/xiaopeng/app/xpPackageInfo;->appType:I

    iget-object v3, v1, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p4, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppStartKaraokeStatus(IILjava/lang/String;)I

    move-result v0

    .line 295
    :cond_4
    const-string v2, "XAppCheckPolicyStart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAppStartStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return v0
.end method

.method public checkAppStartWithPrompt(Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;IZIZZ)I
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "showType"    # I
    .param p5, "checkStore"    # Z
    .param p6, "screenId"    # I
    .param p7, "checkMultiScreen"    # Z
    .param p8, "checkGear"    # Z

    move-object v8, p0

    move/from16 v9, p6

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x0

    return v0

    .line 243
    :cond_0
    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p3

    move v3, p5

    move v4, v9

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppStartStatus(Ljava/lang/String;Landroid/os/Bundle;ZIZZZ)I

    move-result v0

    .line 244
    .local v0, "startResult":I
    const-string v1, "XAppCheckPolicyStart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAppStartWithPrompt result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", screenId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", showType :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", checkMultiScreen :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " &checkGear:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p8

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    if-eqz v0, :cond_5

    .line 247
    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 250
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 251
    invoke-direct {v8}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->showGearLevelDeniedPrompt()V

    goto :goto_2

    .line 252
    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 253
    move-object v1, p2

    invoke-direct {v8, v1, v9}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->showTransferConfirmDialog(Landroid/content/Intent;I)V

    .line 258
    :goto_0
    move-object v2, p1

    goto :goto_3

    .line 255
    :cond_3
    move-object v1, p2

    invoke-direct {v8, v0, v9}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->showStartLimitPrompt(II)V

    goto :goto_0

    .line 249
    :cond_4
    :goto_1
    move-object v1, p2

    move-object v2, p1

    invoke-direct {v8, v2, v9, v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->showAppForceUpdateDialog(Ljava/lang/String;II)V

    goto :goto_3

    .line 258
    :cond_5
    :goto_2
    move-object v2, p1

    move-object v1, p2

    :goto_3
    return v0
.end method

.method public checkAppStartWithPrompt(Ljava/lang/String;Z)I
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "checkAppStore"    # Z

    .line 182
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppStartWithPrompt(Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;IZIZZ)I

    move-result v0

    .line 185
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 186
    const/4 v1, 0x0

    invoke-static {v1, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/util/XAppBiLogUtil;->sendAppUseDeniedDataLog(IILjava/lang/String;)V

    .line 188
    :cond_0
    return v0
.end method

.method public getAppUsedLimitEnable()Z
    .locals 3

    .line 703
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isAppUsedLimitEnable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public getAppXPilotLimitEnable()Z
    .locals 3

    .line 698
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isAppXpilotLimitEnable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public getCarGearLevel()I
    .locals 1

    .line 659
    sget v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mCurGear:I

    return v0
.end method

.method public getCurXPilotStatus()I
    .locals 3

    .line 693
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "curXPilotStatus"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected initCarListener()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 153
    return-void
.end method

.method public isFullScreenApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 753
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v0

    .line 754
    .local v0, "info":Lcom/xiaopeng/app/xpPackageInfo;
    if-eqz v0, :cond_0

    .line 755
    invoke-static {v0}, Lcom/xiaopeng/app/xpPackageInfo;->isFullscreen(Lcom/xiaopeng/app/xpPackageInfo;)Z

    move-result v1

    return v1

    .line 757
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isInPGearLevel()Z
    .locals 2

    .line 547
    sget v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mCurGear:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInSpecialDeniedStatus(I)Z
    .locals 2
    .param p1, "displayId"    # I

    .line 192
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getInstance()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getRunningScenario(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "mode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "normal_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onCarManagerInited()V
    .locals 3

    .line 157
    const-string v0, "XAppCheckPolicyStart"

    const-string v1, "onCarManagerInited()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v0, "xp_vcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vcu/CarVcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getDisplayGearLevel()I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mCurGear:I

    .line 162
    const-string v0, "XAppCheckPolicyStart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCarManagerInited getDisplayGearLevel :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mCurGear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 167
    :cond_0
    :goto_0
    return-void
.end method

.method protected onInit()V
    .locals 0

    .line 738
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->registerObserver()V

    .line 739
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->removeVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 744
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->unregisterObserver()V

    .line 745
    return-void
.end method

.method public setAppUsedLimitEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 708
    const-string v0, "XAppCheckPolicyStart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAppUsedLimitEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isAppUsedLimitEnable"

    .line 710
    nop

    .line 709
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 711
    return-void
.end method
