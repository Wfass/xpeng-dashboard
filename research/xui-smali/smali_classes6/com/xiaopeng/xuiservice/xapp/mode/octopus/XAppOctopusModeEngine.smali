.class public Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;
.super Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;
.source "XAppOctopusModeEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XAppOctopusModeEngine"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mConfigRepository:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

.field private mEventProcessor:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

.field mHidDeviceStateListener:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;

.field private mKeyConfigManager:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

.field mKeyEventListener:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;

.field private mKeyMapDialog:Lcom/xiaopeng/xui/app/XDialog;

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

.field mMotionEventListener:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$MotionEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mLastPackagePidMap:Ljava/util/Map;

    .line 188
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mKeyEventListener:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;

    .line 195
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine$3;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mMotionEventListener:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$MotionEventListener;

    .line 202
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine$4;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mHidDeviceStateListener:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;

    .line 39
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isFlyGameModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mConfigRepository:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    .line 41
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mKeyConfigManager:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mKeyConfigManager:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mConfigRepository:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->setupWithConfigRepository(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;)V

    .line 43
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mEventProcessor:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mEventProcessor:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mKeyConfigManager:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->setupConfigManager(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;)V

    .line 45
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->init(Landroid/content/Context;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mActivityManager:Landroid/app/ActivityManager;

    .line 50
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;Landroid/view/KeyEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->handleKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->handleMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private addEventListener()V
    .locals 2

    .line 107
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mHidDeviceStateListener:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->registerListener(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;)V

    .line 108
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mKeyEventListener:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->addKeyEventListener(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;)V

    .line 109
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mMotionEventListener:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$MotionEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->addMotionEventListener(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$MotionEventListener;)V

    .line 110
    return-void
.end method

.method private addOrRemoveEventListener(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 99
    if-eqz p1, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->addEventListener()V

    goto :goto_0

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->removeEventListener()V

    .line 104
    :goto_0
    return-void
.end method

.method private dismissKeyMapDialog()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mKeyMapDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mKeyMapDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 172
    :cond_0
    return-void
.end method

.method private getPid(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 53
    const/4 v0, -0x1

    .line 54
    .local v0, "pid":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mActivityManager:Landroid/app/ActivityManager;

    .line 55
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 56
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

    .line 57
    .local v3, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    iget v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 59
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 61
    .end local v3    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 62
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 144
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mEventProcessor:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mEventProcessor:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->processKeyEvent(Landroid/view/KeyEvent;)V

    .line 147
    :cond_0
    return-void
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 138
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mEventProcessor:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mEventProcessor:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->processJoystickMotionEvent(Landroid/view/MotionEvent;)V

    .line 141
    :cond_0
    return-void
.end method

.method private initKeyMapDialog()V
    .locals 3

    .line 175
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0255

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    .line 176
    const v1, 0x7f0e0069

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 177
    const v1, 0x7f0c004e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setCustomView(IZ)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;)V

    .line 178
    const v2, 0x7f0e0032

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mKeyMapDialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mKeyMapDialog:Lcom/xiaopeng/xui/app/XDialog;

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mKeyMapDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f080097

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 186
    return-void
.end method

.method private isNewApplication(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mLastPackagePidMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, "mLastPid":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->getPid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "mCurrentPid":Ljava/lang/String;
    const-string v2, "XAppOctopusModeEngine"

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

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    const/4 v2, 0x0

    return v2

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mLastPackagePidMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/4 v2, 0x1

    return v2
.end method

.method private removeEventListener()V
    .locals 2

    .line 113
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mHidDeviceStateListener:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->unregisterListener(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;)V

    .line 114
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mKeyEventListener:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->removeKeyEventListener(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;)V

    .line 115
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mMotionEventListener:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$MotionEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->removeMotionEventListener(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$MotionEventListener;)V

    .line 116
    return-void
.end method

.method private showHidDevicePrompt()V
    .locals 0

    .line 96
    return-void
.end method

.method private showKeyMapDialog()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mKeyMapDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-nez v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->initKeyMapDialog()V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mKeyMapDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mKeyMapDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 166
    :cond_1
    return-void
.end method


# virtual methods
.method protected declared-synchronized handleAppInfoChange()V
    .locals 2

    monitor-enter p0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->isCurrentModeEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mEnable:Z

    .line 80
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mEnable:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->isNewApplication(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->showKeyMapDialog()V

    goto :goto_0

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->dismissKeyMapDialog()V

    .line 87
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mEnable:Z

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->addOrRemoveEventListener(Z)V

    .line 89
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mEnable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mEventProcessor:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mEventProcessor:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->onOctopusAppEnter(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_2
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;
    throw v0
.end method

.method protected handleEnableChange()V
    .locals 0

    .line 129
    return-void
.end method

.method protected isCurrentModeEnable()Z
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 120
    return v1

    .line 122
    :cond_0
    const-string v0, "XAppOctopusModeEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &mPackageInfo.controlFlags:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget v3, v3, Lcom/xiaopeng/app/xpPackageInfo;->controlFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget v0, v0, Lcom/xiaopeng/app/xpPackageInfo;->controlFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public onAppConfigUpload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mKeyConfigManager:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mKeyConfigManager:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->onAppConfigUpload(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    return-void
.end method

.method protected onInit()V
    .locals 0

    .line 152
    return-void
.end method

.method protected onRelease()V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->removeEventListener()V

    .line 157
    return-void
.end method
