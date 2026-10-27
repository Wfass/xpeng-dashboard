.class public Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
.super Ljava/lang/Object;
.source "UserScenarioConfiger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$PanelCheckResult;,
        Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;,
        Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;,
        Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;,
        Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$startActivityCheckRunnable;
    }
.end annotation


# static fields
.field public static DISABLE_SECOND_SCREEN_STATE:Ljava/lang/String; = null

.field protected static final EXIT_TYPE_REAL:I = 0x0

.field protected static final EXIT_TYPE_SCREEN_SWITCH:I = 0x1

.field private static final INVALID_CMD:Ljava/lang/String; = ""

.field private static final KEY_HVAC_CC_STATUS:Ljava/lang/String; = "hvac_carcontrol_mode_status"

.field private static final KEY_THEME_ANIM_DISABLE:Ljava/lang/String; = "theme_animation_disable"

.field public static final LAUNCH_PANEL_NOT_MATCH:I = 0x1

.field public static final LAUNCH_SAME_PANEL_ALLOW:I = 0x2

.field public static final LAUNCH_SAME_PANEL_FORBIDDEN:I = 0x3

.field private static final PANEL_ID_MAIN:I = 0x0

.field private static final PANEL_ID_SUB:I = 0x2

.field public static final PROP_CONFIGER_STATUS:Ljava/lang/String; = "sys.xiaopeng.userscenario"

.field public static RESTART_SECOND_SCREEN_STATE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "UserScenarioConfiger"

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mConfigerBinder:Landroid/os/Binder;

.field private static mContentResolver:Landroid/content/ContentResolver;

.field private static mContext:Landroid/content/Context;

.field private static mPowerManager:Landroid/os/PowerManager;

.field private static mVoiceDisabled:Z

.field private static mWindowManagerFactory:Lcom/xiaopeng/view/WindowManagerFactory;


# instance fields
.field private LIMIT_DIALOG_BIT:I

.field private LIMIT_NOTIFICATION_BIT:I

.field private LIMIT_POP_PANEL_BIT:I

.field private LIMIT_QUICK_PANEL_BIT:I

.field private LIMIT_TOAST_BIT:I

.field barVisibleRunnable:Ljava/lang/Runnable;

.field private blockScenarios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iNotificationManager:Landroid/app/INotificationManager;

.field private isSpliteBeforeEnter:Z

.field private mAirConditionFlag:I

.field private mAllowExit:Z

.field private mAppConfigs:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;

.field private mAppFlyLimit:I

.field private mArHud:I

.field private mArHudStatus:I

.field private mBackComponentName:Landroid/content/ComponentName;

.field private mBackConfig:I

.field private mBrightnessIcm:I

.field private mBrightnessPanel:I

.field private mBrightnessPanel_1:I

.field private mComparedVolume:I

.field private mConflictHintFlag:I

.field private mConflictHintRes:Ljava/lang/String;

.field private mCurrentFriend:Ljava/lang/String;

.field private mDialogConfig:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;

.field private mDialogMessage:Ljava/lang/String;

.field private mDisableSecondScreen:I

.field private mDynamicScreen:I

.field private mDynamicScreenId:I

.field private mEnterDoor:I

.field private mEnterExtra:Ljava/lang/String;

.field private mEnterGear:I

.field private mExitDialogConfig:Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

.field private mExitDialogConfirm:I

.field private mExitDoor:I

.field private mExitExtra:Ljava/lang/String;

.field private mExitGear:I

.field private mExitReason:Ljava/lang/String;

.field private mExitRse:I

.field private mExitScreenOn:I

.field private mExitVoice:I

.field private mExtra:Ljava/lang/String;

.field private mFriendScenarioList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupIdx:I

.field private mLastLaunchPackage:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mLaunchSource:Ljava/lang/String;

.field private mLaunchType:I

.field private mLightMode:I

.field private mLimitAppExit:I

.field private mMediaKeyNeed:Z

.field private mNeedExitDialog:Z

.field private mNotificationLevel:I

.field private mNotifyIcm:Z

.field private mPanelCover:I

.field private mPanelScreenIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPriority:I

.field private mRequestExitReason:Ljava/lang/String;

.field private mRestoreAreaType:Z

.field private mRestoreComponent:[Landroid/content/ComponentName;

.field private mRestoreNotificationLevel:I

.field private mRestoreTask:I

.field private mRetryFullCount:I

.field private mRetryNotFrontCount:I

.field private mRseAction:I

.field private mSaveData:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;

.field private mScenarioName:Ljava/lang/String;

.field private mScenarioPid:I

.field private mScenarioSubName:Ljava/lang/String;

.field private mScreenModeConfig:I

.field private mSeatWelcomeDisable:I

.field private mSecondScreenId:I

.field private mSecondScreensaver:I

.field private mShouldDoScreenMode:I

.field private mSoundMode:I

.field private mSoundModeBefore:I

.field private mStartActivity:Ljava/lang/String;

.field private volatile mStatus:I

.field private mStopVoiceDialog:Z

.field private mSwitchScreenListener:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SwitchScreenListener;

.field private mSystemLimit:I

.field private mTargetVolume:I

.field private mThemeAnimDisable:I

.field private mVoiceMode:I

.field private mVolumeBtChanged:Z

.field private mVolumeBtDynamic:I

.field private mVolumeChanged:Z

.field private mVolumeCompareLess:Z

.field private mVolumeConfig:Ljava/lang/String;

.field private mVolumeDynamic:I

.field private startActivityCheckRunnable:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$startActivityCheckRunnable;

.field switchScreenRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 142
    const-string v0, "sys.xiaopeng.restart_second_screen_state"

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->RESTART_SECOND_SCREEN_STATE:Ljava/lang/String;

    .line 144
    const-string v0, "sys.xiaopeng.disable_second_screen_state"

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->DISABLE_SECOND_SCREEN_STATE:Ljava/lang/String;

    .line 277
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVoiceDisabled:Z

    .line 374
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mConfigerBinder:Landroid/os/Binder;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchType:I

    .line 162
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mStatus:I

    .line 163
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchSource:Ljava/lang/String;

    .line 164
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitReason:Ljava/lang/String;

    .line 165
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRequestExitReason:Ljava/lang/String;

    .line 166
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDialogMessage:Ljava/lang/String;

    .line 169
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRetryFullCount:I

    .line 171
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRetryNotFrontCount:I

    .line 176
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitDialogConfirm:I

    .line 181
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSystemLimit:I

    .line 185
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->LIMIT_DIALOG_BIT:I

    .line 189
    const/4 v2, 0x1

    iput v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->LIMIT_TOAST_BIT:I

    .line 193
    const/4 v3, 0x2

    iput v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->LIMIT_POP_PANEL_BIT:I

    .line 197
    const/4 v3, 0x3

    iput v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->LIMIT_QUICK_PANEL_BIT:I

    .line 201
    const/4 v4, 0x4

    iput v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->LIMIT_NOTIFICATION_BIT:I

    .line 206
    const/4 v4, -0x2

    iput v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreNotificationLevel:I

    .line 211
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreTask:I

    .line 212
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreComponent:[Landroid/content/ComponentName;

    .line 217
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScreenModeConfig:I

    .line 218
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->isSpliteBeforeEnter:Z

    .line 222
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBackComponentName:Landroid/content/ComponentName;

    .line 226
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBackConfig:I

    .line 231
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLimitAppExit:I

    .line 236
    const/4 v5, -0x1

    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSoundMode:I

    .line 237
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSoundModeBefore:I

    .line 242
    iput v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mNotificationLevel:I

    .line 247
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRseAction:I

    .line 252
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDynamicScreen:I

    .line 257
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDynamicScreenId:I

    .line 262
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAllowExit:Z

    .line 267
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreAreaType:Z

    .line 269
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mNeedExitDialog:Z

    .line 270
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDialogConfig:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;

    .line 272
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mComparedVolume:I

    .line 273
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mTargetVolume:I

    .line 274
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeCompareLess:Z

    .line 275
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeChanged:Z

    .line 276
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeBtChanged:Z

    .line 278
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLastLaunchPackage:Ljava/lang/String;

    .line 279
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExtra:Ljava/lang/String;

    .line 280
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mEnterExtra:Ljava/lang/String;

    .line 281
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitExtra:Ljava/lang/String;

    .line 282
    iput v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAppFlyLimit:I

    .line 286
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPanelCover:I

    .line 290
    iput v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    .line 294
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSeatWelcomeDisable:I

    .line 298
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->blockScenarios:Ljava/util/List;

    .line 302
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mConflictHintRes:Ljava/lang/String;

    .line 306
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mConflictHintFlag:I

    .line 311
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeDynamic:I

    .line 316
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeBtDynamic:I

    .line 321
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mThemeAnimDisable:I

    .line 326
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mArHud:I

    .line 331
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mFriendScenarioList:Ljava/util/List;

    .line 336
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPanelScreenIdSet:Ljava/util/Set;

    .line 341
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mCurrentFriend:Ljava/lang/String;

    .line 343
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAppConfigs:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;

    .line 348
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioPid:I

    .line 358
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mArHudStatus:I

    .line 363
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mStartActivity:Ljava/lang/String;

    .line 368
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mShouldDoScreenMode:I

    .line 377
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->iNotificationManager:Landroid/app/INotificationManager;

    .line 381
    new-instance v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;

    invoke-direct {v2, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSaveData:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;

    .line 383
    new-instance v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSwitchScreenListener:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SwitchScreenListener;

    .line 458
    new-instance v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$startActivityCheckRunnable;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$startActivityCheckRunnable;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->startActivityCheckRunnable:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$startActivityCheckRunnable;

    .line 487
    new-instance v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$2;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->switchScreenRunnable:Ljava/lang/Runnable;

    .line 1264
    new-instance v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$3;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$3;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->barVisibleRunnable:Ljava/lang/Runnable;

    .line 566
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mGroupIdx:I

    .line 567
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    .line 568
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioSubName:Ljava/lang/String;

    .line 569
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchPackage:Ljava/lang/String;

    .line 570
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPriority:I

    .line 571
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBrightnessIcm:I

    .line 572
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBrightnessPanel:I

    .line 573
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBrightnessPanel_1:I

    .line 574
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDisableSecondScreen:I

    .line 575
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreensaver:I

    .line 576
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeConfig:Ljava/lang/String;

    .line 577
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeDynamic:I

    .line 578
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLightMode:I

    .line 579
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAirConditionFlag:I

    .line 580
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVoiceMode:I

    .line 581
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mStopVoiceDialog:Z

    .line 582
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mEnterGear:I

    .line 583
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mEnterDoor:I

    .line 584
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitGear:I

    .line 585
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitDoor:I

    .line 586
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitRse:I

    .line 587
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitVoice:I

    .line 588
    iput v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitScreenOn:I

    .line 589
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mMediaKeyNeed:Z

    .line 590
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mNotifyIcm:Z

    .line 591
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExtra:Ljava/lang/String;

    .line 592
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mEnterExtra:Ljava/lang/String;

    .line 593
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitExtra:Ljava/lang/String;

    .line 594
    iput v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAppFlyLimit:I

    .line 595
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPanelCover:I

    .line 596
    iput v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    .line 597
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSeatWelcomeDisable:I

    .line 598
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mConflictHintFlag:I

    .line 599
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 600
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContext:Landroid/content/Context;

    .line 602
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/view/WindowManagerFactory;->create(Landroid/content/Context;)Lcom/xiaopeng/view/WindowManagerFactory;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mWindowManagerFactory:Lcom/xiaopeng/view/WindowManagerFactory;

    .line 603
    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 98
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScreenModeConfig:I

    return v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 98
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRetryNotFrontCount:I

    return v0
.end method

.method static synthetic access$208(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)I
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 98
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRetryNotFrontCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRetryNotFrontCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 98
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRetryFullCount:I

    return v0
.end method

.method static synthetic access$308(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)I
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 98
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRetryFullCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRetryFullCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$startActivityCheckRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->startActivityCheckRunnable:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$startActivityCheckRunnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchPackage:Ljava/lang/String;

    return-object v0
.end method

.method private airConditionCheck(Z)V
    .locals 5
    .param p1, "bEnter"    # Z

    .line 2502
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "airConditionCheck,flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAirConditionFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2503
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAirConditionFlag:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    .line 2504
    return-void

    .line 2507
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2508
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2509
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2510
    if-eqz p1, :cond_1

    const-string v1, "2"

    goto :goto_0

    :cond_1
    const-string v1, "1"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2511
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2512
    const-string v1, "userscenario@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2513
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2514
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2515
    .local v1, "statusVal":Ljava/lang/String;
    const-string v2, "UserScenarioConfiger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "airConditionCheck,val="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hvac_carcontrol_mode_status"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2517
    return-void
.end method

.method private convertScreenIdToDeviceName(I)Ljava/lang/String;
    .locals 1
    .param p1, "screenID"    # I

    .line 2270
    packed-switch p1, :pswitch_data_0

    .line 2287
    const-string v0, ""

    goto :goto_0

    .line 2278
    :pswitch_0
    const-string/jumbo v0, "xp_mt_rse"

    .line 2279
    .local v0, "deviceName":Ljava/lang/String;
    goto :goto_0

    .line 2281
    .end local v0    # "deviceName":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "xp_mt_icm"

    .line 2282
    .restart local v0    # "deviceName":Ljava/lang/String;
    goto :goto_0

    .line 2275
    .end local v0    # "deviceName":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "xp_mt_psg"

    .line 2276
    .restart local v0    # "deviceName":Ljava/lang/String;
    goto :goto_0

    .line 2272
    .end local v0    # "deviceName":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "xp_mt_ivi"

    .line 2273
    .restart local v0    # "deviceName":Ljava/lang/String;
    nop

    .line 2287
    :goto_0
    nop

    .line 2290
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private friendScenarioCoverCheck(I)Z
    .locals 9
    .param p1, "panelId"    # I

    .line 2721
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mFriendScenarioList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mFriendScenarioList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 2724
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getRunningConfigers()[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    move-result-object v0

    .line 2725
    .local v0, "runningConfigers":[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    const/4 v2, 0x0

    .line 2726
    .local v2, "runningConfiger":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    array-length v3, v0

    move v4, v1

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_3

    aget-object v6, v0, v4

    .line 2727
    .local v6, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-nez v6, :cond_1

    .line 2728
    goto :goto_1

    .line 2730
    :cond_1
    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getPanelCover()I

    move-result v7

    shl-int v8, v5, p1

    and-int/2addr v7, v8

    if-eqz v7, :cond_2

    .line 2731
    move-object v2, v6

    .line 2732
    goto :goto_2

    .line 2726
    .end local v6    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2735
    :cond_3
    :goto_2
    if-nez v2, :cond_4

    .line 2736
    return v1

    .line 2739
    :cond_4
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mFriendScenarioList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2740
    .local v4, "scenario":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2742
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getPanelCover()I

    move-result v3

    .line 2743
    .local v3, "panelCover":I
    shl-int v6, v5, p1

    and-int/2addr v6, v3

    if-eqz v6, :cond_6

    .line 2744
    const-string v1, "UserScenarioConfiger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "friendScenarioCoverCheck,friend "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is running,by pass covering panel mask:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2746
    return v5

    .line 2750
    .end local v3    # "panelCover":I
    .end local v4    # "scenario":Ljava/lang/String;
    :cond_5
    goto :goto_3

    .line 2751
    :cond_6
    return v1

    .line 2722
    .end local v0    # "runningConfigers":[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .end local v2    # "runningConfiger":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :cond_7
    :goto_4
    return v1
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 2122
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 2123
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContentResolver:Landroid/content/ContentResolver;

    .line 2126
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private getDynamicGroupIdx()I
    .locals 1

    .line 1732
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDynamicScreenId:I

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getDynamicGroupIdxFromScreenId(I)I

    move-result v0

    return v0
.end method

.method public static getDynamicGroupIdxFromScreenId(I)I
    .locals 1
    .param p0, "screenId"    # I

    .line 659
    if-eqz p0, :cond_1

    if-gez p0, :cond_0

    goto :goto_0

    .line 664
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 660
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private getTopComponent(I)Landroid/content/ComponentName;
    .locals 10
    .param p1, "targetScreen"    # I

    .line 1322
    const/4 v0, 0x0

    .line 1323
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getTopActivity(I)Ljava/lang/String;

    move-result-object v1

    .line 1324
    .local v1, "topActivity":Ljava/lang/String;
    const-string v2, "UserScenarioConfiger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTopComponent from screen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",top="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    if-eqz v1, :cond_5

    .line 1327
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1328
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 1329
    .local v3, "itemCount":I
    const-string v4, "UserScenarioConfiger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTopComponent,array count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v3, v6, :cond_1

    .line 1331
    nop

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_4

    .line 1332
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1333
    .local v6, "obj":Lorg/json/JSONObject;
    nop

    .line 1334
    const-string v7, "primary"

    const-string v8, "areaType"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1336
    const-string v7, "component"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1337
    .local v4, "component":Ljava/lang/String;
    const-string v7, "UserScenarioConfiger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get target compenent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    if-eqz v4, :cond_4

    .line 1339
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    move-object v0, v7

    goto :goto_1

    .line 1331
    .end local v4    # "component":Ljava/lang/String;
    .end local v6    # "obj":Lorg/json/JSONObject;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1347
    .end local v5    # "i":I
    :cond_1
    if-ne v6, v3, :cond_3

    .line 1348
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 1349
    .local v5, "obj":Lorg/json/JSONObject;
    nop

    .line 1350
    const-string v6, "component"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1351
    .restart local v4    # "component":Ljava/lang/String;
    const-string v6, "UserScenarioConfiger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get target compenent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    if-eqz v4, :cond_2

    .line 1353
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    move-object v0, v6

    .line 1355
    .end local v4    # "component":Ljava/lang/String;
    :cond_2
    nop

    .line 1358
    .end local v5    # "obj":Lorg/json/JSONObject;
    goto :goto_1

    .line 1359
    :cond_3
    const-string v4, "UserScenarioConfiger"

    const-string v5, "getTopComponent,no top info"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1363
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "itemCount":I
    :cond_4
    :goto_1
    goto :goto_2

    .line 1361
    :catch_0
    move-exception v2

    .line 1362
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "UserScenarioConfiger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTopComponent,e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    return-object v0
.end method

.method private getVoiceDisableHint()Ljava/lang/String;
    .locals 11

    .line 2590
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2591
    .local v0, "suffixHint":Ljava/lang/String;
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scenario_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2592
    .local v1, "resId":I
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2593
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 2594
    .local v3, "config":Landroid/content/res/Configuration;
    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 2595
    .local v4, "currentLanguage":Ljava/lang/String;
    const-string v5, "UserScenarioConfiger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVoiceDisableHint,currentLanguage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",resId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    :try_start_0
    const-string/jumbo v5, "zh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 2601
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 2599
    :cond_1
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2601
    .local v5, "hintString":Ljava/lang/String;
    :goto_1
    nop

    .line 2606
    goto :goto_2

    .line 2603
    .end local v5    # "hintString":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 2604
    .local v5, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v6, "UserScenarioConfiger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVoiceDisableHint e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ",scenario:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2605
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2608
    .local v5, "hintString":Ljava/lang/String;
    :goto_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 2610
    .local v6, "obj":Lorg/json/JSONObject;
    :try_start_1
    const-string v7, "toast"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2613
    goto :goto_3

    .line 2611
    :catch_1
    move-exception v7

    .line 2612
    .local v7, "e":Lorg/json/JSONException;
    const-string v8, "UserScenarioConfiger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getVoiceHintName e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2614
    .end local v7    # "e":Lorg/json/JSONException;
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method static synthetic lambda$whitelistAppHandle$0(Ljava/lang/String;)V
    .locals 4
    .param p0, "checkPkg"    # Ljava/lang/String;

    .line 2109
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "whitelistAppHandle,stop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2113
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2116
    .end local v0    # "am":Landroid/app/ActivityManager;
    goto :goto_0

    .line 2114
    :catch_0
    move-exception v0

    .line 2115
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "UserScenarioConfiger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "whitelistAppHandle failed,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "whitelistAppHandle,stop end for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    return-void
.end method

.method private lightOnOff(Z)V
    .locals 2
    .param p1, "bEnter"    # Z

    .line 2494
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLightMode:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 2496
    return-void

    .line 2498
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->getInstance()Lcom/xiaopeng/xuiservice/utils/CarControlUtils;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->turnOffAndRestoreLight(IZ)I

    .line 2499
    return-void
.end method

.method private mediaPauseCheck()V
    .locals 5

    .line 2702
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeDynamic:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeConfig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2703
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    .line 2704
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentPlayStatus(I)I

    move-result v0

    .line 2705
    .local v0, "playStatusPrimary":I
    if-nez v0, :cond_1

    .line 2706
    const-string v2, "UserScenarioConfiger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pause media play,cur scenario:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->playbackControl(III)I

    .line 2713
    .end local v0    # "playStatusPrimary":I
    :cond_1
    return-void
.end method

.method private panelBrightnessHandleByPower(IIZ)V
    .locals 6
    .param p1, "panelId"    # I
    .param p2, "brightnessVal"    # I
    .param p3, "bEnter"    # Z

    .line 2193
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##panelBrightnessHandleByPower enter,panelId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",brightnessVal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",bEnter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mExitReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 2196
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContext:Landroid/content/Context;

    const-string v1, "power"

    .line 2197
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    .line 2199
    :cond_0
    const/4 v0, 0x2

    if-nez p2, :cond_a

    .line 2201
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2203
    .local v1, "time":J
    if-eqz p3, :cond_5

    .line 2204
    if-nez p1, :cond_1

    .line 2205
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->setXpScreenOff(J)V

    goto/16 :goto_0

    .line 2206
    :cond_1
    iget v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    if-ne v3, p1, :cond_4

    .line 2208
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    invoke-static {v0, v3}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->isHome(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    iget v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    invoke-virtual {v0, v3}, Landroid/os/PowerManager;->isXpScreenOnEx(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2209
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->RESTART_SECOND_SCREEN_STATE:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2210
    .local v0, "screenFlag":Ljava/lang/String;
    const-string v3, "UserScenarioConfiger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setXpScreenOffEx screenFlag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    if-eqz v0, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2212
    :cond_2
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->RESTART_SECOND_SCREEN_STATE:Ljava/lang/String;

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    iget v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/PowerManager;->setXpScreenOffEx(IJ)V

    .line 2215
    .end local v0    # "screenFlag":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 2216
    :cond_4
    if-ne v0, p1, :cond_9

    .line 2217
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/PowerManager;->setXpScreenOffEx(IJ)V

    .line 2218
    const-string v0, "UserScenarioConfiger"

    const-string v3, "setXpScreenOffEx for ICM"

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2220
    :cond_5
    const-string v3, "rIgOff"

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 2221
    if-nez p1, :cond_6

    .line 2222
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->setXpScreenOn(J)V

    goto :goto_0

    .line 2223
    :cond_6
    iget v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    if-ne v3, p1, :cond_8

    .line 2224
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->RESTART_SECOND_SCREEN_STATE:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2225
    .restart local v0    # "screenFlag":Ljava/lang/String;
    const-string v3, "UserScenarioConfiger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setXpScreenOnEx screenFlag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2227
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->RESTART_SECOND_SCREEN_STATE:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    iget v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/PowerManager;->setXpScreenOnEx(IJ)V

    .line 2230
    .end local v0    # "screenFlag":Ljava/lang/String;
    :cond_7
    goto :goto_0

    :cond_8
    if-ne v0, p1, :cond_9

    .line 2231
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/PowerManager;->setXpScreenOnEx(IJ)V

    .line 2232
    const-string v0, "UserScenarioConfiger"

    const-string v3, "setXpScreenOnEx for ICM"

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2237
    :cond_9
    :goto_0
    goto :goto_1

    .line 2235
    :catch_0
    move-exception v0

    .line 2236
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "UserScenarioConfiger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "panelBrightnessHandleByPower,e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "time":J
    :goto_1
    goto :goto_4

    :cond_a
    const/4 v1, -0x2

    if-ne v1, p2, :cond_e

    .line 2240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2242
    .restart local v1    # "time":J
    if-eqz p3, :cond_d

    .line 2243
    if-nez p1, :cond_b

    .line 2244
    :try_start_1
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->setXpScreenOn(J)V

    goto :goto_3

    .line 2251
    :catch_1
    move-exception v0

    goto :goto_2

    .line 2245
    :cond_b
    iget v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    if-ne v3, p1, :cond_c

    .line 2246
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    iget v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PowerManager;->setXpScreenOnEx(IJ)V

    goto :goto_3

    .line 2247
    :cond_c
    if-ne v0, p1, :cond_d

    .line 2248
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/PowerManager;->setXpScreenOnEx(IJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 2251
    :goto_2
    nop

    .line 2252
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "UserScenarioConfiger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "panelBrightnessHandleByPower,e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "time":J
    goto :goto_4

    .line 2253
    .restart local v1    # "time":J
    :cond_d
    :goto_3
    nop

    .line 2255
    .end local v1    # "time":J
    :cond_e
    :goto_4
    return-void
.end method

.method private resetFlagsWhenExit()V
    .locals 1

    .line 2755
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAllowExit:Z

    .line 2756
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mNeedExitDialog:Z

    .line 2757
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDialogConfig:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;

    .line 2758
    return-void
.end method

.method private setArHudState(Z)V
    .locals 5
    .param p1, "bEnter"    # Z

    .line 2675
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mArHud:I

    if-nez v0, :cond_3

    .line 2676
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_hud"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/hud/CarHudManager;

    .line 2677
    .local v0, "manager":Landroid/car/hardware/hud/CarHudManager;
    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 2678
    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mArHudStatus:I

    if-ne v1, v2, :cond_0

    .line 2680
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/hud/CarHudManager;->getHudLightenLEDStatus()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mArHudStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2683
    goto :goto_0

    .line 2681
    :catch_0
    move-exception v1

    .line 2682
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UserScenarioConfiger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setArHudState,getHudLightenLEDStatus e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/car/hardware/hud/CarHudManager;->setHudLightenLEDSwitch(I)I

    .line 2686
    const-string v1, "UserScenarioConfiger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setArHudState,closed state:3,mArHudStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mArHudStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2689
    :cond_1
    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mArHudStatus:I

    if-eq v1, v2, :cond_2

    .line 2690
    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mArHudStatus:I

    .line 2691
    .local v2, "status":I
    invoke-virtual {v0, v2}, Landroid/car/hardware/hud/CarHudManager;->setHudLightenLEDSwitch(I)I

    .line 2692
    iput v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mArHudStatus:I

    .line 2693
    const-string v1, "UserScenarioConfiger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setArHudState,restore state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mArHudStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mArHudStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2694
    .end local v2    # "status":I
    goto :goto_1

    .line 2695
    :cond_2
    const-string v1, "UserScenarioConfiger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setArHudState,restore failed,mArHudStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mArHudStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    .end local v0    # "manager":Landroid/car/hardware/hud/CarHudManager;
    :cond_3
    :goto_1
    return-void
.end method

.method private setBackAndStarActivityFlag(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;
    .locals 4
    .param p1, "extraOperationData"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

    .line 1097
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mShouldDoScreenMode:I

    if-nez v0, :cond_0

    .line 1098
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBackConfig:I

    goto :goto_0

    .line 1100
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBackConfig:I

    .line 1102
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isNullOperationQueue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1103
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isTopActivity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mShouldDoScreenMode:I

    if-nez v0, :cond_2

    .line 1105
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mStartActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->setStartActivity(Ljava/lang/String;)V

    .line 1106
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mShouldDoScreenMode:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->setShouldDoScreenMode(I)V

    .line 1108
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getTopMainComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBackComponentName:Landroid/content/ComponentName;

    .line 1109
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackAndStarActivityFlag operationQueue is null, mBackConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBackConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mBackComponentName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBackComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mStartActivity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mStartActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mShouldDoScreenMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mShouldDoScreenMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1111
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mStartActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->setStartActivity(Ljava/lang/String;)V

    .line 1112
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mShouldDoScreenMode:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->setShouldDoScreenMode(I)V

    .line 1113
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getQueueOperation(I)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    move-result-object v0

    .line 1114
    .local v0, "data":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    if-eqz v0, :cond_4

    .line 1115
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getBackComponentName()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBackComponentName:Landroid/content/ComponentName;

    .line 1116
    const-string v1, "UserScenarioConfiger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBackAndStarActivityFlag operationQueue is not null, and contains back  mBackConfig = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBackConfig:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mBackComponentName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBackComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mShouldDoScreenMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mShouldDoScreenMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    .end local v0    # "data":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    :cond_4
    :goto_1
    return-object p1
.end method

.method private setDisableSecondScreen(Z)V
    .locals 6
    .param p1, "bEnter"    # Z

    .line 2294
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 2295
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContext:Landroid/content/Context;

    const-string v1, "power"

    .line 2296
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    .line 2298
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDisableSecondScreen:I

    if-ne v0, v1, :cond_8

    .line 2300
    if-eqz p1, :cond_6

    .line 2303
    const/4 v0, 0x0

    .line 2304
    .local v0, "isScreenEnable":Z
    if-eqz v0, :cond_5

    .line 2305
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->DISABLE_SECOND_SCREEN_STATE:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2306
    .local v1, "disableScreenFlag":Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->RESTART_SECOND_SCREEN_STATE:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2307
    .local v2, "screenFlag":Ljava/lang/String;
    const-string v3, "UserScenarioConfiger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDisableSecondScreen screenFlag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    if-eqz v1, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2309
    :cond_1
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->DISABLE_SECOND_SCREEN_STATE:Ljava/lang/String;

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2312
    :cond_2
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    iget v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    invoke-virtual {v3, v4}, Landroid/os/PowerManager;->isXpScreenOnEx(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2313
    if-eqz v2, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2314
    :cond_3
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->RESTART_SECOND_SCREEN_STATE:Ljava/lang/String;

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2317
    :cond_4
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    iget v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    invoke-virtual {v3, v4}, Landroid/os/PowerManager;->disableXpScreen(I)V

    .line 2318
    const-string v3, "UserScenarioConfiger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDisableSecondScreen, disable screen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2320
    .end local v0    # "isScreenEnable":Z
    .end local v1    # "disableScreenFlag":Ljava/lang/String;
    .end local v2    # "screenFlag":Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 2322
    :cond_6
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->DISABLE_SECOND_SCREEN_STATE:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2323
    .local v0, "disableScreenFlag":Ljava/lang/String;
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->RESTART_SECOND_SCREEN_STATE:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2324
    .local v1, "screenFlag":Ljava/lang/String;
    const-string v2, "UserScenarioConfiger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDisableSecondScreen disableScreenFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",screenFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2325
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2326
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->DISABLE_SECOND_SCREEN_STATE:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    iget v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->enableXpScreen(I)V

    .line 2328
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2329
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->RESTART_SECOND_SCREEN_STATE:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2330
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2331
    .local v2, "time":J
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    iget v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/PowerManager;->setXpScreenOnEx(IJ)V

    .line 2333
    .end local v2    # "time":J
    :cond_7
    const-string v2, "UserScenarioConfiger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDisableSecondScreen, enable screen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2337
    .end local v0    # "disableScreenFlag":Ljava/lang/String;
    .end local v1    # "screenFlag":Ljava/lang/String;
    :cond_8
    :goto_0
    return-void
.end method

.method private setDockDisable(Z)V
    .locals 9
    .param p1, "bEnter"    # Z

    .line 2563
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getPanelScreenIds()[I

    move-result-object v0

    .line 2564
    .local v0, "screenIds":[I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAppConfigs:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2565
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAppConfigs:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;

    array-length v4, v1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 2566
    .local v6, "config":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;
    iget-object v7, v6, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;->pkgName:Ljava/lang/String;

    const-string v8, "com.xiaopeng.applist"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2567
    iget v7, v6, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;->canLaunch:I

    if-ne v3, v7, :cond_0

    .line 2568
    const-string v1, "UserScenarioConfiger"

    const-string v2, "don\'t set DockDisable,applist can launch"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2569
    return-void

    .line 2565
    .end local v6    # "config":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2574
    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 2575
    array-length v4, v0

    :goto_1
    if-ge v2, v4, :cond_3

    aget v5, v0, v2

    .line 2576
    .local v5, "screenId":I
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->get()Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    move-result-object v6

    invoke-virtual {v6, v5, v3, v1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->setDockEditDisable(IZLandroid/os/Bundle;)V

    .line 2577
    const-string v6, "UserScenarioConfiger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDockDisable,disable screenId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2575
    .end local v5    # "screenId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2581
    :cond_2
    array-length v3, v0

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_3

    aget v5, v0, v4

    .line 2582
    .restart local v5    # "screenId":I
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->get()Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    move-result-object v6

    invoke-virtual {v6, v5, v2, v1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->setDockEditDisable(IZLandroid/os/Bundle;)V

    .line 2583
    const-string v6, "UserScenarioConfiger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDockDisable,enable screenId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2581
    .end local v5    # "screenId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2586
    :cond_3
    return-void
.end method

.method private setIcmAndPanelsBrightness(Z)V
    .locals 6
    .param p1, "bEnter"    # Z

    .line 2130
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setPanelBrightness(Z)Ljava/lang/String;

    move-result-object v0

    .line 2131
    .local v0, "cmd":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setIcmBrightness(Z)Ljava/lang/String;

    move-result-object v1

    .line 2133
    .local v1, "cmdTemp":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2134
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2138
    :cond_0
    move-object v0, v1

    .line 2142
    :cond_1
    :goto_0
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2144
    const-string v2, "UserScenarioConfiger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setIcmAndPanelsBrightness,cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "panel_brightness"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2146
    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBrightnessPanel_1:I

    if-lez v2, :cond_3

    .line 2148
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    if-nez v2, :cond_2

    .line 2149
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContext:Landroid/content/Context;

    const-string v3, "power"

    .line 2150
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    sput-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    .line 2152
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2153
    .local v2, "time":J
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    iget v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/PowerManager;->setXpScreenOnEx(IJ)V

    .line 2156
    .end local v2    # "time":J
    :cond_3
    return-void
.end method

.method private setIcmBrightness(Z)Ljava/lang/String;
    .locals 2
    .param p1, "bEnter"    # Z

    .line 2159
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBrightnessIcm:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 2160
    const-string v0, ""

    return-object v0

    .line 2163
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBrightnessIcm:I

    if-eqz v0, :cond_2

    const/4 v0, -0x2

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBrightnessIcm:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 2169
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "4#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBrightnessIcm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "#scenario"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2170
    .local v0, "cmd":Ljava/lang/String;
    return-object v0

    .line 2164
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBrightnessIcm:I

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->panelBrightnessHandleByPower(IIZ)V

    .line 2165
    const-string v0, ""

    return-object v0
.end method

.method private setPanelBrightness(IIZ)Ljava/lang/String;
    .locals 3
    .param p1, "panelId"    # I
    .param p2, "brightnessVal"    # I
    .param p3, "bEnter"    # Z

    .line 2355
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 2356
    const-string v0, ""

    return-object v0

    .line 2359
    :cond_0
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPanelBrightness,panelId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",bEnter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",brightnessVal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mExitReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    if-eqz p2, :cond_2

    const/4 v0, -0x2

    if-ne v0, p2, :cond_1

    goto :goto_0

    .line 2368
    :cond_1
    const-wide/16 v0, 0x1

    shl-long/2addr v0, p1

    long-to-int v0, v0

    .line 2369
    .local v0, "panelBitVal":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "#scenario"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2370
    .local v1, "cmd":Ljava/lang/String;
    return-object v1

    .line 2363
    .end local v0    # "panelBitVal":I
    .end local v1    # "cmd":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->panelBrightnessHandleByPower(IIZ)V

    .line 2364
    const-string v0, ""

    return-object v0
.end method

.method private setPanelBrightness(Z)Ljava/lang/String;
    .locals 5
    .param p1, "bEnter"    # Z

    .line 2174
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBrightnessPanel:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setPanelBrightness(IIZ)Ljava/lang/String;

    move-result-object v0

    .line 2175
    .local v0, "cmd1":Ljava/lang/String;
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBrightnessPanel_1:I

    invoke-direct {p0, v1, v2, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setPanelBrightness(IIZ)Ljava/lang/String;

    move-result-object v1

    .line 2176
    .local v1, "cmd2":Ljava/lang/String;
    const-string v2, ""

    .line 2177
    .local v2, "cmd":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2178
    move-object v2, v0

    .line 2180
    :cond_0
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2181
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2185
    :cond_1
    move-object v2, v1

    .line 2189
    :cond_2
    :goto_0
    return-object v2
.end method

.method private setSecondScreensaver(Z)V
    .locals 3
    .param p1, "bEnter"    # Z

    .line 2340
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 2341
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContext:Landroid/content/Context;

    const-string v1, "power"

    .line 2342
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    .line 2344
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreensaver:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 2345
    if-eqz p1, :cond_1

    .line 2346
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    invoke-static {v0, v2}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->isHome(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2347
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPowerManager:Landroid/os/PowerManager;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->resetXpScreenIdleEx(IZ)V

    .line 2348
    const-string v0, "UserScenarioConfiger"

    const-string v1, "setSecondScreensaver"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    :cond_1
    return-void
.end method

.method private shouldAdjustVolume()Z
    .locals 5

    .line 2470
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeDynamic:I

    const/4 v1, 0x1

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeBtDynamic:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 2475
    :cond_0
    const/4 v0, -0x1

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mComparedVolume:I

    if-eq v0, v2, :cond_2

    .line 2476
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 2477
    .local v0, "currentVolume":I
    const-string v2, "UserScenarioConfiger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configVolume,current:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",compared:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mComparedVolume:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mVolumeCompareLess="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeCompareLess:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeCompareLess:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 2480
    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mComparedVolume:I

    if-lt v0, v2, :cond_2

    .line 2481
    return v3

    .line 2484
    :cond_1
    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mComparedVolume:I

    if-gt v0, v2, :cond_2

    .line 2485
    return v3

    .line 2490
    .end local v0    # "currentVolume":I
    :cond_2
    return v1

    .line 2471
    :cond_3
    :goto_0
    const-string v0, "UserScenarioConfiger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldAdjustVolume,mVolumeDynamic:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeDynamic:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mVolumeBtDynamic:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeBtDynamic:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2473
    return v1
.end method

.method private startActivity(Landroid/content/ComponentName;I)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "screenId"    # I

    .line 1370
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivity from screen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1372
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1373
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1374
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1375
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)I

    .line 1377
    return-void
.end method

.method private themAnimSet(Z)V
    .locals 3
    .param p1, "bEnter"    # Z

    .line 2666
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mThemeAnimDisable:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    .line 2667
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "themAnimSet,disable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mThemeAnimDisable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    return-void

    .line 2670
    :cond_0
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "themAnimSet,disable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",scenario:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2671
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "theme_animation_disable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2672
    return-void
.end method

.method private voiceDialogConfig(Z)V
    .locals 2
    .param p1, "bEnter"    # Z

    .line 2554
    if-eqz p1, :cond_0

    .line 2555
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mStopVoiceDialog:Z

    if-eqz v0, :cond_0

    .line 2556
    const-string v0, "UserScenarioConfiger"

    const-string/jumbo v1, "voiceDialogConfig,stop voice dialog"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2557
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialog()V

    .line 2560
    :cond_0
    return-void
.end method


# virtual methods
.method protected canAppDialog(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1556
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAppConfigs:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1557
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAppConfigs:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 1558
    .local v4, "config":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;
    iget-object v5, v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1559
    iget v0, v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;->canDialog:I

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 1557
    .end local v4    # "config":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1564
    :cond_2
    return v1
.end method

.method protected canAppLaunch(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1482
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchPackage:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1484
    const-string v0, "UserScenarioConfiger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canAppLaunch,target is self pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    return v1

    .line 1488
    :cond_0
    const/4 v0, 0x3

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mStatus:I

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mStatus:I

    if-nez v0, :cond_1

    goto :goto_2

    .line 1494
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAppConfigs:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 1495
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAppConfigs:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 1496
    .local v5, "config":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;
    iget-object v6, v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1497
    iget v0, v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;->canLaunch:I

    if-ne v1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 1495
    .end local v5    # "config":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1502
    :cond_4
    return v2

    .line 1490
    :cond_5
    :goto_2
    const-string v0, "UserScenarioConfiger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canAppLaunch,current scenario is exiting or idle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    return v1
.end method

.method protected canAppLaunchWithDisplay(Ljava/lang/String;I)I
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 1506
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->isScreenMatch(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1508
    return v1

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchPackage:Ljava/lang/String;

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1513
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canAppLaunchWithDisplay,target is self pkg:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    return v2

    .line 1517
    :cond_1
    const-string v0, "boot_video_mode"

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1521
    return v2

    .line 1524
    :cond_2
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mStatus:I

    const/4 v3, 0x3

    if-eq v3, v0, :cond_6

    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mStatus:I

    if-nez v0, :cond_3

    goto :goto_1

    .line 1530
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAppConfigs:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;

    if-eqz v0, :cond_5

    .line 1531
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAppConfigs:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;

    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v0, v5

    .line 1532
    .local v6, "config":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;
    iget-object v7, v6, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;->pkgName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1533
    iget v7, v6, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;->canLaunch:I

    if-ne v1, v7, :cond_4

    .line 1534
    return v2

    .line 1531
    .end local v6    # "config":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1540
    :cond_5
    return v3

    .line 1526
    :cond_6
    :goto_1
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canAppLaunchWithDisplay,current is exiting or idle:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    return v2
.end method

.method protected canAppMove(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1544
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAppConfigs:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1545
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAppConfigs:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 1546
    .local v4, "config":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;
    iget-object v5, v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1547
    iget v0, v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;->canMove:I

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 1545
    .end local v4    # "config":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1552
    :cond_2
    return v1
.end method

.method public checkSoundMode(Z)V
    .locals 3
    .param p1, "bEnter"    # Z

    .line 1957
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSoundMode,bEnter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mSoundMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSoundMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mSoundModeBefore:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSoundModeBefore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSoundMode:I

    if-gez v0, :cond_0

    .line 1960
    return-void

    .line 1963
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 1964
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    .line 1965
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAudioManager:Landroid/media/AudioManager;

    .line 1968
    :cond_1
    if-eqz p1, :cond_4

    .line 1969
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSoundModeBefore:I

    if-ltz v0, :cond_2

    .line 1970
    const-string v0, "UserScenarioConfiger"

    const-string v1, "checkSoundMode,mSoundModeBefore >= 0"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    return-void

    .line 1973
    :cond_2
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMainDriverMode()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSoundModeBefore:I

    .line 1974
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSoundModeBefore:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSoundMode:I

    if-ne v0, v1, :cond_3

    .line 1976
    const-string v0, "UserScenarioConfiger"

    const-string v1, "checkSoundMode,do nothing"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1978
    :cond_3
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSoundMode,bEnter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSoundMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",before:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSoundModeBefore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSoundMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMainDriverMode(I)V

    goto :goto_0

    .line 1983
    :cond_4
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSoundMode,bEnter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSoundMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",before:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSoundModeBefore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSoundModeBefore:I

    if-ltz v0, :cond_5

    .line 1986
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSoundModeBefore:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMainDriverMode(I)V

    .line 1988
    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSoundModeBefore:I

    .line 1990
    :goto_0
    return-void
.end method

.method public declared-synchronized configMediaStreamVolume(Z)V
    .locals 6
    .param p1, "bEnter"    # Z

    monitor-enter p0

    .line 2390
    const/4 v0, -0x1

    :try_start_0
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mTargetVolume:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeDynamic:I

    if-ge v0, v3, :cond_1

    .line 2392
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeConfig:Ljava/lang/String;

    const-string v1, "if"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2393
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeConfig:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2394
    .local v0, "splitArray":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2395
    const-string v1, "<"

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2396
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeCompareLess:Z

    goto :goto_0

    .line 2398
    :cond_0
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeCompareLess:Z

    .line 2400
    :goto_0
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mTargetVolume:I

    .line 2401
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mTargetVolume:I

    iput v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mComparedVolume:I

    .line 2402
    const-string v1, "UserScenarioConfiger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configMediaStreamVolume,target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mTargetVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2407
    .end local v0    # "splitArray":[Ljava/lang/String;
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeDynamic:I

    if-lez v0, :cond_2

    .line 2409
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeDynamic:I

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mTargetVolume:I

    .line 2412
    :cond_2
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mTargetVolume:I

    if-ge v0, v3, :cond_3

    .line 2414
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configMediaStreamVolume, no valid config,target Volume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mTargetVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2415
    monitor-exit p0

    return-void

    .line 2418
    :cond_3
    :try_start_1
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_4

    .line 2419
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    .line 2420
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAudioManager:Landroid/media/AudioManager;

    .line 2423
    :cond_4
    if-eqz p1, :cond_6

    .line 2424
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->shouldAdjustVolume()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2425
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2426
    monitor-exit p0

    return-void

    .line 2428
    :cond_5
    :try_start_2
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeChanged:Z

    goto :goto_1

    .line 2430
    :cond_6
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeChanged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_7

    .line 2431
    monitor-exit p0

    return-void

    .line 2433
    :cond_7
    :try_start_3
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeChanged:Z

    .line 2437
    :goto_1
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configMediaStreamVolume, mode enter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mTargetVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mTargetVolume:I

    const/16 v3, 0x100

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/AudioManager;->temporaryChangeVolumeDown(IIIZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2441
    monitor-exit p0

    return-void

    .line 2389
    .end local p1    # "bEnter":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    throw p1
.end method

.method public declared-synchronized configPassengerBtVolume(Z)V
    .locals 5
    .param p1, "bEnter"    # Z

    monitor-enter p0

    .line 2444
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 2445
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    .line 2446
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAudioManager:Landroid/media/AudioManager;

    .line 2449
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2450
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->shouldAdjustVolume()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2451
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeBtChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2452
    monitor-exit p0

    return-void

    .line 2454
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeBtChanged:Z

    goto :goto_0

    .line 2456
    :cond_2
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeBtChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_3

    .line 2457
    monitor-exit p0

    return-void

    .line 2459
    :cond_3
    :try_start_2
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeBtChanged:Z

    .line 2463
    :goto_0
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configPassengerBtVolume, mode enter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeBtDynamic:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2465
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xd

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeBtDynamic:I

    const/16 v3, 0x800

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/AudioManager;->temporaryChangeVolumeDown(IIIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2467
    monitor-exit p0

    return-void

    .line 2443
    .end local p1    # "bEnter":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    throw p1
.end method

.method public declared-synchronized configVolume(Z)V
    .locals 3
    .param p1, "bEnter"    # Z

    monitor-enter p0

    .line 2375
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeConfig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeDynamic:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeBtDynamic:I

    if-ge v0, v1, :cond_0

    .line 2376
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configVolume,do nothing,mVolumeConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeConfig:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mVolumeDynamic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeDynamic:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mVolumeBtDynamic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeBtDynamic:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2378
    monitor-exit p0

    return-void

    .line 2381
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->isPassengerbluetoothConnected()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2382
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->configMediaStreamVolume(Z)V

    goto :goto_0

    .line 2385
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->configPassengerBtVolume(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2387
    :goto_0
    monitor-exit p0

    return-void

    .line 2374
    .end local p1    # "bEnter":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    throw p1
.end method

.method protected defaultScreenModeCheck(ZZ)V
    .locals 4
    .param p1, "enter"    # Z
    .param p2, "switchScreen"    # Z

    .line 1242
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScreenModeConfig:I

    if-nez v0, :cond_2

    .line 1243
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v0

    .line 1244
    .local v0, "groupIdx":I
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 1246
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mGroupIdx:I

    .line 1248
    :cond_0
    const-string v1, "UserScenarioConfiger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultScreenModeCheck,scenario="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",modeConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScreenModeConfig:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",enter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mDynamicScreenId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDynamicScreenId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",groupIdx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    if-nez v0, :cond_2

    const-string v1, "5d_cinema_mode"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1254
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1255
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->barVisibleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1256
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->setScreenBarVisibility(II)V

    goto :goto_0

    .line 1258
    :cond_1
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->setScreenBarVisibility(II)V

    .line 1262
    .end local v0    # "groupIdx":I
    :cond_2
    :goto_0
    return-void
.end method

.method public doNotificationLimit(Z)V
    .locals 4
    .param p1, "enter"    # Z

    .line 1874
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mNotificationLevel:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    .line 1876
    if-eqz p1, :cond_1

    .line 1877
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreNotificationLevel:I

    if-ne v0, v1, :cond_0

    .line 1878
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->iNotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v0}, Landroid/app/INotificationManager;->getNotificationControlLevel()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreNotificationLevel:I

    .line 1880
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->iNotificationManager:Landroid/app/INotificationManager;

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mNotificationLevel:I

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->setNotificationControlLevel(I)V

    .line 1881
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter doNotificationLimit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mNotificationLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRestoreNotificationLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreNotificationLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1889
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1883
    :cond_1
    const-string v0, "UserScenarioConfiger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exit doNotificationLimit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreNotificationLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreNotificationLevel:I

    if-eq v0, v1, :cond_2

    .line 1885
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->iNotificationManager:Landroid/app/INotificationManager;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreNotificationLevel:I

    invoke-interface {v0, v2}, Landroid/app/INotificationManager;->setNotificationControlLevel(I)V

    .line 1886
    iput v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreNotificationLevel:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1889
    :goto_0
    nop

    .line 1890
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UserScenarioConfiger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doNotificationLimit e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    goto :goto_2

    .line 1893
    :cond_3
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no notification limit for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    :goto_2
    return-void
.end method

.method public doSystemLimit(Z)V
    .locals 9
    .param p1, "enter"    # Z

    .line 1898
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSystemLimit:I

    if-nez v0, :cond_0

    .line 1899
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no system limit for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    return-void

    .line 1903
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getPanelScreenIds()[I

    move-result-object v0

    .line 1905
    .local v0, "screenIds":[I
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSystemLimit:I

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->LIMIT_TOAST_BIT:I

    const/4 v3, 0x1

    shl-int v2, v3, v2

    and-int/2addr v1, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1906
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->iNotificationManager:Landroid/app/INotificationManager;

    if-eqz v1, :cond_2

    .line 1908
    :try_start_0
    array-length v1, v0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_1

    aget v5, v0, v4

    .line 1909
    .local v5, "id":I
    const-string v6, "UserScenarioConfiger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setToastEnabled:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v8, p1, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",screenId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->iNotificationManager:Landroid/app/INotificationManager;

    xor-int/lit8 v7, p1, 0x1

    invoke-interface {v6, v7, v5}, Landroid/app/INotificationManager;->setToastEnabledForDisplay(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1908
    .end local v5    # "id":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1912
    :catch_0
    move-exception v1

    .line 1913
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "UserScenarioConfiger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setToastEnabled e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    goto :goto_1

    .line 1916
    :cond_2
    const-string v1, "UserScenarioConfiger"

    const-string v4, "setToastEnabled, null manager"

    invoke-static {v1, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    :cond_3
    :goto_1
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSystemLimit:I

    iget v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->LIMIT_POP_PANEL_BIT:I

    shl-int/2addr v3, v4

    and-int/2addr v1, v3

    if-eqz v1, :cond_6

    .line 1920
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->iNotificationManager:Landroid/app/INotificationManager;

    if-eqz v1, :cond_5

    .line 1922
    :try_start_1
    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_4

    aget v3, v0, v2

    .line 1923
    .local v3, "id":I
    const-string v4, "UserScenarioConfiger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setOsdEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",screenId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->iNotificationManager:Landroid/app/INotificationManager;

    xor-int/lit8 v5, p1, 0x1

    invoke-interface {v4, v5, v3}, Landroid/app/INotificationManager;->setOsdEnabledForDisplay(ZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1922
    .end local v3    # "id":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1926
    :catch_1
    move-exception v1

    .line 1927
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "UserScenarioConfiger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOsdEnabled e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    goto :goto_3

    .line 1930
    :cond_5
    const-string v1, "UserScenarioConfiger"

    const-string v2, "setOsdEnabled, null manager"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    :cond_6
    :goto_3
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSystemLimit:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->LIMIT_NOTIFICATION_BIT:I

    .line 1937
    return-void
.end method

.method public dynamicFlagReset()V
    .locals 2

    .line 1720
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDynamicScreen:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 1722
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDynamicScreenId:I

    .line 1723
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mGroupIdx:I

    .line 1725
    :cond_0
    return-void
.end method

.method public declared-synchronized enter()V
    .locals 3

    monitor-enter p0

    .line 1592
    :try_start_0
    const-string v0, "UserScenarioConfiger"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    const-string v0, "parking_mode"

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1594
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter,disable taskOnHome,scenario:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mediaPauseCheck()V

    .line 1599
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->themAnimSet(Z)V

    .line 1600
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setArHudState(Z)V

    .line 1601
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->airConditionCheck(Z)V

    .line 1602
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->doSystemLimit(Z)V

    .line 1603
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->checkSoundMode(Z)V

    .line 1605
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->doNotificationLimit(Z)V

    .line 1606
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->screenModeCheck(Z)V

    .line 1607
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->rseActionCheck(Z)V

    .line 1608
    const-string v1, "enter"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->launchApp(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1609
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setIcmAndPanelsBrightness(Z)V

    .line 1610
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setDisableSecondScreen(Z)V

    .line 1611
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setSecondScreensaver(Z)V

    .line 1612
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->lightOnOff(Z)V

    .line 1613
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->voiceDialogConfig(Z)V

    .line 1614
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setDockDisable(Z)V

    .line 1615
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mMediaKeyNeed:Z

    if-eqz v1, :cond_1

    .line 1617
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->requestMediaButton(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1619
    :cond_1
    monitor-exit p0

    return-void

    .line 1591
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    throw v0
.end method

.method public declared-synchronized enterInner()V
    .locals 3

    monitor-enter p0

    .line 1622
    :try_start_0
    const-string v0, "UserScenarioConfiger"

    const-string v1, "enter inner"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->voiceDialogConfig(Z)V

    .line 1625
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mMediaKeyNeed:Z

    if-eqz v1, :cond_0

    .line 1627
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->requestMediaButton(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1629
    :cond_0
    monitor-exit p0

    return-void

    .line 1621
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    throw v0
.end method

.method public declared-synchronized exit()V
    .locals 5

    monitor-enter p0

    .line 1632
    :try_start_0
    const-string v0, "UserScenarioConfiger"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    const-string v0, "parking_mode"

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1634
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit,enable taskOnHome,scenario:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->screenModeCheck(Z)V

    .line 1638
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->rseActionCheck(Z)V

    .line 1639
    const-string v1, "exit"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->launchApp(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1640
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->themAnimSet(Z)V

    .line 1641
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setArHudState(Z)V

    .line 1642
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->doSystemLimit(Z)V

    .line 1643
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->checkSoundMode(Z)V

    .line 1644
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->resetFlagsWhenExit()V

    .line 1645
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->doNotificationLimit(Z)V

    .line 1646
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setIcmAndPanelsBrightness(Z)V

    .line 1647
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setDisableSecondScreen(Z)V

    .line 1648
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->lightOnOff(Z)V

    .line 1649
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->airConditionCheck(Z)V

    .line 1650
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setDockDisable(Z)V

    .line 1651
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v1

    .line 1652
    .local v1, "groupIdx":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sys.xiaopeng.userscenario"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->switchScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1654
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->startActivityCheckRunnable:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$startActivityCheckRunnable;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1655
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setRetryFullCount(I)V

    .line 1656
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setRetryNotFrontCount(I)V

    .line 1657
    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mMediaKeyNeed:Z

    if-eqz v3, :cond_1

    .line 1659
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->requestMediaButton(IZ)V

    .line 1662
    :cond_1
    iput-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitReason:Ljava/lang/String;

    .line 1663
    iput-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDialogMessage:Ljava/lang/String;

    .line 1664
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setExitDialogConfig(Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1665
    monitor-exit p0

    return-void

    .line 1631
    .end local v1    # "groupIdx":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    throw v0
.end method

.method protected declared-synchronized exitInner(I)V
    .locals 7
    .param p1, "exitType"    # I

    monitor-enter p0

    .line 1668
    :try_start_0
    const-string v0, "parking_mode"

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1669
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit inner,enable taskOnHome,scenario:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v0

    .line 1673
    .local v0, "curGroupIdx":I
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDynamicScreen:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDynamicScreenId:I

    const/4 v4, -0x1

    if-eq v4, v1, :cond_1

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mGroupIdx:I

    if-eq v4, v1, :cond_1

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mGroupIdx:I

    if-eq v1, v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 1675
    .local v1, "screenSwitched":Z
    :goto_0
    const-string v4, "UserScenarioConfiger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exit inner,screenSwitched:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",exitType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",mGourpIdx:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mGroupIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",curGroupIdx:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->themAnimSet(Z)V

    .line 1678
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setArHudState(Z)V

    .line 1679
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->doSystemLimit(Z)V

    .line 1680
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->doNotificationLimit(Z)V

    .line 1681
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->checkSoundMode(Z)V

    .line 1682
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->switchScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1683
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->startActivityCheckRunnable:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$startActivityCheckRunnable;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1684
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setRetryFullCount(I)V

    .line 1685
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setRetryNotFrontCount(I)V

    .line 1686
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->screenModeCheck(Z)V

    .line 1687
    if-ne v2, p1, :cond_2

    if-eqz v1, :cond_2

    .line 1689
    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->defaultScreenModeCheck(ZZ)V

    .line 1691
    :cond_2
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->rseActionCheck(Z)V

    .line 1692
    invoke-virtual {p0, v3, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->restoreTaskCheck(ZZ)V

    .line 1693
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setIcmAndPanelsBrightness(Z)V

    .line 1694
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setDisableSecondScreen(Z)V

    .line 1695
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->lightOnOff(Z)V

    .line 1696
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->airConditionCheck(Z)V

    .line 1697
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setDockDisable(Z)V

    .line 1698
    if-nez p1, :cond_3

    .line 1699
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->resetFlagsWhenExit()V

    .line 1700
    iput v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mStatus:I

    .line 1701
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDialogMessage:Ljava/lang/String;

    .line 1702
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setDialogConfig(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;)V

    .line 1704
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v2

    .line 1705
    .local v2, "groupIdx":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sys.xiaopeng.userscenario"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    iget-boolean v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mMediaKeyNeed:Z

    if-eqz v4, :cond_4

    .line 1708
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->requestMediaButton(IZ)V

    .line 1711
    :cond_4
    if-nez p1, :cond_5

    .line 1712
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->dynamicFlagReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1714
    :cond_5
    monitor-exit p0

    return-void

    .line 1667
    .end local v0    # "curGroupIdx":I
    .end local v1    # "screenSwitched":Z
    .end local v2    # "groupIdx":I
    .end local p1    # "exitType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    throw p1
.end method

.method public exitOnGear(I)Z
    .locals 7
    .param p1, "gear"    # I

    .line 945
    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 946
    .local v1, "mask":I
    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitGear:I

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 947
    .local v2, "matchGear":I
    iget v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitGear:I

    shr-int/lit8 v3, v3, 0x10

    .line 948
    .local v3, "unMatchGear":I
    and-int v4, v2, v1

    if-eqz v4, :cond_0

    .line 949
    const-string v4, "UserScenarioConfiger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exitOnGear,match gear hit,gear="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    return v0

    .line 951
    :cond_0
    if-eqz v3, :cond_1

    and-int v4, v3, v1

    if-nez v4, :cond_1

    .line 952
    const-string v4, "UserScenarioConfiger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exitOnGear,unMatchGear hit,gear="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    return v0

    .line 955
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getAirConditionFlag()I
    .locals 1

    .line 901
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAirConditionFlag:I

    return v0
.end method

.method public getAllowExit()Z
    .locals 1

    .line 1997
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAllowExit:Z

    return v0
.end method

.method public getAppFlyLimit()I
    .locals 1

    .line 721
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAppFlyLimit:I

    return v0
.end method

.method public getArHud()I
    .locals 1

    .line 804
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mArHud:I

    return v0
.end method

.method public getBrightnessIcm()I
    .locals 1

    .line 845
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBrightnessIcm:I

    return v0
.end method

.method public getBrightnessPanel()I
    .locals 1

    .line 857
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBrightnessPanel:I

    return v0
.end method

.method public getBrightnessPanel_1()I
    .locals 1

    .line 861
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBrightnessPanel_1:I

    return v0
.end method

.method public getConflictHintFlag()I
    .locals 1

    .line 770
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mConflictHintFlag:I

    return v0
.end method

.method public getConflictHintRes()Ljava/lang/String;
    .locals 3

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Please exit current mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, "defaultConflict":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode_cf_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 756
    .local v1, "resId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/util/LocaleStrings;->getInstance()Lcom/xiaopeng/util/LocaleStrings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/util/LocaleStrings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mConflictHintRes:Ljava/lang/String;

    .line 758
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mConflictHintRes:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 759
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mConflictHintRes:Ljava/lang/String;

    .line 762
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mConflictHintRes:Ljava/lang/String;

    return-object v2
.end method

.method public getCurrentFriend()Ljava/lang/String;
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mCurrentFriend:Ljava/lang/String;

    return-object v0
.end method

.method public getDialogConfig()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;
    .locals 1

    .line 2021
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDialogConfig:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;

    return-object v0
.end method

.method public getDisableSecondScreen()I
    .locals 1

    .line 869
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDisableSecondScreen:I

    return v0
.end method

.method public getDynamicScreen()I
    .locals 1

    .line 1427
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDynamicScreen:I

    return v0
.end method

.method public getDynamicScreenId()I
    .locals 1

    .line 1439
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDynamicScreenId:I

    return v0
.end method

.method public getEnterDoor()I
    .locals 1

    .line 933
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mEnterDoor:I

    return v0
.end method

.method public getEnterExtra()Ljava/lang/String;
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mEnterExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getEnterGear()I
    .locals 1

    .line 925
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mEnterGear:I

    return v0
.end method

.method public getExitDialogConfig()Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;
    .locals 1

    .line 1467
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitDialogConfig:Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

    return-object v0
.end method

.method public getExitDialogConfirm()I
    .locals 1

    .line 1056
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitDialogConfirm:I

    return v0
.end method

.method public getExitDoor()I
    .locals 1

    .line 971
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitDoor:I

    return v0
.end method

.method public getExitExtra()Ljava/lang/String;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getExitGear()I
    .locals 1

    .line 941
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitGear:I

    return v0
.end method

.method public getExitRseOff()I
    .locals 1

    .line 963
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitRse:I

    return v0
.end method

.method public getExitScreenOn()I
    .locals 1

    .line 987
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitScreenOn:I

    return v0
.end method

.method public getExitVoice()I
    .locals 1

    .line 979
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitVoice:I

    return v0
.end method

.method public getFriendScenarioList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 995
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mFriendScenarioList:Ljava/util/List;

    return-object v0
.end method

.method public getGroupIndex()I
    .locals 3

    .line 647
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDynamicScreen:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 648
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGroupIndex mDynamicScreenId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDynamicScreenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getDynamicGroupIdx()I

    move-result v0

    return v0

    .line 651
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mGroupIdx:I

    return v0
.end method

.method public getLastLaunchPackage()Ljava/lang/String;
    .locals 1

    .line 1447
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLastLaunchPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchExtra()Ljava/lang/String;
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchPackage()Ljava/lang/String;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getLightMode()I
    .locals 1

    .line 893
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLightMode:I

    return v0
.end method

.method public getLimitAppExit()I
    .locals 1

    .line 1384
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLimitAppExit:I

    return v0
.end method

.method public getMediaKeyFlag()Z
    .locals 1

    .line 1740
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mMediaKeyNeed:Z

    return v0
.end method

.method public getNeedExitDialog()Z
    .locals 1

    .line 2013
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mNeedExitDialog:Z

    return v0
.end method

.method public getNotificationLevel()I
    .locals 1

    .line 1408
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mNotificationLevel:I

    return v0
.end method

.method public getNotifyIcm()Z
    .locals 1

    .line 1455
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mNotifyIcm:Z

    return v0
.end method

.method public getPanelCover()I
    .locals 1

    .line 729
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPanelCover:I

    return v0
.end method

.method protected getPanelScreenIds()[I
    .locals 5

    .line 1575
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPanelScreenIdSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1576
    .local v0, "screenIds":[I
    const/4 v1, 0x0

    .line 1577
    .local v1, "i":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPanelScreenIdSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1578
    .local v3, "id":I
    add-int/lit8 v4, v1, 0x1

    .local v4, "i":I
    aput v3, v0, v1

    .line 1579
    .end local v1    # "i":I
    .end local v3    # "id":I
    nop

    .line 1577
    move v1, v4

    goto :goto_0

    .line 1580
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 837
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPriority:I

    return v0
.end method

.method public getRawGroupIndex()I
    .locals 1

    .line 655
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mGroupIdx:I

    return v0
.end method

.method public getRequestExitReason()Ljava/lang/String;
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRequestExitReason:Ljava/lang/String;

    return-object v0
.end method

.method public getRestoreAreaType()Z
    .locals 1

    .line 2005
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreAreaType:Z

    return v0
.end method

.method public getRestoreTask()I
    .locals 1

    .line 1064
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreTask:I

    return v0
.end method

.method public getRseAction()I
    .locals 1

    .line 1416
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRseAction:I

    return v0
.end method

.method public getScenarioName()Ljava/lang/String;
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenModeConfig()I
    .locals 1

    .line 1072
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScreenModeConfig:I

    return v0
.end method

.method public getSeatWelcomeDisable()I
    .locals 1

    .line 745
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSeatWelcomeDisable:I

    return v0
.end method

.method public getSecondScreenId()I
    .locals 1

    .line 737
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    return v0
.end method

.method public getSecondScreensaver()I
    .locals 1

    .line 877
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreensaver:I

    return v0
.end method

.method public getShouldDoScreenMode()I
    .locals 1

    .line 820
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mShouldDoScreenMode:I

    return v0
.end method

.method public getSoundMode()I
    .locals 1

    .line 1400
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSoundMode:I

    return v0
.end method

.method public getStartActivity()Ljava/lang/String;
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mStartActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1028
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mStatus:I

    return v0
.end method

.method public getStopVoiceDialog()Z
    .locals 1

    .line 917
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mStopVoiceDialog:Z

    return v0
.end method

.method public getSubName()Ljava/lang/String;
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioSubName:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemLimit()I
    .locals 1

    .line 1392
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSystemLimit:I

    return v0
.end method

.method protected getThemeAnimDisable()I
    .locals 1

    .line 796
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mThemeAnimDisable:I

    return v0
.end method

.method public getVoiceMode()I
    .locals 1

    .line 909
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVoiceMode:I

    return v0
.end method

.method public getVolumeBtDynamic()I
    .locals 1

    .line 788
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeBtDynamic:I

    return v0
.end method

.method public getVolumeConfig()Ljava/lang/String;
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeDynamic()I
    .locals 1

    .line 779
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeDynamic:I

    return v0
.end method

.method public invalidData()V
    .locals 6

    .line 2641
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2643
    .local v0, "dataStr":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2644
    const-string v1, "UserScenarioConfiger"

    const-string v2, "invalidData null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2645
    return-void

    .line 2649
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2650
    .local v1, "obj":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSaveData:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;

    const-string/jumbo v3, "volumeDynamic"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;->volumeDynamic:I

    .line 2651
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSaveData:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;

    iget v2, v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;->volumeDynamic:I

    if-eq v4, v2, :cond_1

    .line 2653
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSaveData:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;

    iget v2, v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;->volumeDynamic:I

    iput v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeDynamic:I

    .line 2654
    const-string v2, "UserScenarioConfiger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalidData,volume->"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeDynamic:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSaveData:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;

    iget v2, v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;->volumeBtDynamic:I

    if-eq v4, v2, :cond_2

    .line 2657
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSaveData:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;

    iget v2, v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;->volumeBtDynamic:I

    iput v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeBtDynamic:I

    .line 2658
    const-string v2, "UserScenarioConfiger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalidData,volumeBt->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeBtDynamic:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2662
    .end local v1    # "obj":Lorg/json/JSONObject;
    :cond_2
    goto :goto_0

    .line 2660
    :catch_0
    move-exception v1

    .line 2661
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UserScenarioConfiger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalidData e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2663
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected isDialogLimit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1940
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSystemLimit:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->LIMIT_DIALOG_BIT:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1941
    .local v0, "isDialogLimit":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1942
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->canAppDialog(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v2

    move v0, v1

    .line 1944
    :cond_1
    return v0
.end method

.method public isFriend(Ljava/lang/String;)Z
    .locals 4
    .param p1, "scenario"    # Ljava/lang/String;

    .line 999
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mFriendScenarioList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mFriendScenarioList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1001
    .local v1, "val":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1002
    const-string v0, "UserScenarioConfiger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFriend match,compare:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",own:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const/4 v0, 0x1

    return v0

    .line 1005
    .end local v1    # "val":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1008
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected isPoppanelLimit()Z
    .locals 3

    .line 1948
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSystemLimit:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->LIMIT_POP_PANEL_BIT:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 1949
    .local v0, "isPoppanelLimit":Z
    return v0
.end method

.method protected isQuickPanelLimit()Z
    .locals 3

    .line 1953
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSystemLimit:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->LIMIT_QUICK_PANEL_BIT:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method protected isScenarioBlocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "scenario"    # Ljava/lang/String;

    .line 1475
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->blockScenarios:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->blockScenarios:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1478
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isScreenMatch(I)Z
    .locals 2
    .param p1, "screenId"    # I

    .line 1568
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPanelScreenIdSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1569
    const/4 v0, 0x1

    return v0

    .line 1571
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public launchApp(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 2025
    const-string v0, "com.xiaopeng.xuiservice"

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2026
    const-string v0, "UserScenarioConfiger"

    const-string v1, "launchApp,skip xuiservice"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    return-void

    .line 2029
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchPackage:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 2030
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2031
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2032
    const-string v1, "com.xiaopeng.xui.userscenario"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2033
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioSubName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2034
    const-string v1, "scenario_name"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioSubName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2036
    :cond_1
    const-string v1, "scenario_name"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2038
    :goto_0
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2040
    const-string v1, "eventNotify"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2042
    if-eqz p2, :cond_5

    .line 2043
    const-string v1, "eventBundle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_3

    .line 2046
    :cond_2
    const-string v1, "enter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2047
    const-string v1, "source"

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2048
    const-string v1, "package"

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLastLaunchPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 2050
    :cond_3
    const-string v1, "exitReason"

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitReason:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2051
    const-string v1, "dialogMessage"

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2053
    :goto_1
    const-string v1, "extraInfo"

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExtra:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExtra:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v3, ""

    :goto_2
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2055
    iput-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExtra:Ljava/lang/String;

    .line 2056
    iput-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mEnterExtra:Ljava/lang/String;

    .line 2057
    iput-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitExtra:Ljava/lang/String;

    .line 2058
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mCurrentFriend:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 2059
    const-string v1, "friendScenario"

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mCurrentFriend:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2060
    iput-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mCurrentFriend:Ljava/lang/String;

    .line 2063
    :cond_5
    :goto_3
    const-string v1, "UserScenarioConfiger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchApp,status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",priority="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPriority:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPriority:I

    const/16 v3, 0x64

    if-ge v1, v3, :cond_6

    .line 2065
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_6

    .line 2067
    :cond_6
    move-object v1, v2

    .line 2069
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v2, 0x1

    :try_start_0
    iget v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchType:I

    if-ne v2, v3, :cond_7

    .line 2070
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 2071
    invoke-virtual {v2, v0, v3}, Landroid/app/Application;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v2

    move-object v1, v2

    goto :goto_4

    .line 2073
    :cond_7
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/app/Application;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 2077
    :goto_4
    goto :goto_5

    .line 2075
    :catch_0
    move-exception v2

    .line 2076
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "UserScenarioConfiger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launchApp,e=:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",cause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_5
    const-string v2, "UserScenarioConfiger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchApp with cn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",mLaunchType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    .end local v1    # "cn":Landroid/content/ComponentName;
    :goto_6
    const-string v1, "UserScenarioConfiger"

    const-string v2, "launchApp done"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_8
    return-void
.end method

.method public matchScreenId(I)Z
    .locals 2
    .param p1, "screenId"    # I

    .line 639
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPanelScreenIdSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public postInit()V
    .locals 3

    .line 606
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getPanelCover()I

    move-result v0

    .line 607
    .local v0, "panelCover":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPanelScreenIdSet:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 611
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPanelScreenIdSet:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 614
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPanelScreenIdSet:Ljava/util/Set;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    .line 617
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPanelScreenIdSet:Ljava/util/Set;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 619
    :cond_3
    return-void
.end method

.method public resetPanelScreenIdSet()V
    .locals 3

    .line 622
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPanelScreenIdSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 623
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getPanelCover()I

    move-result v0

    .line 624
    .local v0, "panelCover":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 625
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPanelScreenIdSet:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 628
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPanelScreenIdSet:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 631
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPanelScreenIdSet:Ljava/util/Set;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 633
    :cond_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    .line 634
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPanelScreenIdSet:Ljava/util/Set;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 636
    :cond_3
    return-void
.end method

.method protected resetSecondScreenStatus()V
    .locals 3

    .line 2258
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBrightnessPanel_1:I

    if-eqz v0, :cond_0

    .line 2259
    return-void

    .line 2261
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->RESTART_SECOND_SCREEN_STATE:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2262
    .local v0, "screenFlag":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2263
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->RESTART_SECOND_SCREEN_STATE:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    const-string v1, "UserScenarioConfiger"

    const-string v2, "onReceive screenOn reset second screen flag"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    :cond_1
    return-void
.end method

.method public restoreTaskCheck(ZZ)V
    .locals 9
    .param p1, "enter"    # Z
    .param p2, "hasComponent"    # Z

    .line 1272
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreTaskCheck,flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreTask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreTask:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_7

    .line 1275
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1276
    if-eqz p2, :cond_0

    .line 1277
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreTaskCheck,enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",hasComponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mRestoreComponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreComponent:[Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    return-void

    .line 1281
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getPanelScreenIds()[I

    move-result-object v1

    .line 1282
    .local v1, "screenIds":[I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreComponent:[Landroid/content/ComponentName;

    if-nez v2, :cond_1

    .line 1283
    array-length v2, v1

    new-array v2, v2, [Landroid/content/ComponentName;

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreComponent:[Landroid/content/ComponentName;

    .line 1284
    move v2, v0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 1285
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreComponent:[Landroid/content/ComponentName;

    aget v4, v1, v2

    invoke-direct {p0, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getTopComponent(I)Landroid/content/ComponentName;

    move-result-object v4

    aput-object v4, v3, v2

    .line 1284
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1288
    .end local v2    # "i":I
    :cond_1
    nop

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 1289
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getActivityChangeInfo()Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v2

    .line 1290
    .local v2, "currentTopActivityList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getLastActivityChangeInfo()Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v3

    .line 1291
    .local v3, "LastTopActivityList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    aget v4, v1, v0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    .line 1292
    .local v4, "currentTopPkg":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1293
    .local v5, "lastTopPkg":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1294
    aget v6, v1, v0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    .line 1296
    :cond_2
    const-string v6, "UserScenarioConfiger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreTaskCheck,enter="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",screenIds["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v1, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",currentTopActivityList="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ",LastTopActivityList="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ",currentTopPkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",lastTopPkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",mRestoreComponent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreComponent:[Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchPackage:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 1301
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreComponent:[Landroid/content/ComponentName;

    aget v7, v1, v0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    aput-object v7, v6, v0

    goto :goto_2

    .line 1303
    :cond_3
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreComponent:[Landroid/content/ComponentName;

    aget v7, v1, v0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    aput-object v7, v6, v0

    .line 1305
    :goto_2
    const-string v6, "UserScenarioConfiger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreTaskCheck,enter="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",mRestoreComponent["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreComponent:[Landroid/content/ComponentName;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    .end local v2    # "currentTopActivityList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    .end local v3    # "LastTopActivityList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    .end local v4    # "currentTopPkg":Ljava/lang/String;
    .end local v5    # "lastTopPkg":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1308
    .end local v0    # "i":I
    .end local v1    # "screenIds":[I
    :cond_4
    goto :goto_4

    .line 1309
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreComponent:[Landroid/content/ComponentName;

    if-eqz v1, :cond_7

    .line 1310
    nop

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreComponent:[Landroid/content/ComponentName;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 1311
    const-string v1, "UserScenarioConfiger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreTaskCheck,enter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mRestoreComponent["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreComponent:[Landroid/content/ComponentName;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreComponent:[Landroid/content/ComponentName;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getPanelScreenIds()[I

    move-result-object v2

    aget v2, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->startActivity(Landroid/content/ComponentName;I)V

    .line 1310
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1315
    .end local v0    # "i":I
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreComponent:[Landroid/content/ComponentName;

    .line 1319
    :cond_7
    :goto_4
    return-void
.end method

.method protected rseActionCheck(Z)V
    .locals 4
    .param p1, "enter"    # Z

    .line 1080
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rseActionCheck, mScreenModeConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRseAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " targetScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRseAction:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 1084
    return-void

    .line 1085
    :cond_0
    const/4 v0, 0x2

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRseAction:I

    if-ne v0, v2, :cond_2

    .line 1087
    if-eqz p1, :cond_1

    .line 1088
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->get()Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    const/4 v2, 0x0

    const-string v3, "UserScenarioConfiger"

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->setScreenDisable(IILjava/lang/String;)I

    goto :goto_0

    .line 1090
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->get()Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    const-string v3, "UserScenarioConfiger"

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->setScreenDisable(IILjava/lang/String;)I

    .line 1093
    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized saveData()V
    .locals 5

    monitor-enter p0

    .line 2620
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2621
    .local v0, "obj":Lorg/json/JSONObject;
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeDynamic:I

    if-lez v1, :cond_0

    .line 2623
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSaveData:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeDynamic:I

    iput v2, v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;->volumeDynamic:I

    .line 2624
    const-string/jumbo v1, "volumeDynamic"

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeDynamic:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2626
    :cond_0
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeBtDynamic:I

    if-lez v1, :cond_1

    .line 2627
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSaveData:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeBtDynamic:I

    iput v2, v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;->volumeBtDynamic:I

    .line 2628
    const-string/jumbo v1, "volumeBtDynamic"

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeBtDynamic:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2630
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2631
    .local v1, "str":Ljava/lang/String;
    const-string v2, "UserScenarioConfiger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2633
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2637
    .end local v0    # "obj":Lorg/json/JSONObject;
    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 2619
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 2635
    :catch_0
    move-exception v0

    .line 2636
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "UserScenarioConfiger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalidData e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2638
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 2619
    :goto_1
    monitor-exit p0

    .line 2619
    .end local p0    # "this":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    throw v0
.end method

.method protected screenModeCheck(Z)V
    .locals 12
    .param p1, "enter"    # Z

    .line 1123
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenModeCheck, mScreenModeConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScreenModeConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mDynamicScreenId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDynamicScreenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDynamicScreenId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDynamicScreenId:I

    if-eqz v0, :cond_0

    .line 1126
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenModeCheck, not valid screen, mDynamicScreenId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDynamicScreenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    return-void

    .line 1129
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScreenModeConfig:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_f

    .line 1131
    const/4 v0, 0x1

    .line 1132
    .local v0, "useAnimation":Z
    const/4 v3, 0x0

    .line 1133
    .local v3, "freezeDuration":I
    const/4 v4, 0x0

    .line 1134
    .local v4, "delayDuration":I
    const/4 v5, 0x6

    const/4 v6, 0x4

    if-eqz p1, :cond_8

    .line 1136
    :try_start_0
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mEnterExtra:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1137
    new-instance v7, Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mEnterExtra:Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1138
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "useAnimation"

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move v0, v8

    .line 1139
    const-string v8, "freezeDuration"

    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    move v3, v8

    .line 1140
    const-string v8, "backComponentName"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1141
    .local v8, "backComponentNameStr":Ljava/lang/String;
    const-string v9, "delayDuration"

    invoke-virtual {v7, v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    move v4, v9

    .line 1142
    const-string v9, "UserScenarioConfiger"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "screenModeCheck, enter useAnimation="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ",freezeDuration="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",delayDuration="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "backComponentNameStr":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1144
    :catch_0
    move-exception v7

    .line 1145
    .local v7, "e":Lorg/json/JSONException;
    const-string v8, "UserScenarioConfiger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "screenModeCheck, mEnterExtra e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    .end local v7    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSwitchScreenListener:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SwitchScreenListener;

    invoke-virtual {v7, v8}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->addSwitchScreenListener(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SwitchScreenListener;)V

    .line 1148
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->barVisibleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1149
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v7

    invoke-virtual {v7, v2, v6}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->setScreenBarVisibility(II)V

    .line 1150
    const/4 v6, 0x0

    .line 1151
    .local v6, "split":Z
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getLastValidOperation()Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    move-result-object v7

    .line 1153
    .local v7, "lastOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getTopAreaType(I)Ljava/lang/String;

    move-result-object v8

    .line 1154
    .local v8, "mLaunchAreaType":Ljava/lang/String;
    const/4 v9, 0x0

    if-nez v7, :cond_2

    .line 1155
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v5

    invoke-virtual {v5, v2, v9}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->inSplitMode(ILandroid/os/Bundle;)Z

    move-result v2

    .end local v6    # "split":Z
    .local v2, "split":Z
    :goto_1
    goto :goto_4

    .line 1157
    .end local v2    # "split":Z
    .restart local v6    # "split":Z
    :cond_2
    const/4 v10, 0x5

    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getOperation()I

    move-result v11

    if-eq v10, v11, :cond_5

    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getOperation()I

    move-result v10

    if-ne v5, v10, :cond_3

    goto :goto_3

    .line 1160
    :cond_3
    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getOperation()I

    move-result v5

    if-ne v5, v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    .line 1161
    .end local v6    # "split":Z
    .restart local v2    # "split":Z
    :goto_2
    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getOperation()I

    move-result v5

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getOperationAreaType(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 1158
    .end local v2    # "split":Z
    .restart local v6    # "split":Z
    :cond_5
    :goto_3
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v5

    invoke-virtual {v5, v2, v9}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->inSplitMode(ILandroid/os/Bundle;)Z

    move-result v2

    goto :goto_1

    .line 1165
    .end local v6    # "split":Z
    .restart local v2    # "split":Z
    :goto_4
    const-string v5, "UserScenarioConfiger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "screenModeCheck,enter="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " ,isSpliteBeforeEnter="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->isSpliteBeforeEnter:Z

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ",lastOperation="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " ,split="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " ,mLaunchAreaType="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ,mBackConfig="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBackConfig:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ,mBackComponentName="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBackComponentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    if-eqz v2, :cond_6

    iget-boolean v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->isSpliteBeforeEnter:Z

    if-nez v5, :cond_6

    .line 1170
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->isSpliteBeforeEnter:Z

    .line 1172
    :cond_6
    const/4 v5, 0x1

    .line 1173
    .local v5, "operation":I
    new-instance v6, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

    invoke-direct {v6}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;-><init>()V

    .line 1174
    .local v6, "extraOperationData":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v9

    iget-object v10, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchPackage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isSR(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1175
    invoke-direct {p0, v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setBackAndStarActivityFlag(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

    move-result-object v6

    .line 1176
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->setUseAnimation(Z)V

    .line 1177
    invoke-virtual {v6, v3}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->setFreezeDuration(I)V

    .line 1178
    invoke-virtual {v6, v4}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->setDelayDuration(I)V

    .line 1180
    :cond_7
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v9

    iget-object v10, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchPackage:Ljava/lang/String;

    invoke-virtual {v9, v5, v10, v1, v6}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->switchScreen(ILjava/lang/String;ZLcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)V

    .line 1181
    .end local v2    # "split":Z
    .end local v5    # "operation":I
    .end local v6    # "extraOperationData":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;
    .end local v7    # "lastOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    .end local v8    # "mLaunchAreaType":Ljava/lang/String;
    goto/16 :goto_7

    .line 1183
    :cond_8
    :try_start_1
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitExtra:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 1184
    new-instance v7, Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitExtra:Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1185
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "useAnimation"

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move v0, v8

    .line 1186
    const-string v8, "freezeDuration"

    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    move v3, v8

    .line 1187
    const-string v8, "backComponentName"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1188
    .local v8, "backComponentNameStr":Ljava/lang/String;
    const-string v9, "delayDuration"

    invoke-virtual {v7, v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    move v4, v9

    .line 1189
    const-string v9, "UserScenarioConfiger"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "screenModeCheck,exit useAnimation="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ",freezeDuration="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",delayDuration="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1193
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "backComponentNameStr":Ljava/lang/String;
    :cond_9
    goto :goto_5

    .line 1191
    :catch_1
    move-exception v7

    .line 1192
    .local v7, "e":Lorg/json/JSONException;
    const-string v8, "UserScenarioConfiger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "screenModeCheck mEnterExtra e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    .end local v7    # "e":Lorg/json/JSONException;
    :goto_5
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSwitchScreenListener:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SwitchScreenListener;

    invoke-virtual {v7, v8}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->removeSwitchScreenListener(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SwitchScreenListener;)V

    .line 1195
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->barVisibleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1196
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->barVisibleRunnable:Ljava/lang/Runnable;

    const-wide/16 v9, 0xbb8

    invoke-virtual {v7, v8, v9, v10}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1197
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getRestoreAreaType()Z

    move-result v7

    .line 1198
    .local v7, "isRestoreArea":Z
    const-string v8, "UserScenarioConfiger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "screenModeCheck,enter="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ",isSpliteBeforeEnter="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->isSpliteBeforeEnter:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ",isRestoreArea="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " ,mBackConfig="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBackConfig:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " ,mBackComponentName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBackComponentName:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " ,mShouldDoScreenMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mShouldDoScreenMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    if-nez v7, :cond_a

    .line 1201
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->isSpliteBeforeEnter:Z

    .line 1202
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setRestoreAreaType(Z)V

    .line 1203
    return-void

    .line 1205
    :cond_a
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isPreloading()Z

    move-result v8

    .line 1206
    .local v8, "isPreloading":Z
    const-string v9, "UserScenarioConfiger"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "screenmodeCheck isPreloading = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    if-eqz v8, :cond_b

    .line 1208
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->cleanOperationQueue()V

    .line 1209
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->cancelOperationRunnable()V

    .line 1210
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->isSpliteBeforeEnter:Z

    .line 1211
    iput v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBackConfig:I

    .line 1212
    const-string v1, "UserScenarioConfiger"

    const-string v2, "isPreloading cleanOperationQueue and cancelOperationRunnable"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    return-void

    .line 1216
    :cond_b
    iget-boolean v9, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->isSpliteBeforeEnter:Z

    if-eqz v9, :cond_c

    iget v9, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mShouldDoScreenMode:I

    if-eqz v9, :cond_c

    .line 1218
    new-instance v9, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

    invoke-direct {v9}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;-><init>()V

    .line 1219
    .local v9, "extraOperationData":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->setUseAnimation(Z)V

    .line 1220
    invoke-virtual {v9, v3}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->setFreezeDuration(I)V

    .line 1221
    invoke-virtual {v9, v4}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->setDelayDuration(I)V

    .line 1222
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v10

    iget-object v11, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchPackage:Ljava/lang/String;

    invoke-virtual {v10, v6, v11, v1, v9}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->switchScreen(ILjava/lang/String;ZLcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)V

    .line 1223
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->isSpliteBeforeEnter:Z

    .line 1225
    .end local v9    # "extraOperationData":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;
    :cond_c
    iget v6, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBackConfig:I

    if-ne v1, v6, :cond_e

    .line 1226
    new-instance v6, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

    invoke-direct {v6}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;-><init>()V

    .line 1227
    .restart local v6    # "extraOperationData":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;
    iget-object v9, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBackComponentName:Landroid/content/ComponentName;

    if-eqz v9, :cond_d

    .line 1228
    iget-object v9, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBackComponentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v9}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->setBackComponentName(Landroid/content/ComponentName;)V

    .line 1229
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v9

    iget-object v10, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchPackage:Ljava/lang/String;

    invoke-virtual {v9, v5, v10, v1, v6}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->switchScreen(ILjava/lang/String;ZLcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)V

    goto :goto_6

    .line 1231
    :cond_d
    const-string v1, "UserScenarioConfiger"

    const-string v5, "screenModeCheck, mBackComponentName is null"

    invoke-static {v1, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    :goto_6
    iput v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBackConfig:I

    .line 1236
    .end local v0    # "useAnimation":Z
    .end local v3    # "freezeDuration":I
    .end local v4    # "delayDuration":I
    .end local v6    # "extraOperationData":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;
    .end local v7    # "isRestoreArea":Z
    .end local v8    # "isPreloading":Z
    :cond_e
    :goto_7
    goto :goto_8

    .line 1237
    :cond_f
    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->defaultScreenModeCheck(ZZ)V

    .line 1239
    :goto_8
    return-void
.end method

.method public setAirConditionFlag(I)V
    .locals 0
    .param p1, "value"    # I

    .line 897
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAirConditionFlag:I

    .line 898
    return-void
.end method

.method public setAllowExit(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 1993
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAllowExit:Z

    .line 1994
    return-void
.end method

.method public setAppConfigs([Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;)V
    .locals 0
    .param p1, "configs"    # [Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;

    .line 1459
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAppConfigs:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;

    .line 1460
    return-void
.end method

.method public setAppFlyLimit(I)V
    .locals 0
    .param p1, "flag"    # I

    .line 717
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAppFlyLimit:I

    .line 718
    return-void
.end method

.method public setArHud(I)V
    .locals 0
    .param p1, "flag"    # I

    .line 800
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mArHud:I

    .line 801
    return-void
.end method

.method protected setBlockScenarioList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1471
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->blockScenarios:Ljava/util/List;

    .line 1472
    return-void
.end method

.method public setBrightnessIcmValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 841
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBrightnessIcm:I

    .line 842
    return-void
.end method

.method protected setBrightnessPanelValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 849
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBrightnessPanel:I

    .line 850
    return-void
.end method

.method protected setBrightnessPanel_1Value(I)V
    .locals 0
    .param p1, "value"    # I

    .line 853
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBrightnessPanel_1:I

    .line 854
    return-void
.end method

.method public setConflictHintFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .line 766
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mConflictHintFlag:I

    .line 767
    return-void
.end method

.method public setConflictHintRes(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .line 749
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mConflictHintRes:Ljava/lang/String;

    .line 750
    return-void
.end method

.method public setCurrentFriend(Ljava/lang/String;)V
    .locals 0
    .param p1, "scenario"    # Ljava/lang/String;

    .line 1012
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mCurrentFriend:Ljava/lang/String;

    .line 1013
    return-void
.end method

.method public setDialogConfig(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;

    .line 2017
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDialogConfig:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;

    .line 2018
    return-void
.end method

.method public setDialogMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 1048
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDialogMessage:Ljava/lang/String;

    .line 1049
    return-void
.end method

.method protected setDisableSecondScreen(I)V
    .locals 0
    .param p1, "value"    # I

    .line 865
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDisableSecondScreen:I

    .line 866
    return-void
.end method

.method public setDynamicScreen(I)V
    .locals 1
    .param p1, "val"    # I

    .line 1420
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 1421
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mGroupIdx:I

    .line 1423
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDynamicScreen:I

    .line 1424
    return-void
.end method

.method public setDynamicScreenId(I)V
    .locals 1
    .param p1, "val"    # I

    .line 1431
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDynamicScreenId:I

    if-ltz v0, :cond_0

    .line 1433
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getDynamicGroupIdx()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mGroupIdx:I

    .line 1435
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDynamicScreenId:I

    .line 1436
    return-void
.end method

.method public setEnterDoor(I)V
    .locals 0
    .param p1, "door"    # I

    .line 929
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mEnterDoor:I

    .line 930
    return-void
.end method

.method public setEnterExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .line 701
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mEnterExtra:Ljava/lang/String;

    .line 702
    return-void
.end method

.method public setEnterGear(I)V
    .locals 0
    .param p1, "gear"    # I

    .line 921
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mEnterGear:I

    .line 922
    return-void
.end method

.method public setExitDialogConfig(Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

    .line 1463
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitDialogConfig:Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

    .line 1464
    return-void
.end method

.method public setExitDialogConfirm(I)V
    .locals 0
    .param p1, "val"    # I

    .line 1052
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitDialogConfirm:I

    .line 1053
    return-void
.end method

.method public setExitDoor(I)V
    .locals 0
    .param p1, "door"    # I

    .line 967
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitDoor:I

    .line 968
    return-void
.end method

.method public setExitExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .line 709
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitExtra:Ljava/lang/String;

    .line 710
    return-void
.end method

.method public setExitGear(I)V
    .locals 0
    .param p1, "gearFlag"    # I

    .line 937
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitGear:I

    .line 938
    return-void
.end method

.method public setExitReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 1044
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitReason:Ljava/lang/String;

    .line 1045
    return-void
.end method

.method public setExitRseOff(I)V
    .locals 0
    .param p1, "val"    # I

    .line 959
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitRse:I

    .line 960
    return-void
.end method

.method public setExitScreenOn(I)V
    .locals 0
    .param p1, "val"    # I

    .line 983
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitScreenOn:I

    .line 984
    return-void
.end method

.method public setExitVoice(I)V
    .locals 0
    .param p1, "flag"    # I

    .line 975
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitVoice:I

    .line 976
    return-void
.end method

.method public setFriendScenarioList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 991
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mFriendScenarioList:Ljava/util/List;

    .line 992
    return-void
.end method

.method public setGroupIndex(I)V
    .locals 0
    .param p1, "idx"    # I

    .line 643
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mGroupIdx:I

    .line 644
    return-void
.end method

.method public setLastLaunchPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1443
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLastLaunchPackage:Ljava/lang/String;

    .line 1444
    return-void
.end method

.method public setLaunchExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .line 693
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExtra:Ljava/lang/String;

    .line 694
    return-void
.end method

.method public setLaunchPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .line 685
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchPackage:Ljava/lang/String;

    .line 686
    return-void
.end method

.method public setLaunchSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .line 1040
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchSource:Ljava/lang/String;

    .line 1041
    return-void
.end method

.method public setLightMode(I)V
    .locals 0
    .param p1, "value"    # I

    .line 889
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLightMode:I

    .line 890
    return-void
.end method

.method public setLimitAppExit(I)V
    .locals 0
    .param p1, "val"    # I

    .line 1380
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLimitAppExit:I

    .line 1381
    return-void
.end method

.method public setMediaKeyFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 1736
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mMediaKeyNeed:Z

    .line 1737
    return-void
.end method

.method public setNeedExitDialog(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 2009
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mNeedExitDialog:Z

    .line 2010
    return-void
.end method

.method public setNotificationLevel(I)V
    .locals 0
    .param p1, "val"    # I

    .line 1404
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mNotificationLevel:I

    .line 1405
    return-void
.end method

.method public setNotifyIcm(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 1451
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mNotifyIcm:Z

    .line 1452
    return-void
.end method

.method public setPanelCover(I)V
    .locals 0
    .param p1, "flag"    # I

    .line 725
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPanelCover:I

    .line 726
    return-void
.end method

.method public setPriority(I)V
    .locals 2
    .param p1, "priority"    # I

    .line 828
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 829
    return-void

    .line 832
    :cond_0
    const v0, 0x5f5e100

    rem-int v1, p1, v0

    iput v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPriority:I

    .line 833
    div-int v0, p1, v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchType:I

    .line 834
    return-void
.end method

.method public setRequestExitReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestExitReason"    # Ljava/lang/String;

    .line 1032
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRequestExitReason:Ljava/lang/String;

    .line 1033
    return-void
.end method

.method public setRestoreAreaType(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 2001
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreAreaType:Z

    .line 2002
    return-void
.end method

.method public setRestoreTask(I)V
    .locals 0
    .param p1, "val"    # I

    .line 1060
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreTask:I

    .line 1061
    return-void
.end method

.method protected setRetryFullCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 1584
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRetryFullCount:I

    .line 1585
    return-void
.end method

.method protected setRetryNotFrontCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 1588
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRetryNotFrontCount:I

    .line 1589
    return-void
.end method

.method public setRseAction(I)V
    .locals 0
    .param p1, "val"    # I

    .line 1412
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRseAction:I

    .line 1413
    return-void
.end method

.method public setScenarioName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 669
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    .line 670
    return-void
.end method

.method protected setScenarioPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .line 1076
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioPid:I

    .line 1077
    return-void
.end method

.method public setScreenModeConfig(I)V
    .locals 0
    .param p1, "val"    # I

    .line 1068
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScreenModeConfig:I

    .line 1069
    return-void
.end method

.method public setSeatWelcomeDisable(I)V
    .locals 0
    .param p1, "flag"    # I

    .line 741
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSeatWelcomeDisable:I

    .line 742
    return-void
.end method

.method public setSecondScreenId(I)V
    .locals 0
    .param p1, "screenId"    # I

    .line 733
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    .line 734
    return-void
.end method

.method protected setSecondScreensaver(I)V
    .locals 0
    .param p1, "value"    # I

    .line 873
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreensaver:I

    .line 874
    return-void
.end method

.method public setShouldDoScreenMode(I)V
    .locals 0
    .param p1, "val"    # I

    .line 816
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mShouldDoScreenMode:I

    .line 817
    return-void
.end method

.method public setSoundMode(I)V
    .locals 0
    .param p1, "val"    # I

    .line 1396
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSoundMode:I

    .line 1397
    return-void
.end method

.method public setStartActivity(Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Ljava/lang/String;

    .line 808
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mStartActivity:Ljava/lang/String;

    .line 809
    return-void
.end method

.method public declared-synchronized setStatus(I)V
    .locals 4
    .param p1, "status"    # I

    monitor-enter p0

    .line 1020
    :try_start_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mStatus:I

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1023
    .local v0, "propVal":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v1

    .line 1024
    .local v1, "groupIdx":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sys.xiaopeng.userscenario"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    monitor-exit p0

    return-void

    .line 1019
    .end local v0    # "propVal":Ljava/lang/String;
    .end local v1    # "groupIdx":I
    .end local p1    # "status":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    throw p1
.end method

.method public setStopVoiceDialog(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 913
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mStopVoiceDialog:Z

    .line 914
    return-void
.end method

.method public setSubName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 677
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioSubName:Ljava/lang/String;

    .line 678
    return-void
.end method

.method public setSystemLimit(I)V
    .locals 0
    .param p1, "val"    # I

    .line 1388
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSystemLimit:I

    .line 1389
    return-void
.end method

.method protected setThemeAnimDisable(I)V
    .locals 0
    .param p1, "flag"    # I

    .line 792
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mThemeAnimDisable:I

    .line 793
    return-void
.end method

.method public setVoiceMode(I)V
    .locals 0
    .param p1, "value"    # I

    .line 905
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVoiceMode:I

    .line 906
    return-void
.end method

.method public setVolumeBtDynamic(I)V
    .locals 3
    .param p1, "value"    # I

    .line 783
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeBtDynamic:I

    .line 784
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolumeBtDynamic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method public setVolumeConfig(Ljava/lang/String;)V
    .locals 0
    .param p1, "config"    # Ljava/lang/String;

    .line 881
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeConfig:Ljava/lang/String;

    .line 882
    return-void
.end method

.method public setVolumeDynamic(I)V
    .locals 3
    .param p1, "value"    # I

    .line 774
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeDynamic:I

    .line 775
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolumeDynamic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    return-void
.end method

.method public shouldMonitorVolume()Z
    .locals 1

    .line 824
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeDynamic:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeBtDynamic:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1746
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserScenarioConfiger"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1748
    const-string v1, "mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    const-string v1, "****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    const-string v1, ",group:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1752
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mGroupIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1753
    const-string v1, "\n  friends:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mFriendScenarioList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1755
    const-string v1, "\n  subName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioSubName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1757
    const-string v1, "\n  launchPkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1758
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    const-string v1, "\n  priority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1760
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1761
    const-string v1, "\n  mLaunchType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLaunchType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1763
    const-string v1, "\n  brightnessIcm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1764
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBrightnessIcm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1765
    const-string v1, "\n  brightnessPanel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBrightnessPanel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1767
    const-string v1, "\n  brightnessPanel_1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1768
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mBrightnessPanel_1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1769
    const-string v1, "\n  disableSecondScreen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1770
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDisableSecondScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1771
    const-string v1, "\n  mSecondScreensaver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreensaver:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1773
    const-string v1, "\n  volumeCfg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1774
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeConfig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1775
    const-string v1, "\n  lightMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLightMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1777
    const-string v1, "\n  airConditionFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAirConditionFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1779
    const-string v1, "\n  voiceDisable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1780
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVoiceMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1781
    const-string v1, "\n  stopVoiceDiag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1782
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mStopVoiceDialog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1783
    const-string v1, "\n  mMediaKeyNeed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mMediaKeyNeed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1785
    const-string v1, "\n  mNotifyIcm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1786
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mNotifyIcm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  enterConditon,gear:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mEnterGear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",door:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mEnterDoor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  exitSignal,gear:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitGear:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",door:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitDoor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",voice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitVoice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1789
    const-string v1, "\n  exitScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitScreenOn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1791
    const-string v1, "\n  mLastLaunchPackage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1792
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLastLaunchPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1793
    const-string v1, "\n  mLaunchExtra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1794
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    const-string v1, "\n  mEnterExtra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mEnterExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1797
    const-string v1, "\n  mExitExtra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1798
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1799
    const-string v1, "\n  mAppFlyLimit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1800
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAppFlyLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1801
    const-string v1, "\n  mPanelCover:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1802
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mPanelCover:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1803
    const-string v1, "\n  mSecondScreenId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSecondScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1805
    const-string v1, "\n  seatWelcomeFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1806
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSeatWelcomeDisable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1807
    const-string v1, "\n  status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1808
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1809
    const-string v1, "\n  volumeDynamic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1810
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeDynamic:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1811
    const-string v1, "\n  volumeBtDynamic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVolumeBtDynamic:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1813
    const-string v1, "\n  themeAnimDisable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1814
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mThemeAnimDisable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1815
    const-string v1, "\n  arHud:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1816
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mArHud:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1817
    const-string v1, "\n  mStartActivity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1818
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mStartActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1819
    const-string v1, "\n  mShouldDoScreenMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mShouldDoScreenMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1821
    const-string v1, "\n  toastFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1822
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mConflictHintFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1823
    const-string v1, "\n  appConfigs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1824
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAppConfigs:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;

    if-eqz v1, :cond_0

    .line 1825
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAppConfigs:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 1826
    .local v4, "config":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1827
    iget-object v5, v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1828
    const-string v5, ",launchFlag:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1829
    iget v5, v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;->canLaunch:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1830
    const-string v5, ",moveFlag:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1831
    iget v5, v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;->canMove:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1832
    const-string v5, ",dialogFlag:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    iget v5, v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;->canDialog:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1825
    .end local v4    # "config":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1836
    :cond_0
    const-string v1, "\n  conflictHintRes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1837
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mConflictHintRes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1838
    const-string v1, "\n  exitConfirm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1839
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mExitDialogConfirm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1840
    const-string v1, "\n  restoreTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreTask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1842
    const-string v1, "\n  screenModeConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScreenModeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1844
    const-string v1, "\n  limitAppExit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1845
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mLimitAppExit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1846
    const-string v1, "\n  systemLimit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1847
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSystemLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1848
    const-string v1, "\n  mSoundMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1849
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mSoundMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1850
    const-string v1, "\n  mAllowExit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1851
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mAllowExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1852
    const-string v1, "\n  mNeedExitDialog:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mNeedExitDialog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1854
    const-string v1, "\n  mDialogConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDialogConfig:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1856
    const-string v1, "\n  mNotificationLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mNotificationLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1858
    const-string v1, "\n  mRseAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1859
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRseAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1860
    const-string v1, "\n  mDynamicScreen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1861
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mDynamicScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1862
    const-string v1, "\n  blockScenario:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1863
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->blockScenarios:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1864
    const-string v1, "\n  mRestoreAreaType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1865
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mRestoreAreaType:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1866
    const-string v1, "\n  mScenarioPid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1867
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1868
    const-string v1, "********"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1870
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized voiceOnOff(Z)V
    .locals 7
    .param p1, "bEnter"    # Z

    monitor-enter p0

    .line 2520
    const/4 v0, -0x1

    :try_start_0
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVoiceMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 2522
    monitor-exit p0

    return-void

    .line 2524
    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 2525
    :try_start_1
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVoiceMode:I

    if-nez v1, :cond_4

    .line 2526
    const-string v1, "UserScenarioConfiger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "voiceOnOff,disable,mVoiceDisabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVoiceDisabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2527
    sget-boolean v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVoiceDisabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 2528
    monitor-exit p0

    return-void

    .line 2530
    :cond_1
    :try_start_2
    sput-boolean v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVoiceDisabled:Z

    .line 2531
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mConfigerBinder:Landroid/os/Binder;

    const/4 v3, 0x1

    const-string v4, "scenarioManager"

    .line 2534
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getVoiceDisableHint()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 2531
    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 2539
    :cond_2
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVoiceMode:I

    if-nez v1, :cond_4

    .line 2540
    const-string v1, "UserScenarioConfiger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "voiceOnOff,enable,mVoiceDisabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVoiceDisabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    sget-boolean v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVoiceDisabled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    .line 2542
    monitor-exit p0

    return-void

    .line 2544
    :cond_3
    const/4 v1, 0x0

    :try_start_3
    sput-boolean v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mVoiceDisabled:Z

    .line 2545
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mConfigerBinder:Landroid/os/Binder;

    const-string v3, "scenarioManager"

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2551
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 2519
    .end local p1    # "bEnter":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .line 2519
    .end local p0    # "this":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    throw p1
.end method

.method protected whitelistAppHandle(I)V
    .locals 6
    .param p1, "status"    # I

    .line 2086
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "whitelistAppHandle,status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",scenario="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    const-string v0, "5d_cinema_mode"

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2089
    return-void

    .line 2091
    :cond_0
    const-string v0, "com.qiyi.video.iv"

    .line 2092
    .local v0, "checkPkg":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getScreenId(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v1

    .line 2093
    .local v1, "displayId":I
    if-nez v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->isScreenMatch(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2095
    :cond_1
    const/4 v2, 0x1

    if-ne v2, v1, :cond_4

    .line 2096
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getTopActivity(I)Ljava/lang/String;

    move-result-object v2

    .line 2097
    .local v2, "topActivityStr":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2103
    .end local v2    # "topActivityStr":Ljava/lang/String;
    nop

    .line 2108
    :cond_2
    new-instance v2, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioConfiger$senVODKH5W7Fm3ygK1KLa6aWrfo;

    invoke-direct {v2, v0}, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioConfiger$senVODKH5W7Fm3ygK1KLa6aWrfo;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 2119
    return-void

    .line 2100
    .restart local v2    # "topActivityStr":Ljava/lang/String;
    :cond_3
    const-string v3, "UserScenarioConfiger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "whitelistAppHandle,checked pkg is not top activity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2101
    return-void

    .line 2104
    .end local v2    # "topActivityStr":Ljava/lang/String;
    :cond_4
    const-string v2, "UserScenarioConfiger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "whitelistAppHandle,displayId not match:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    return-void
.end method
