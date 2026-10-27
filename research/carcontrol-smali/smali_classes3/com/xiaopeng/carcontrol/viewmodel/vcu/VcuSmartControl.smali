.class public Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;
.super Ljava/lang/Object;
.source "VcuSmartControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl$SingleHolder;
    }
.end annotation


# static fields
.field private static final AUTO_DRIVE_VALID_TIME:J = 0xea60L

.field private static final MILEAGE_THRESHOLD_HIGH:I = 0x64

.field private static final MILEAGE_THRESHOLD_LOW:I = 0x3c

.field private static final MILEAGE_THRESHOLD_TOO_LOW:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "VcuSmartControl"


# instance fields
.field private mAutoDriveMode:Z

.field private mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

.field private mFuncModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    .line 61
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    .line 62
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mFuncModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    return-void
.end method

.method private getDriveModeStr(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastMode"
        }
    .end annotation

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 131
    :cond_0
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->special_drive_mode_mud:I

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 128
    :cond_1
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_xsport_geek:I

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 125
    :cond_2
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_normal:I

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 116
    :cond_3
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_sport:I

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 122
    :cond_4
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_eco:I

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 119
    :cond_5
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_normal:I

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;
    .locals 1

    .line 49
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl$SingleHolder;->access$000()Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;

    move-result-object v0

    return-object v0
.end method

.method private onAutoDriveModeChanged(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "force"
        }
    .end annotation

    .line 256
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mAutoDriveMode:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_1

    .line 257
    :cond_0
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mAutoDriveMode:Z

    if-nez p2, :cond_1

    .line 260
    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAutoDriveModeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", and reset all low power timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 261
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setLowPower30Ts(J)V

    .line 262
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setLowPower60Ts(J)V

    .line 263
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setLowPower100Ts(J)V

    .line 267
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->getAvailableMileage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->onRemainMileageChanged(I)V

    return-void
.end method


# virtual methods
.method getMileageHighThreshold()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method handleExitLowMode()V
    .locals 14

    .line 223
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mAutoDriveMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->toPreviousMode(Z)V

    goto :goto_1

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mFuncModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getLastDriveMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->getDriveModeStr(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v2

    const-string v3, "isOldAiAssistant"

    .line 228
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x138d

    goto :goto_0

    :cond_1
    const v3, 0x88bb

    :goto_0
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$string;->fully_battery_title:I

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 230
    invoke-static {v4, v5}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/xiaopeng/carcontrolmodule/R$string;->fully_battery_content:I

    .line 231
    invoke-static {v5}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v7, Lcom/xiaopeng/carcontrolmodule/R$string;->fully_battery_tts:I

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v0, v8, v6

    .line 232
    invoke-static {v7, v8}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/xiaopeng/carcontrolmodule/R$string;->low_battery_wake_words:I

    .line 233
    invoke-static {v8}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/xiaopeng/carcontrolmodule/R$string;->format_change_mode_response:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v6

    .line 234
    invoke-static {v9, v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->low_battery_btn_title:I

    .line 235
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-wide/32 v11, 0xea60

    new-instance v13, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuSmartControl$GQ8JEDfSO_6rtE1Dv6NaGpxwUhk;

    invoke-direct {v13, p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuSmartControl$GQ8JEDfSO_6rtE1Dv6NaGpxwUhk;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;)V

    move-object v6, v7

    move-object v7, v8

    move-object v8, v0

    .line 228
    invoke-virtual/range {v2 .. v13}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->sendMessageToMessageCenter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLcom/xiaopeng/carcontrol/IpcRouterService$ICallback;)V

    :goto_1
    return-void
.end method

.method handleTooLow()V
    .locals 13

    .line 206
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mAutoDriveMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 207
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->toEcoMode(Z)V

    goto :goto_1

    .line 209
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    const-string v0, "isOldAiAssistant"

    .line 210
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x138a

    goto :goto_0

    :cond_1
    const v0, 0x88ba

    :goto_0
    move v2, v0

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->low_battery_title:I

    .line 212
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->too_low_battery_content:I

    .line 213
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->too_low_battery_prompt_tts:I

    .line 214
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->low_battery_wake_words:I

    .line 215
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->low_battery_response_tts:I

    .line 216
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->low_battery_btn_title:I

    .line 217
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-wide/32 v10, 0xea60

    new-instance v12, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuSmartControl$V5UAqMRoQN-wBNpKvHoGOKvuzY0;

    invoke-direct {v12, p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuSmartControl$V5UAqMRoQN-wBNpKvHoGOKvuzY0;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;)V

    .line 210
    invoke-virtual/range {v1 .. v12}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->sendMessageToMessageCenter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLcom/xiaopeng/carcontrol/IpcRouterService$ICallback;)V

    :goto_1
    return-void
.end method

.method public isParkStall()Z
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->getGearLevel()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$handleExitLowMode$2$VcuSmartControl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "content"
        }
    .end annotation

    const/4 p1, 0x0

    .line 236
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->toPreviousMode(Z)V

    return-void
.end method

.method public synthetic lambda$handleTooLow$1$VcuSmartControl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "content"
        }
    .end annotation

    const/4 p1, 0x0

    .line 218
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->toEcoMode(Z)V

    return-void
.end method

.method public synthetic lambda$onEcoPlusMode$3$VcuSmartControl()V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;->setAvhSw(Z)V

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;->getAvhFault()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "avh_sw_notify"

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRemainMileageChanged$0$VcuSmartControl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "content"
        }
    .end annotation

    const/4 p1, 0x0

    .line 183
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->toEcoMode(Z)V

    return-void
.end method

.method public onChargeStatusChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chargeStatus"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 247
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChargeStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", and reset all low power timestamp"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 248
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setLowPower30Ts(J)V

    .line 249
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setLowPower60Ts(J)V

    .line 250
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setLowPower100Ts(J)V

    .line 251
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->getAvailableMileage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->onRemainMileageChanged(I)V

    :cond_1
    return-void
.end method

.method public onEcoPlusMode(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 308
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;->getAvhSw()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 309
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuSmartControl$OTgsAYC6S-MFmQBvBHghD2qFcOU;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuSmartControl$OTgsAYC6S-MFmQBvBHghD2qFcOU;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;)V

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    .line 316
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;->getAvhFault()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x9c4

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x64

    .line 309
    :goto_0
    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public onRemainMileageChanged(I)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mileage"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "isSupportLowPowerProtect"

    .line 144
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    if-ltz v1, :cond_8

    .line 147
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;->isShowCarDriveDisable()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_2

    .line 152
    :cond_1
    iget-object v3, v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->getDriveMode()I

    move-result v3

    .line 153
    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "leftMileage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", currentMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAutoDriveMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mAutoDriveMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x7

    const/4 v7, 0x5

    const/16 v8, 0x1e

    const/4 v9, 0x1

    if-gt v1, v8, :cond_2

    if-eq v3, v9, :cond_2

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_2

    .line 155
    iget-object v10, v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    .line 159
    invoke-interface {v10}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->getChargeStatus()I

    move-result v10

    if-eq v10, v5, :cond_2

    .line 160
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->isFuncLowPower30Allowed()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 161
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setLowPower30Ts(J)V

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->handleTooLow()V

    goto/16 :goto_1

    :cond_2
    if-le v1, v8, :cond_5

    const/16 v8, 0x3c

    if-gt v1, v8, :cond_5

    if-eq v3, v9, :cond_5

    if-eq v3, v7, :cond_5

    if-eq v3, v6, :cond_5

    .line 164
    iget-object v6, v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    .line 168
    invoke-interface {v6}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->getChargeStatus()I

    move-result v6

    if-eq v6, v5, :cond_5

    .line 169
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->isFuncLowPower60Allowed()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 170
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setLowPower60Ts(J)V

    .line 171
    iget-boolean v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mAutoDriveMode:Z

    if-eqz v1, :cond_3

    .line 172
    invoke-virtual {v0, v9}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->toEcoMode(Z)V

    goto/16 :goto_1

    .line 174
    :cond_3
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v10

    const-string v1, "isOldAiAssistant"

    .line 175
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x1389

    goto :goto_0

    :cond_4
    const v1, 0x88b9

    :goto_0
    move v11, v1

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->low_battery_title:I

    .line 177
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->low_battery_content:I

    .line 178
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->low_battery_tts:I

    .line 179
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->low_battery_wake_words:I

    .line 180
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v15

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->low_battery_response_tts:I

    .line 181
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->low_battery_btn_title:I

    .line 182
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const-wide/32 v19, 0xea60

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuSmartControl$eR4xRZokKq2vWPJTU4rgC7Uc_bY;

    invoke-direct {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuSmartControl$eR4xRZokKq2vWPJTU4rgC7Uc_bY;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;)V

    move-object/from16 v21, v1

    .line 175
    invoke-virtual/range {v10 .. v21}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->sendMessageToMessageCenter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLcom/xiaopeng/carcontrol/IpcRouterService$ICallback;)V

    goto :goto_1

    .line 185
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->getMileageHighThreshold()I

    move-result v5

    if-le v1, v5, :cond_7

    if-ne v3, v9, :cond_7

    .line 187
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->isFuncLowPower100Allowed()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 188
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->isDriveModeChangedByUser()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mFuncModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    .line 189
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getLastDriveMode()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    .line 190
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setLowPower100Ts(J)V

    .line 191
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mFuncModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getLastDriveMode()I

    move-result v1

    if-eq v1, v9, :cond_6

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->handleExitLowMode()V

    goto :goto_1

    :cond_6
    const-string v1, "reset last drive mode"

    .line 194
    invoke-static {v4, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 196
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mFuncModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    invoke-virtual {v1, v3}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setLastDriveMode(I)V

    :cond_7
    :goto_1
    return-void

    .line 148
    :cond_8
    :goto_2
    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRemainMileageChanged with invalid value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSnowModeChange(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 287
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;->getEspSw()Z

    move-result p1

    .line 288
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;->getEsp()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    .line 290
    :cond_0
    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Snow mode on, current esp sw: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mChassisVm.getEsp(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-nez p1, :cond_4

    .line 292
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-interface {p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;->setEsp(Z)V

    goto :goto_0

    .line 295
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mFuncModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getSnowModeEnergyCache()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    .line 297
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-interface {v2, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->setEnergyRecycleGrade(IZ)Ljava/lang/String;

    .line 299
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mFuncModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setSnowModeEnergyCache(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onXSportResumeDriveMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 351
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 352
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->getDriveModeByUser()I

    move-result p1

    goto :goto_0

    .line 355
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "driveMode"

    .line 356
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 359
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move p1, v1

    :goto_0
    if-eq p1, v1, :cond_1

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->fromVcuDriveMode(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    :cond_1
    return-void
.end method

.method public onXSportSaveDriveMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 368
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 372
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "driveMode"

    .line 373
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    .line 375
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->setDriveModeSp(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 378
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public resumeDriveMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    const/4 v0, 0x0

    .line 325
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->resumeDriveMode(IZ)V

    return-void
.end method

.method public resumeDriveMode(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "driveMode",
            "igOn"
        }
    .end annotation

    const/4 v0, 0x1

    .line 329
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->resumeDriveMode(IZZ)V

    return-void
.end method

.method public resumeDriveMode(IZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "driveMode",
            "igOn",
            "needSave"
        }
    .end annotation

    const/4 p2, 0x0

    const/16 p3, 0xf

    if-eq p1, p3, :cond_1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-interface {p3, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->setDriveMode(IZ)V

    goto :goto_1

    .line 334
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-interface {p1, p3, p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->enterXSportDriveModeByType(IZ)V

    :goto_1
    return-void
.end method

.method public resumeDriveModeSubItemByDataSync(IZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "driveMode",
            "igOn",
            "needSave"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->setDriveModeSubItemByUser(IZZZ)V

    return-void
.end method

.method public setDriveModeByUser(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->fromVcuDriveMode(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    return-void
.end method

.method public setEnergyRecycleGrade(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "grade"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->setEnergyRecycleGrade(IZ)Ljava/lang/String;

    return-void
.end method

.method protected toEcoMode(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auto"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->getDriveMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 76
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Switch to eco mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mFuncModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->getDriveModeByUser()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setLastDriveMode(I)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mFuncModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setDriveModeChangedByUser(Z)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->setDriveMode(I)V

    const-string v0, "isSupportDriveModeNewArch"

    .line 80
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->setDriveModeSubItemByUser(I)V

    :cond_1
    if-eqz p1, :cond_2

    .line 83
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->auto_change_eco_response:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->format_change_mode_response:I

    new-array v3, v2, [Ljava/lang/Object;

    .line 85
    invoke-direct {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->getDriveModeStr(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 84
    invoke-static {v0, v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 88
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    return-void

    .line 73
    :cond_4
    :goto_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not Switch to eco mode, currentMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected toPreviousMode(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auto"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mFuncModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getLastDriveMode()I

    move-result v0

    .line 94
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toPreviousMode lastMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",auto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 96
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->setDriveMode(I)V

    const-string v2, "isSupportDriveModeNewArch"

    .line 97
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->setDriveModeSubItemByUser(I)V

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mFuncModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setLastDriveMode(I)V

    .line 101
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->mFuncModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setDriveModeChangedByUser(Z)V

    if-eqz p1, :cond_1

    .line 102
    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->format_auto_change_previous_mode_response:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->format_change_mode_response:I

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 104
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->getDriveModeStr(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 102
    invoke-static {v1, v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 107
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    return-void
.end method
