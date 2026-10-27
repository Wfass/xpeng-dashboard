.class public abstract Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;
.super Ljava/lang/Object;
.source "VcuBaseViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;
    }
.end annotation


# static fields
.field private static final SOUND_DRIVE_MODE_BOOST:I = 0x6

.field private static final SOUND_DRIVE_MODE_BOOST_SUFFIX:Ljava/lang/String; = "boost.wav"

.field private static final SOUND_DRIVE_MODE_COMFORT:I = 0x3

.field private static final SOUND_DRIVE_MODE_COMFORT_SUFFIX:Ljava/lang/String; = "comfort.wav"

.field private static final SOUND_DRIVE_MODE_ECO:I = 0x2

.field private static final SOUND_DRIVE_MODE_ECO_SUFFIX:Ljava/lang/String; = "eco.wav"

.field private static final SOUND_DRIVE_MODE_GEEK:I = 0x7

.field private static final SOUND_DRIVE_MODE_GEEK_SUFFIX:Ljava/lang/String; = "geek.wav"

.field private static final SOUND_DRIVE_MODE_MUD:I = 0x4

.field private static final SOUND_DRIVE_MODE_MUD_SUFFIX:Ljava/lang/String; = "mud.wav"

.field private static final SOUND_DRIVE_MODE_NORMAL:I = 0x0

.field private static final SOUND_DRIVE_MODE_NORMAL_SUFFIX:Ljava/lang/String; = "normal.wav"

.field private static final SOUND_DRIVE_MODE_RACER:I = 0x5

.field private static final SOUND_DRIVE_MODE_RACER_SUFFIX:Ljava/lang/String; = "racer.wav"

.field private static final SOUND_DRIVE_MODE_SPORT:I = 0x1

.field private static final SOUND_DRIVE_MODE_SPORT_SUFFIX:Ljava/lang/String; = "sport.wav"

.field private static final TAG:Ljava/lang/String; = "VcuBaseViewModel"


# instance fields
.field private isQuickControlVisible:Z

.field private mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

.field private final mDiagnosticController:Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;

.field private mDriveModeComfortNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

.field private mDriveModeXpedalNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

.field private mEnergyRecycleNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

.field private mEpsController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;

.field mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

.field private final mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field mMcuCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController$Callback;

.field mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

.field mMmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

.field mTpmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;

.field mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

.field private mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mMcuCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController$Callback;

    .line 175
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$3;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_vcu"

    .line 96
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    const-string/jumbo v1, "xp_diagnostic"

    .line 98
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mDiagnosticController:Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;

    const-string/jumbo v1, "xp_mcu"

    .line 100
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    const-string/jumbo v1, "xp_bcm"

    .line 103
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const-string/jumbo v1, "xp_eps"

    .line 106
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mEpsController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;

    const-string/jumbo v1, "xp_esp"

    .line 108
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    const-string v1, "isSupportXpu"

    .line 110
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "xp_xpu"

    .line 112
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    :cond_0
    const-string/jumbo v1, "xp_msm"

    .line 114
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mMmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    const-string/jumbo v1, "xp_tpms"

    .line 116
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mTpmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;

    .line 118
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$2;

    const/4 v1, 0x0

    .line 120
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$2;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;Landroid/os/Handler;)V

    .line 145
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "set_snow_mode"

    .line 146
    invoke-static {v3}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 145
    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    const-string v0, "IsSupportGeekMode"

    .line 153
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getGeekConfigStr()Ljava/lang/String;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeVcuModule geekConfigStr from sp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getDefaultGeekConfig()Ljava/lang/String;

    move-result-object v0

    .line 159
    :cond_2
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->buildGeekConfig(Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;)V

    .line 162
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->registerLocaleChangedReceiver()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->handleIgStatusChange(I)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->isQuickControlVisible:Z

    return p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->isQuickControlVisible:Z

    return p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->handleLocaleChanged()V

    return-void
.end method

.method private driveModeErrorCodeToToastRes(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 627
    :cond_0
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_sp_error_gear_p:I

    goto :goto_0

    .line 637
    :cond_1
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_sp_error_low_tpms_pressure:I

    goto :goto_0

    .line 634
    :cond_2
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_sp_error_esp_fault:I

    goto :goto_0

    .line 630
    :cond_3
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_sp_error_low_battery:I

    :goto_0
    return p1
.end method

.method private energyRecycleErrorCodeToToastRes(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 912
    :cond_0
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_sp_error_esp_fault:I

    goto :goto_0

    .line 924
    :cond_1
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_power_energy_recycle_grade_notify_snow_mode:I

    goto :goto_0

    .line 918
    :cond_2
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_power_energy_recycle_grade_notify_geek:I

    goto :goto_0

    .line 921
    :cond_3
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_power_energy_recycle_grade_notify_race:I

    goto :goto_0

    .line 915
    :cond_4
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_power_energy_recycle_grade_notify_xpower:I

    :goto_0
    return p1
.end method

.method private handleIgStatusChange(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1341
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const-string p1, ""

    const/4 v0, 0x0

    .line 1342
    invoke-static {p1, v0, v0}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method private handleLocaleChanged()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mDriveModeComfortNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->dismiss()V

    .line 190
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mDriveModeComfortNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mDriveModeXpedalNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->dismiss()V

    .line 195
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mDriveModeXpedalNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mEnergyRecycleNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->dismiss()V

    .line 200
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mEnergyRecycleNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    :cond_2
    return-void
.end method

.method static synthetic lambda$enterXSportGeekSettings$7()V
    .locals 4

    .line 1241
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "com.xiaopeng.xsport.GeekModeService"

    .line 1242
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "showCustomizeDialog"

    .line 1243
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1244
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1245
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->TAG:Ljava/lang/String;

    const-string v2, "enterXSportGeekSettings, result: "

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1247
    :try_start_0
    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private registerLocaleChangedReceiver()V
    .locals 3

    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/carcontrol/App;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 171
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private sendDriveModeErrorToast(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation

    .line 647
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->driveModeErrorCodeToToastRes(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 649
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_0
    return-void
.end method

.method private sendEnergyRecycleErrorToast(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation

    .line 931
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->energyRecycleErrorCodeToToastRes(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 933
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_0
    return-void
.end method

.method private toAsDriveMode(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vcuDriveMode"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    :cond_4
    :goto_0
    return v0
.end method

.method private translateToInfoJsonString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "msg"
        }
    .end annotation

    .line 600
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "Code"

    .line 601
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "Msg"

    .line 602
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 603
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 605
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    :goto_0
    return-object p1
.end method


# virtual methods
.method public confirmOrCancelSetDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "driveMode",
            "confirm"
        }
    .end annotation

    .line 497
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$4;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 502
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mDriveModeComfortNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    goto :goto_0

    .line 499
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mDriveModeXpedalNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    :goto_0
    if-eqz p1, :cond_3

    .line 506
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->access$400(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 508
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->confirmClick()V

    goto :goto_1

    .line 510
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->cancelClick()V

    :cond_3
    :goto_1
    return-void
.end method

.method public confirmOrCancelSetEnergyRecycleGrade(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "confirm"
        }
    .end annotation

    .line 870
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mEnergyRecycleNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->access$400(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 872
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mEnergyRecycleNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->confirmClick()V

    goto :goto_0

    .line 874
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mEnergyRecycleNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->cancelClick()V

    :cond_1
    :goto_0
    return-void
.end method

.method public controlExhibitionMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enter"
        }
    .end annotation

    .line 769
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->controlExhibitionMode(Z)V

    .line 770
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$ZS8QE4d-JuVGgYNWW-_s3fje7lk;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$ZS8QE4d-JuVGgYNWW-_s3fje7lk;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;Z)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public defaultDriveModeInfoCodeAndNotifyMsg()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    .line 594
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->translateToInfoJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public defaultEnergyRecycleInfoCodeAndNotifyMsg()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    .line 818
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->translateToInfoJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enterXSportDriveModeByType(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "driveMode",
            "showTips"
        }
    .end annotation

    .line 1142
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->enterXSportDriveModeByType(II)V

    return-void
.end method

.method public enterXSportGeekSettings()V
    .locals 1

    .line 1240
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$KdvHlmtL4HNc1H992lNpn5J3m08;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$KdvHlmtL4HNc1H992lNpn5J3m08;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAllTerrainInfoCode()I
    .locals 1

    const/16 v0, 0x3e7

    return v0
.end method

.method public getAsDriveModeStatus()I
    .locals 1

    .line 1222
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getAsDriveModeStatus()I

    move-result v0

    return v0
.end method

.method public getAvailableMileage()I
    .locals 1

    const/4 v0, 0x1

    .line 954
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getAvailableMileage(Z)I

    move-result v0

    return v0
.end method

.method public getAvailableMileage(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byMileageMode"
        }
    .end annotation

    .line 959
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getAvailableMileage(Z)I

    move-result p1

    return p1
.end method

.method public getAwdSetting()I
    .locals 1

    .line 1261
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getAwdSetting()I

    move-result v0

    return v0
.end method

.method public getBrakeLightOnOff()Z
    .locals 1

    .line 1256
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getBrakeLightOnOff()Z

    move-result v0

    return v0
.end method

.method public getBreakPedalStatus()Z
    .locals 1

    .line 1201
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getBreakPedalStatus()Z

    move-result v0

    return v0
.end method

.method public getCarSpeed()F
    .locals 1

    .line 974
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getCarSpeed()F

    move-result v0

    return v0
.end method

.method public getChargeStatus()I
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getChargeStatus()I

    move-result v0

    return v0
.end method

.method public getDefaultGeekConfig()Ljava/lang/String;
    .locals 1

    .line 1292
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getDefaultGeekConfig()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDriveMode()I
    .locals 4

    .line 750
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getDriveMode()I

    move-result v0

    .line 751
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDriveMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getDriveModeByUser()I
    .locals 4

    .line 757
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getDriveModeByUser()I

    move-result v0

    .line 758
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDriveModeByUser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method protected getDriveModeSoundPath(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "defaultPath"
        }
    .end annotation

    .line 311
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getSoundResManager()Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    const/4 v1, 0x6

    .line 318
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->getActiveSoundEffectResource(I)Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->getResPath()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    return-object p2

    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v1, "geek.wav"

    goto :goto_1

    :pswitch_1
    const-string v1, "boost.wav"

    goto :goto_1

    :pswitch_2
    const-string v1, "racer.wav"

    goto :goto_1

    :pswitch_3
    const-string v1, "mud.wav"

    goto :goto_1

    :pswitch_4
    const-string v1, "comfort.wav"

    goto :goto_1

    :pswitch_5
    const-string v1, "eco.wav"

    goto :goto_1

    :pswitch_6
    const-string v1, "sport.wav"

    goto :goto_1

    :pswitch_7
    const-string v1, "normal.wav"

    :goto_1
    if-nez v1, :cond_3

    return-object p2

    .line 356
    :cond_3
    array-length p1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p1, :cond_5

    aget-object v3, v0, v2

    .line 357
    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 358
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Matched drive mode sound path: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v3

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
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

.method public getDriveModeSubItemInfo(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    .line 764
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getDriveModeSubItemInfo(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getElectricityPercent()I
    .locals 1

    .line 1123
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getElecPercent()I

    move-result v0

    return v0
.end method

.method public getEnergyDisableString()I
    .locals 2

    .line 802
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getDriveMode()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 803
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->power_recycle_unable_with_xsport_geek:I

    return v0

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getDriveMode()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    .line 806
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->power_recycle_unable_with_xsport_xpower:I

    return v0

    :cond_1
    const-string v0, "isSupportSnowMode"

    .line 808
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getSnowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 809
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->power_recycle_unable_with_snow_mode:I

    return v0

    :cond_2
    const-string v0, "isSupportDriveModeNewArch"

    .line 811
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mDiagnosticController:Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;->isAbsFault()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 812
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->power_recycle_unable_with_ads_fault:I

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public getEnergyRecycleGrade()I
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getEnergyRecycleGrade()I

    move-result v0

    return v0
.end method

.method public getEnergyRecycleGradeByUser()I
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getEnergyRecycleGradeByUser()I

    move-result v0

    return v0
.end method

.method public getEnergyRecycleInfo()I
    .locals 2

    .line 881
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getDriveMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x2

    .line 898
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getDtcFaultStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    .line 902
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getSnowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    :cond_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getGearLevel()I
    .locals 1

    .line 949
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v0

    return v0
.end method

.method public getGeekInfoCode()I
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getFirstEnterXpowerFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e7

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getGeekInfoCodeAndNotifyMsg()Ljava/lang/String;
    .locals 2

    .line 588
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getGeekInfoCode()I

    move-result v0

    .line 589
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->driveModeErrorCodeToToastRes(I)I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 590
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->translateToInfoJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastDriveMode()Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getLastDriveMode()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->fromVcuDriveMode(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    move-result-object v0

    return-object v0
.end method

.method public getMileageMode()I
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getMileageMode()I

    move-result v0

    return v0
.end method

.method public getNGearWarningSwitchStatus()Z
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getNGearWarningSwitchStatus()Z

    move-result v0

    return v0
.end method

.method public getNewDriveArchXPedalMode()Z
    .locals 1

    .line 1161
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getNewDriveArchXPedalMode()Z

    move-result v0

    return v0
.end method

.method public getPowerResponseMode()I
    .locals 1

    .line 1147
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getPowerResponseMode()I

    move-result v0

    return v0
.end method

.method public getRacerInfoCode()I
    .locals 2

    .line 549
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getEspFault()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getGearLevel()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v0, 0x65

    goto :goto_0

    .line 559
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getAvailableMileage()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/16 v0, 0x3e7

    :goto_0
    return v0
.end method

.method public getRacerInfoCodeAndNotifyMsg()Ljava/lang/String;
    .locals 2

    .line 570
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getRacerInfoCode()I

    move-result v0

    .line 571
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->driveModeErrorCodeToToastRes(I)I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 572
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->translateToInfoJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSnowMode()Z
    .locals 1

    .line 1057
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getSnowMode()Z

    move-result v0

    return v0
.end method

.method public getSpDriveModeInfoCodeAndNotifyMsg(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 663
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getRacerInfoCodeAndNotifyMsg()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 660
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getXpowerInfoCodeAndNotifyMsg()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 657
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getGeekInfoCodeAndNotifyMsg()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getSsaSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 1227
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getSsaSw()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    return-object v0
.end method

.method public getTrailerModeStatus()Z
    .locals 1

    .line 1212
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getTrailerModeStatus()Z

    move-result v0

    return v0
.end method

.method public getVMCRwsSwitchState()Z
    .locals 1

    .line 1176
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getVMCRwsSwitchState()Z

    move-result v0

    return v0
.end method

.method public getVMCSystemState()Z
    .locals 1

    .line 1196
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getVMCSystemState()Z

    move-result v0

    return v0
.end method

.method public getVMCZWalkModeState()Z
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getVMCZWalkModeState()Z

    move-result v0

    return v0
.end method

.method public getXpowerInfoCode()I
    .locals 2

    .line 531
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getAvailableMileage()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 535
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->isTpmsPressureNormal()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const-string v0, "isSupportAirSuspension"

    .line 539
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    .line 540
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAsRequestEspState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/16 v0, 0x3e7

    :goto_0
    return v0
.end method

.method public getXpowerInfoCodeAndNotifyMsg()Ljava/lang/String;
    .locals 2

    .line 579
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getXpowerInfoCode()I

    move-result v0

    .line 580
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->driveModeErrorCodeToToastRes(I)I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 581
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->translateToInfoJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract handleBrakeLightChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method protected abstract handleCarSpeedChanged(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation
.end method

.method protected abstract handleCruiseChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isActive"
        }
    .end annotation
.end method

.method protected abstract handleEvSysReady(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ready"
        }
    .end annotation
.end method

.method protected abstract handleExhibitionModeChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method protected abstract handleGearChange(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gear"
        }
    .end annotation
.end method

.method protected abstract handleNGearWarningSwChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method protected abstract handlePowerResponseModeChange(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method protected abstract handleQuickControlVisible(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isQuickControlVisible"
        }
    .end annotation
.end method

.method protected abstract handleShowModeChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method protected abstract handleSnowModeChange(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method protected abstract handleSsaSwChange(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method protected abstract handleTrailerModeSwitchChange(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method protected abstract handleXPedalModeSwitchChange(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public isAbsFault()Z
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mDiagnosticController:Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;->isAbsFault()Z

    move-result v0

    return v0
.end method

.method public isAutoDriveModeEnabled()Z
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isAutoDriveModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isBreakPedalPressed()Z
    .locals 1

    .line 1217
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getBreakPedalStatus()Z

    move-result v0

    return v0
.end method

.method public isCruiseActive()Z
    .locals 1

    .line 1011
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isCruiseActive()Z

    move-result v0

    return v0
.end method

.method public isEVSysReady()Z
    .locals 1

    .line 1108
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isEvSysReady()Z

    move-result v0

    return v0
.end method

.method public isEnergyEnable(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showToast"
        }
    .end annotation

    .line 790
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getEnergyDisableString()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 793
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public isEvHighVolOn()Z
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isEvHighVolReady()Z

    move-result v0

    return v0
.end method

.method public isExhibitionMode()Z
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isExhibitionMode()Z

    move-result v0

    return v0
.end method

.method public isExhibitionModeOn()Z
    .locals 1

    .line 1271
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isExhibitionModeOn()Z

    move-result v0

    return v0
.end method

.method public isQuickControlVisible()Z
    .locals 1

    .line 1137
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->isQuickControlVisible:Z

    return v0
.end method

.method public isTestDriveModeOn()Z
    .locals 1

    .line 1276
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isTestDriveModeOn()Z

    move-result v0

    return v0
.end method

.method public isTpmsPressureNormal()Z
    .locals 7

    .line 516
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mTpmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;->getTpmsWarningState()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 517
    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_2

    .line 519
    array-length v2, v0

    const/4 v3, 0x1

    move v4, v1

    move v5, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v6, v0, v4

    if-nez v6, :cond_0

    move v6, v3

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_1
    and-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v5

    :cond_2
    return v1
.end method

.method public synthetic lambda$controlExhibitionMode$4$VcuBaseViewModel(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "enter"
        }
    .end annotation

    .line 770
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->handleExhibitionModeChanged(Z)V

    return-void
.end method

.method public synthetic lambda$null$0$VcuBaseViewModel(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isConfirm"
        }
    .end annotation

    .line 390
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 391
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->EcoPlus:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$null$2$VcuBaseViewModel(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isConfirm"
        }
    .end annotation

    .line 408
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 409
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Comfort:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$null$5$VcuBaseViewModel(IZLjava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "grade",
            "storeEnable",
            "isConfirm"
        }
    .end annotation

    .line 852
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 853
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {p3, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setEnergyRecycleGrade(IZ)V

    .line 854
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->toVcuCmd()I

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->setDriveMode(IZZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setEnergyRecycleGradeWithPreconditions$6$VcuBaseViewModel(IZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "grade",
            "storeEnable",
            "isGuiLaunch"
        }
    .end annotation

    .line 845
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mEnergyRecycleNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    if-nez v0, :cond_0

    .line 846
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;-><init>()V

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_power_energy_recycle_grade_notify_dirt_dialog_title:I

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_power_energy_recycle_grade_notify_dirt_dialog_desc:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->build(IILjava/util/function/Consumer;)Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mEnergyRecycleNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mEnergyRecycleNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$vXgKWFWlwbjbTZmrcURMwhmOqO4;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$vXgKWFWlwbjbTZmrcURMwhmOqO4;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;IZ)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->updateCallBack(Ljava/util/function/Consumer;)V

    .line 857
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mEnergyRecycleNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->setGuiLaunch(Z)V

    .line 858
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mEnergyRecycleNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->show()V

    .line 859
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mEnergyRecycleNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    const-string p2, "DriveEnergyRecycleSwitchConfirmDialogDialog"

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->initVuiScene(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$showConfirmDialogBySpDriveMode$1$VcuBaseViewModel(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "isGuiLaunch"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mDriveModeXpedalNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;-><init>()V

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_xpedal_dialog_title:I

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_xpedal_dialog_content:I

    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$BQHcUF23QfELsl7BTZAxA0IZVZA;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$BQHcUF23QfELsl7BTZAxA0IZVZA;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->build(IILjava/util/function/Consumer;)Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mDriveModeXpedalNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mDriveModeXpedalNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->setGuiLaunch(Z)V

    .line 396
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mDriveModeXpedalNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->show()V

    .line 397
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mDriveModeXpedalNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    const-string v0, "DriveModeXpedalConfirmDialogDialog"

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->initVuiScene(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$showConfirmDialogBySpDriveMode$3$VcuBaseViewModel(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "isGuiLaunch"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mDriveModeComfortNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;-><init>()V

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_comfort_dialog_title:I

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_comfort_dialog_content:I

    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$uXCLuwHR3gwi8EGVMohY4VOeg1s;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$uXCLuwHR3gwi8EGVMohY4VOeg1s;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->build(IILjava/util/function/Consumer;)Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mDriveModeComfortNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mDriveModeComfortNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->setGuiLaunch(Z)V

    .line 414
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mDriveModeComfortNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->show()V

    .line 415
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mDriveModeComfortNotifyDialog:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;

    const-string v0, "DriveModeComfortConfirmDialogDialog"

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->initVuiScene(Ljava/lang/String;)V

    return-void
.end method

.method public onBrakeLightChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 1096
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->handleBrakeLightChanged(Z)V

    return-void
.end method

.method public onCruiseStateChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isActive"
        }
    .end annotation

    .line 1004
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->handleCruiseChanged(Z)V

    return-void
.end method

.method public onEvSysReady(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1118
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->handleEvSysReady(Z)V

    return-void
.end method

.method public onGearChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gear"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 986
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->handleGearChange(I)V

    goto :goto_0

    .line 988
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid gear:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onNGearWarningSwChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 999
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->handleNGearWarningSwChanged(Z)V

    return-void
.end method

.method public onPowerResponseModeChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1072
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->handlePowerResponseModeChange(I)V

    return-void
.end method

.method public onRawCarSpeedChanged(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    .line 994
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->handleCarSpeedChanged(F)V

    return-void
.end method

.method public onSnowModeChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1062
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->handleSnowModeChange(Z)V

    return-void
.end method

.method public onSsaSwChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1091
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->handleSsaSwChange(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public onTrailerModeSwitchChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 1086
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->handleTrailerModeSwitchChange(Z)V

    return-void
.end method

.method public onXPedalModeSwitchChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 1081
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->handleXPedalModeSwitchChange(Z)V

    return-void
.end method

.method public varargs registerBusiness([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .line 1348
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->registerBusiness([Ljava/lang/String;)V

    return-void
.end method

.method public restoreDriveSubConfig()V
    .locals 3

    .line 1280
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getDriveMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->setDriveModeSubItemByUser(IZZZ)V

    return-void
.end method

.method public setAutoDriveMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setAutoDriveMode(Z)V

    return-void
.end method

.method public setAwdSetting(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1266
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setAwdSetting(I)V

    return-void
.end method

.method public setDriveMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    const/4 v0, 0x1

    .line 208
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->setDriveMode(IZ)V

    return-void
.end method

.method public setDriveMode(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "driveMode",
            "audioEffect"
        }
    .end annotation

    const/4 v0, 0x1

    .line 213
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->setDriveMode(IZZ)V

    return-void
.end method

.method public setDriveMode(IZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "driveMode",
            "audioEffect",
            "storeEnable"
        }
    .end annotation

    const/16 v0, 0xd

    const/4 v1, 0x7

    const/4 v2, 0x5

    if-eqz p2, :cond_7

    const/4 p2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_6

    const/4 v4, 0x2

    if-eq p1, v3, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/16 v4, 0xa

    if-eq p1, v4, :cond_1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string v4, ""

    goto :goto_0

    :pswitch_0
    const/4 v4, 0x6

    const-string v5, "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_boost.wav"

    .line 249
    invoke-virtual {p0, v4, v5}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getDriveModeSoundPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x4

    const-string v5, "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_mud.wav"

    .line 243
    invoke-virtual {p0, v4, v5}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getDriveModeSoundPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_2
    const-string v4, "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_geek.wav"

    .line 253
    invoke-virtual {p0, v1, v4}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getDriveModeSoundPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_racer.wav"

    .line 246
    invoke-virtual {p0, v2, v4}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getDriveModeSoundPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_normal_new.wav"

    .line 239
    invoke-virtual {p0, p2, v4}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getDriveModeSoundPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    const-string v5, "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_comfortable.wav"

    .line 235
    invoke-virtual {p0, v4, v5}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getDriveModeSoundPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    const-string v4, "/system/media/audio/xiaopeng/cdu/wav/CDU_x_pedal.wav"

    goto :goto_0

    :cond_4
    const-string v4, "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_sport.wav"

    .line 228
    invoke-virtual {p0, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getDriveModeSoundPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    const-string v5, "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_eco.wav"

    .line 225
    invoke-virtual {p0, v4, v5}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getDriveModeSoundPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_6
    const-string v4, "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_normal.wav"

    .line 222
    invoke-virtual {p0, p2, v4}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getDriveModeSoundPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 258
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 259
    invoke-static {v4, p2, v3}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZZ)V

    .line 262
    :cond_7
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getDriveMode()I

    move-result p2

    const-string v3, "isSupportDriveModeNewArch"

    .line 263
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "isBindDriveModeAndEnergyRecycle"

    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eq p1, v2, :cond_8

    if-ne p2, v2, :cond_8

    .line 266
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_eco_plus_off:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_1

    :cond_8
    if-eq p1, v1, :cond_9

    if-ne p2, v1, :cond_9

    .line 269
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_anti_sickness_off:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_9
    :goto_1
    if-eq p1, v0, :cond_a

    if-ne p2, v0, :cond_a

    .line 276
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p2

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_anti_racer_off:I

    invoke-virtual {p2, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_a
    const/16 p2, 0x10

    if-ne p1, p2, :cond_b

    .line 280
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p2

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_offroad_energy_recycle_notify:I

    invoke-virtual {p2, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 282
    :cond_b
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {p2, p1, p3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setDriveMode(IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    const/4 v0, 0x1

    .line 673
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)V

    return-void
.end method

.method public setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "driveMode",
            "storeEnable"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 681
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->toVcuCmd()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->setDriveMode(IZZ)V

    .line 682
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->toVcuCmd()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->setDriveModeSubItemByUser(IZ)V

    return-void
.end method

.method public setDriveModeSp(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setDriveModeSp(I)V

    return-void
.end method

.method public setDriveModeSp(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "driveMode",
            "needhandlecallback"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setDriveModeSp(IZ)V

    return-void
.end method

.method public setDriveModeSubItemByUser(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vcuCode"
        }
    .end annotation

    const/4 v0, 0x0

    .line 687
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->setDriveModeSubItemByUser(IZ)V

    return-void
.end method

.method public setDriveModeSubItemByUser(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vcuCode",
            "customerFlag"
        }
    .end annotation

    const/4 v0, 0x0

    .line 692
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->setDriveModeSubItemByUser(IZZ)V

    return-void
.end method

.method public setDriveModeSubItemByUser(IZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vcuCode",
            "customerFlag",
            "igOn"
        }
    .end annotation

    const/4 v0, 0x0

    .line 697
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->setDriveModeSubItemByUser(IZZZ)V

    return-void
.end method

.method public setDriveModeSubItemByUser(IZZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vcuCode",
            "customerFlag",
            "igOn",
            "isRestoreMode"
        }
    .end annotation

    .line 702
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDriveModeSubItemByUser: vcuCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", customerFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", igOn: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", isRestoreMode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->getDriveSubItem(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;

    move-result-object p2

    if-eqz p2, :cond_6

    if-eqz p4, :cond_0

    .line 706
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->getDefaultDriveSubItem(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;

    move-result-object p2

    .line 707
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "setDriveModeSubItemByUser: restore default drive sub item: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getDriveSubItemStringForDebug()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->restoreDefaultConfig(I)V

    .line 709
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {p3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->saveDriveSubItemByRestoreDefault()V

    .line 712
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "setDriveModeSubItemByUser: driveSubItemDetail: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getDriveSubItemStringForDebug()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->getDriveSubConfigWithDriveMode(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->onDriveSubConfigChanged(Ljava/lang/String;)V

    const-string p3, "EPS"

    .line 718
    invoke-virtual {p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result p3

    const/4 p4, 0x0

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    .line 720
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mEpsController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;

    invoke-interface {v1, p3, p4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;->setSteeringEps(IZ)V

    :cond_1
    const-string p3, "ESP"

    .line 724
    invoke-virtual {p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result p3

    .line 725
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isEvSysReady()Z

    move-result v1

    if-eq p3, v0, :cond_5

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const-string v1, "isSupportSnowMode"

    .line 728
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getSnowMode()Z

    move-result v1

    if-eqz v1, :cond_2

    move p3, v2

    .line 731
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v1, p3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->setEspMode(I)V

    goto :goto_1

    .line 734
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    const/4 v3, 0x3

    if-eq p3, v3, :cond_4

    goto :goto_0

    :cond_4
    move v2, p4

    :goto_0
    invoke-interface {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->setEspSw(Z)V

    :cond_5
    :goto_1
    const-string p3, "ENERGY_RECOVERY"

    .line 739
    invoke-virtual {p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x5

    if-eq p1, p3, :cond_6

    const/4 p3, 0x7

    if-eq p1, p3, :cond_6

    if-eq p2, v0, :cond_6

    .line 743
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {p1, p2, p4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setEnergyRecycleGrade(IZ)V

    :cond_6
    return-void
.end method

.method public setEnergyRecycleGrade(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "grade"
        }
    .end annotation

    const/4 v0, 0x1

    .line 828
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->setEnergyRecycleGradeWithPreconditions(IZZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setEnergyRecycleGrade(IZ)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "grade",
            "withPreconditions"
        }
    .end annotation

    const/4 v0, 0x1

    .line 833
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->setEnergyRecycleGradeWithPreconditions(IZZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setEnergyRecycleGradeWithPreconditions(IZZZ)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "grade",
            "storeEnable",
            "withPreconditions",
            "isGuiLaunch"
        }
    .end annotation

    .line 838
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnergyRecycleGradeWithPreconditions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", storeEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", withPreconditions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isGuiLaunch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getEnergyRecycleInfo()I

    move-result v0

    if-eqz p3, :cond_2

    if-nez v0, :cond_0

    .line 842
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {p3, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setEnergyRecycleGrade(IZ)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    if-ne v0, p3, :cond_1

    .line 844
    new-instance p3, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$w-Goog72lCRT7WYNPA4a9qhXGZM;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$w-Goog72lCRT7WYNPA4a9qhXGZM;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;IZZ)V

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 862
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->sendEnergyRecycleErrorToast(I)V

    goto :goto_1

    .line 864
    :cond_2
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {p3, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setEnergyRecycleGrade(IZ)V

    .line 866
    :goto_1
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->energyRecycleErrorCodeToToastRes(I)I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->translateToInfoJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setNGearWarningSwitch(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1018
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setNGearWarningSwitch(Z)V

    return-void
.end method

.method public setNewDriveArchXPedalMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1171
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->setNewDriveArchXPedalMode(ZZ)V

    return-void
.end method

.method public setNewDriveArchXPedalMode(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "storeEnable"
        }
    .end annotation

    .line 1166
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setNewDriveArchXPedalMode(ZZ)V

    return-void
.end method

.method public setPowerResponseMode(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 1152
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    .line 1153
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAirSuspensionHeight()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1154
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAirSuspensionHeight(IZ)V

    .line 1156
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v1, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setPowerResponseMode(IZ)V

    return-void
.end method

.method public setQuickControlVisible(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    .line 1128
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1129
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->isQuickControlVisible:Z

    .line 1130
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_control_ui_resume"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public setSnowMode(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1030
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setSnowMode(Z)V

    if-eqz p1, :cond_4

    .line 1033
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getEnergyRecycleGrade()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setSnowModeEnergyCache(I)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_3

    .line 1036
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getDriveMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 1037
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->getDriveMode()I

    move-result v0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1043
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_anti_sickness_with_open_snow_mode:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 1039
    :cond_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_eco_plus_with_open_snow_mode:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 1050
    :cond_3
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "set_snow_mode"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public setSsaSwEnable(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "toast"
        }
    .end annotation

    .line 1232
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setSsaSwEnable(Z)V

    if-eqz p2, :cond_1

    .line 1234
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p2

    if-eqz p1, :cond_0

    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->ssa_feature_on_toast:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->ssa_feature_off_toast:I

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(IZ)V

    :cond_1
    return-void
.end method

.method public setTrailerMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1206
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setTrailerMode(Z)V

    .line 1207
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setTransportMode(Z)V

    return-void
.end method

.method public setTuningConfig()V
    .locals 2

    .line 1284
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->getGeekConfig()Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->saveGeekConfig(Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;)I

    return-void
.end method

.method public setVMCRwsSwitch(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 1181
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setVMCRwsSwitch(Z)V

    return-void
.end method

.method public setVMCZWalkModeSwitch(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 1191
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setVMCZWalkModeSwitch(Z)V

    return-void
.end method

.method public showConfirmDialogBySpDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "driveMode",
            "isGuiLaunch"
        }
    .end annotation

    .line 381
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$4;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/16 v1, 0x3e7

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 402
    :cond_0
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$VA-tp7NK3P0Um7iILN8TU_e9aSA;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$VA-tp7NK3P0Um7iILN8TU_e9aSA;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;Z)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 384
    :cond_1
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$a6Sfz75C2gsqPwUtxz6o6ikypgI;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$a6Sfz75C2gsqPwUtxz6o6ikypgI;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;Z)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 419
    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->driveModeErrorCodeToToastRes(I)I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->translateToInfoJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs unregisterBusiness([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .line 1353
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->unregisterBusiness([Ljava/lang/String;)V

    return-void
.end method
