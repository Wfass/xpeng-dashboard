.class public Lcom/xiaopeng/carcontrol/ServerApp;
.super Lcom/xiaopeng/carcontrol/App;
.source "ServerApp.java"


# static fields
.field private static final NAPA_MANAGER_LIST:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mLluDanceAlarmReceiver:Lcom/xiaopeng/lludancemanager/LluDanceAlarmReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 98
    const-class v2, Lcom/xiaopeng/unity/carcontrol/AccountManager;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/xiaopeng/unity/AppManager;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/xiaopeng/unity/xpilot/XPilotManager;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/xiaopeng/unity/carcontrol/AtlManager;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/xiaopeng/unity/carcontrol/ChildModeManager;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/xiaopeng/unity/carcontrol/LampManager;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/xiaopeng/unity/carcontrol/MainControlManager;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lcom/xiaopeng/unity/carcontrol/SituationManager;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Lcom/xiaopeng/unity/carcontrol/TrailerModeControlManager;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-class v2, Lcom/xiaopeng/unity/carcontrol/ArsManager;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-class v2, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-class v2, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaopeng/carcontrol/ServerApp;->NAPA_MANAGER_LIST:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/App;-><init>()V

    return-void
.end method

.method private initControlPanel()V
    .locals 3

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    const-class v1, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/XKeyControlPanel;

    const-string v2, "com.xiaopeng.intent.action.xkey.user"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-class v1, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;

    const-string v2, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_CUSTOM_DOOR_KEY_PANEL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isSupportControlSteer"

    .line 181
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const-class v1, Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;

    const-string v2, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_STEER_CONTROL_PANEL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_0
    const-class v1, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;

    const-string v2, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_MIRROR_CONTROL_PANEL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isSupportSunShade"

    .line 189
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    const-class v1, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;

    const-string v2, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_SUNSHADE_CONTROL_PANEL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "isSupportTrailerHook"

    .line 192
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    const-class v1, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;

    const-string v2, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_TRAILER_MODE_SETTING_DIALOG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v1, "isSupportSeatKeySettings"

    .line 195
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    const-class v1, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;

    const-string v2, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_SEAT_BUTTON_SETTING_PANEL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-class v1, Lcom/xiaopeng/carcontrol/dialog/panel/PsnSeatSettingPanel;

    const-string v2, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_PSN_SEAT_BUTTON_SETTING_PANEL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v1, "isSupportDrvLumbarKeySettings"

    .line 199
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 200
    const-class v1, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;

    const-string v2, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_DRV_LUMBER_PANEL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v1, "isSupportSeatMassage"

    .line 203
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "isSupportRearSeatMassage"

    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 204
    :cond_5
    const-class v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;

    const-string v2, "rear_seat_massage_panel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v1, "isSupportRearScreen"

    .line 206
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 207
    const-class v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;

    const-string v2, "rear_seat_adjust_panel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_7
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->initPanels(Ljava/util/Map;)V

    return-void
.end method

.method private initDropDownMenu()V
    .locals 0

    return-void
.end method

.method private registerBroadcastReceiverForLluDance()V
    .locals 4

    const-string v0, "CarControlApp"

    .line 246
    new-instance v1, Lcom/xiaopeng/lludancemanager/LluDanceAlarmReceiver;

    invoke-direct {v1}, Lcom/xiaopeng/lludancemanager/LluDanceAlarmReceiver;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/ServerApp;->mLluDanceAlarmReceiver:Lcom/xiaopeng/lludancemanager/LluDanceAlarmReceiver;

    .line 247
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.xiaopeng.llu.dance.ALARM_TIME_OUT"

    .line 248
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.xiaopeng.intent.action.ACTIVITY_CHANGED"

    .line 249
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/ServerApp;->mLluDanceAlarmReceiver:Lcom/xiaopeng/lludancemanager/LluDanceAlarmReceiver;

    if-eqz v2, :cond_0

    .line 252
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/ServerApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 254
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register dance alarm receiver but receiver is null , is main process = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/xiaopeng/carcontrol/ServerApp;->isMainProcess()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register dance alarm receiver IllegalArgumentException , is main process = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/xiaopeng/carcontrol/ServerApp;->isMainProcess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private registerContentObserver()V
    .locals 5

    .line 229
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/ServerApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_napa_xsport"

    .line 230
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/carcontrol/ServerApp$1;

    const/4 v3, 0x0

    .line 231
    invoke-static {v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/xiaopeng/carcontrol/ServerApp$1;-><init>(Lcom/xiaopeng/carcontrol/ServerApp;Landroid/os/Handler;)V

    .line 230
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "base"
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/App;->attachBaseContext(Landroid/content/Context;)V

    .line 157
    invoke-static {}, Lcom/xiaopeng/carcontrol/CarControlNapaServer;->getInstance()Lcom/xiaopeng/carcontrol/CarControlNapaServer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/CarControlNapaServer;->initConfig()V

    .line 159
    new-instance p1, Lcom/xiaopeng/track/BIConfig$Builder;

    invoke-direct {p1, p0}, Lcom/xiaopeng/track/BIConfig$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "smartcontrol"

    .line 160
    invoke-virtual {p1, v0}, Lcom/xiaopeng/track/BIConfig$Builder;->moduleName(Ljava/lang/String;)Lcom/xiaopeng/track/BIConfig$Builder;

    move-result-object p1

    const-string v0, "P11219"

    .line 161
    invoke-virtual {p1, v0}, Lcom/xiaopeng/track/BIConfig$Builder;->pid(Ljava/lang/String;)Lcom/xiaopeng/track/BIConfig$Builder;

    move-result-object p1

    const-string v0, "B001"

    .line 162
    invoke-virtual {p1, v0}, Lcom/xiaopeng/track/BIConfig$Builder;->bid(Ljava/lang/String;)Lcom/xiaopeng/track/BIConfig$Builder;

    move-result-object p1

    const-string v0, "com.xiaopeng.smartcontrol"

    .line 163
    invoke-virtual {p1, v0}, Lcom/xiaopeng/track/BIConfig$Builder;->source(Ljava/lang/String;)Lcom/xiaopeng/track/BIConfig$Builder;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lcom/xiaopeng/track/BIConfig$Builder;->build()Lcom/xiaopeng/track/BIConfig;

    move-result-object p1

    .line 165
    invoke-static {p1}, Lcom/xiaopeng/track/BIHelper;->init(Lcom/xiaopeng/track/BIConfig;)V

    const p1, 0x4e9531

    const-string v0, "V5.1.5_20250821203741_Release"

    .line 168
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->update(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onAppCreate$0$ServerApp()V
    .locals 4

    .line 134
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->isCarServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/ServerApp;->initSmartControlSDK()V

    .line 136
    sget-object v0, Lcom/xiaopeng/carcontrol/ServerApp;->NAPA_MANAGER_LIST:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 137
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/unity/carcontrol/base/NapaManagerFactory;->getUnityManager(Ljava/lang/String;)Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    .line 140
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait car service connect exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarControlApp"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/ServerApp;->registerContentObserver()V

    :cond_1
    return-void
.end method

.method onAppCreate()V
    .locals 1

    .line 133
    new-instance v0, Lcom/xiaopeng/carcontrol/-$$Lambda$ServerApp$uj18zZzuTuzyhfWVZJkOX7XX_7c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/-$$Lambda$ServerApp$uj18zZzuTuzyhfWVZJkOX7XX_7c;-><init>(Lcom/xiaopeng/carcontrol/ServerApp;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 147
    invoke-static {}, Lcom/xiaopeng/carcontrol/direct/ElementDirectForOS5;->getInstance()Lcom/xiaopeng/carcontrol/direct/ElementDirectForOS5;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectManager;->init(Lcom/xiaopeng/carcontrol/direct/IElementDirect;)V

    .line 148
    invoke-static {}, Lcom/xiaopeng/carcontrol/CarControlNapaServer;->getInstance()Lcom/xiaopeng/carcontrol/CarControlNapaServer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/carcontrol/CarControlNapaServer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 116
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/App;->onCreate()V

    const v0, 0x7f1202f8

    .line 117
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/ServerApp;->setTheme(I)V

    const/4 v0, 0x1

    .line 118
    invoke-static {v0}, Lcom/xiaopeng/xui/Xui;->setSingleToast(Z)V

    const-string v1, "isSupportVui"

    .line 119
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-static {v0}, Lcom/xiaopeng/xui/Xui;->setVuiEnable(Z)V

    .line 121
    invoke-static {p0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    sget v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setLoglevel(I)V

    .line 123
    invoke-static {p0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    const-string v1, "com.xiaopeng.carcontrol.VuiMainObserver"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->subscribe(Ljava/lang/String;)V

    :cond_0
    const-string v0, "isSupportLluDance"

    .line 125
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/ServerApp;->registerBroadcastReceiverForLluDance()V

    :cond_1
    return-void
.end method

.method preloadControlPanel()V
    .locals 0

    return-void
.end method
