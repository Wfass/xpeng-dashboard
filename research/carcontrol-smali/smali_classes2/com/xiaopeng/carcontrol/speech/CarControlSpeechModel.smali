.class Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;
.super Ljava/lang/Object;
.source "CarControlSpeechModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/speech/ISpeechModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$Holder;
    }
.end annotation


# static fields
.field private static final CHARGE_PORT_CLOSED:I = 0x5

.field private static final CHARGE_PORT_ENABLE:I = 0x1

.field private static final CHARGE_PORT_OPENED:I = 0x4

.field private static final CHARGE_PORT_RUNNING:I = 0x2

.field static final CHARGE_PORT_UNABLE:I = 0x3

.field private static final DIRECTION_BACK_DOWN:I = 0x2

.field private static final DIRECTION_FRONT_UP:I = 0x1

.field private static final ENERGY_RECYCLE_DISABLE:I = 0x0

.field private static final ENERGY_RECYCLE_NORMAL:I = 0x1

.field private static final ENERGY_RECYCLE_WITH_ABS_FAULT:I = 0x3

.field private static final ENERGY_RECYCLE_WITH_SNOW_MODE:I = 0x2

.field private static final H_ONE_STEP:I = 0x10

.field private static final H_POS_MAX:I = 0x5a

.field private static final H_POS_MIN:I = 0x0

.field private static final LEG_H_POS_MAX:I = 0x64

.field private static final LEG_H_POS_MIN:I = 0x0

.field private static final MASSAGE_MODES:[Ljava/lang/String;

.field static final MIRROR_CAR_IS_RUNNING:I = 0x2

.field static final MIRROR_FOLD_UNFOLD_UNKNOWN:I = 0x0

.field static final MIRROR_IS_FOLD:I = 0x4

.field static final MIRROR_IS_UNFOLD:I = 0x5

.field static final MIRROR_IS_WORKING:I = 0x3

.field private static final MIRROR_NO_CFG:I = 0x1

.field private static final R_POS_MAX:I = 0x55

.field private static final R_POS_MIN:I = 0x14

.field private static final SDC_CONTROL_DISABLE_CAR_IS_MOVIING:I = 0x3

.field private static final SDC_CONTROL_DISABLE_PAUSE:I = 0x2

.field private static final SDC_CONTROL_DISABLE_PREVENT_PLAYING:I = 0x2

.field private static final SDC_CONTROL_DISABLE_SDC_CLOSED:I = 0x7

.field private static final SDC_CONTROL_DISABLE_SDC_IS_RUNNING:I = 0x5

.field private static final SDC_CONTROL_DISABLE_SDC_OPEN:I = 0x6

.field private static final SDC_CONTROL_ENABLE:I = 0x1

.field private static final SDC_CONTROL_NOT_SUPPORT:I = 0x0

.field static final SEAT_MAX_ERROR:I = 0x2

.field private static final SEAT_POS_MAX:I = 0x64

.field private static final SEAT_POS_MIN:I = 0x0

.field private static final SLIDE_DOOR_CONTROL_CLOSE:I = 0x0

.field private static final SLIDE_DOOR_CONTROL_OPEN:I = 0x1

.field private static final SLIDE_DOOR_CONTROL_PAUSE:I = 0x2

.field private static final SLIDE_DOOR_CONTROL_STATUS_CHARGE_PORT:I = 0x5

.field private static final SLIDE_DOOR_CONTROL_STATUS_FAULT:I = 0x3

.field private static final SLIDE_DOOR_CONTROL_STATUS_LOCKED:I = 0x7

.field private static final SLIDE_DOOR_CONTROL_STATUS_MANUAL:I = 0x6

.field private static final SLIDE_DOOR_CONTROL_STATUS_READY:I = 0x1

.field private static final SLIDE_DOOR_CONTROL_STATUS_RUNNING:I = 0x2

.field private static final SLIDE_DOOR_CONTROL_STATUS_THERMAL_PROTECT:I = 0x4

.field private static final SLIDE_DOOR_NOT_SUPPORT:I = 0x0

.field private static final SLIDE_DOOR_STATUS_CLOSED:I = 0x2

.field private static final SLIDE_DOOR_STATUS_CLOSING:I = 0x4

.field private static final SLIDE_DOOR_STATUS_ERROR:I = 0x6

.field private static final SLIDE_DOOR_STATUS_OPENED:I = 0x1

.field private static final SLIDE_DOOR_STATUS_OPENING:I = 0x3

.field private static final SLIDE_DOOR_STATUS_PAUSED:I = 0x5

.field private static final SLIDE_DOOR_SUPPORT:I = 0x1

.field private static final SOURCE_SMART_SCENE:I = 0x1

.field private static final SOURCE_SPEECH:I = 0x0

.field private static final SPACE_CAPSULE_MODE_COMMON:Ljava/lang/String; = "spacecapsule_mode"

.field private static final SPACE_CAPSULE_MODE_MOVIE:Ljava/lang/String; = "spacecapsule_mode_movie"

.field private static final SPACE_CAPSULE_MODE_SLEEP:Ljava/lang/String; = "spacecapsule_mode_sleep"

.field private static final STEERING_ENABLE:I = 0x1

.field private static final STEERING_UNABLE:I = 0x0

.field private static final STEERING_UNABLE_WITH_EPS_FAULT:I = 0x3

.field private static final STEERING_UNABLE_WITH_GEEK:I = 0x4

.field private static final STEERING_UNABLE_WITH_LCC:I = 0x0

.field private static final STEERING_UNABLE_WITH_RACER:I = 0x6

.field private static final STEERING_UNABLE_WITH_SPEED:I = 0x2

.field private static final STEERING_UNABLE_WITH_XPOWER:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CarControlSpeechModel"

.field private static final V_ONE_STEP:I = 0x14

.field private static final V_POS_MAX:I = 0x64

.field private static final V_POS_MIN:I


# instance fields
.field private final CHARGE_PORT_CONTROL_CLOSE:I

.field private final CHARGE_PORT_CONTROL_OPEN:I

.field private mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;

.field private mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

.field private mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

.field private mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

.field private mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

.field mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

.field private mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

.field private mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

.field mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

.field private mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

.field private mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field private mSelfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

.field private mSpaceCapsuleViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

.field private mSvcVm:Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

.field mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

.field mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string/jumbo v0, "wave"

    const-string/jumbo v1, "serpentine"

    const-string v2, "pulse"

    const-string v3, "catwalk"

    const-string v4, "double"

    const-string/jumbo v5, "waist"

    const-string v6, "refresh"

    const-string v7, "relief"

    const-string v8, "recover"

    const-string v9, "relax"

    const-string/jumbo v10, "vitality"

    .line 3585
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->MASSAGE_MODES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 195
    iput v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->CHARGE_PORT_CONTROL_OPEN:I

    const/4 v0, 0x1

    .line 196
    iput v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->CHARGE_PORT_CONTROL_CLOSE:I

    .line 277
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->initViewModel()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;
    .locals 1

    .line 126
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->create()Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;

    move-result-object v0

    return-object v0
.end method

.method private calculateLegPos(II)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "direction"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x64

    const/16 v2, 0x5a

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p2, v0, :cond_7

    if-eq p2, v4, :cond_5

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    rsub-int/lit8 p2, p1, 0x0

    .line 1423
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lt p2, v4, :cond_1

    add-int/lit8 v1, p1, -0x14

    if-gez v1, :cond_9

    goto :goto_0

    .line 1429
    :cond_1
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_leg_control_lowest:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    goto :goto_1

    :cond_2
    rsub-int/lit8 p2, p1, 0x64

    .line 1413
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lt p2, v4, :cond_4

    add-int/lit8 p1, p1, 0x14

    if-le p1, v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, p1

    goto :goto_2

    .line 1419
    :cond_4
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_leg_control_highest:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    goto :goto_1

    :cond_5
    rsub-int/lit8 p2, p1, 0x0

    .line 1403
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lt p2, v4, :cond_6

    add-int/lit8 v1, p1, -0x10

    if-gez v1, :cond_9

    :goto_0
    move v1, v3

    goto :goto_2

    .line 1409
    :cond_6
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_leg_control_rear:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    goto :goto_1

    :cond_7
    rsub-int/lit8 p2, p1, 0x5a

    .line 1393
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lt p2, v4, :cond_8

    add-int/lit8 v1, p1, 0x10

    if-le v1, v2, :cond_9

    move v1, v2

    goto :goto_2

    .line 1399
    :cond_8
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_leg_control_foremost:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    :goto_1
    const/4 v1, -0x1

    :cond_9
    :goto_2
    return v1
.end method

.method private convertLampHeightLevel(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2570
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LampHeightLevel:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private convertSayHiEffect2AvasEffect(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;)Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sayHiEffect"
        }
    .end annotation

    .line 6909
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->SoundEffect1:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;

    .line 6910
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LluSayHiEffect:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 6915
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->SoundEffect3:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;

    goto :goto_0

    .line 6912
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->SoundEffect2:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;

    :goto_0
    return-object v0
.end method

.method private convertSayHiEffect2LluEffect(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sayHiEffect"
        }
    .end annotation

    .line 6925
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SayHi:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 6926
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LluSayHiEffect:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 6931
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SayHi3:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    goto :goto_0

    .line 6928
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SayHi2:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    :goto_0
    return-object v0
.end method

.method private static create()Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;
    .locals 3

    .line 257
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/CarStatusUtils;->getXpCduType()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xa00

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa13

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa16

    if-eq v1, v2, :cond_2

    const v2, 0x136fb

    if-eq v1, v2, :cond_1

    const v2, 0x1371b

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v1, "Q9"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :pswitch_1
    const-string v1, "Q8"

    goto :goto_0

    :pswitch_2
    const-string v1, "Q7"

    goto :goto_0

    :cond_0
    const-string v1, "Q8B"

    goto :goto_0

    :cond_1
    const-string v1, "Q7A"

    goto :goto_0

    :cond_2
    const-string v1, "QG"

    goto :goto_0

    :cond_3
    const-string v1, "QD"

    goto :goto_0

    :cond_4
    const-string v1, "Q1"

    goto :goto_0

    .line 268
    :goto_1
    new-instance v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0xa06
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getApaStatus()I
    .locals 2

    .line 2108
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;->getAutoParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    .line 2109
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getAsHoistModeStatus()I
    .locals 3

    const-string v0, "isSupportAirSuspension"

    .line 2243
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2244
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsLockModeStatus()Z

    move-result v0

    .line 2245
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsHoistModeSwitchStatus()Z

    move-result v2

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    :cond_1
    return v1
.end method

.method private getAsTransportModeStatus()I
    .locals 2

    const-string v0, "isSupportAirSuspension"

    .line 2232
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2233
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;->TRANSPORT:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsEngineerMode()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getAsXPilotModeStatus(I)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const-string v0, "isSupportAirSuspension"

    .line 2200
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 2201
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getAsTargetMinHeightRequest()I

    move-result v0

    .line 2202
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getAsTargetMaxHeightRequest()I

    move-result v3

    const/4 v4, -0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v5, 0x2

    if-eq p1, v5, :cond_2

    const/4 v5, 0x3

    if-eq p1, v5, :cond_1

    const/4 v5, 0x4

    if-eq p1, v5, :cond_0

    move v5, v4

    goto :goto_0

    .line 2218
    :cond_0
    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->LL3:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->toBcmCmd()I

    move-result v5

    goto :goto_0

    .line 2215
    :cond_1
    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->LL1:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->toBcmCmd()I

    move-result v5

    goto :goto_0

    .line 2212
    :cond_2
    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->H0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->toBcmCmd()I

    move-result v5

    goto :goto_0

    .line 2209
    :cond_3
    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->HL1:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->toBcmCmd()I

    move-result v5

    goto :goto_0

    .line 2206
    :cond_4
    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->HL2:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->toBcmCmd()I

    move-result v5

    .line 2221
    :goto_0
    sget-object v6, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAsXPilotModeStatus, mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v7, ", mAsMaxTarget: "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v7, ", mAsMinTarget: "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v5, v4, :cond_5

    if-gt v3, v0, :cond_5

    if-lt v5, v3, :cond_5

    if-gt v5, v0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    return v1
.end method

.method private getBlanketLightWelcomeSupport()I
    .locals 2

    .line 2140
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "getBlanketLightWelcomeSupport"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isSupportCarpetLightWelcomeMode"

    .line 2141
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getCarLightWelcomeSupport()I
    .locals 2

    .line 2145
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "getCarLightWelcomeSupport"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isSupportPollingLightWelcomeMode"

    .line 2146
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getChangeValue(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 6790
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 6792
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "target"

    .line 6793
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "scale"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "percent"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6794
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 6797
    :catch_0
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChangeValue failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method private getChildSafetyLocksStatus(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2156
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isLeftChildLocked()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2158
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isRightChildLocked()Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getCurrentBrakeMode()I
    .locals 2

    const-string v0, "isSupportEspCst"

    .line 2408
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2409
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEspBpfModeValue()Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;

    move-result-object v0

    .line 2410
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;->Economic:Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2413
    :cond_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;->Sport:Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private getCurrentSeatHabitNum(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pilot"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2378
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getCurrentSelectedRRHabit()I

    move-result p1

    return p1

    .line 2376
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getCurrentSelectedRLHabit()I

    move-result p1

    return p1

    .line 2374
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getCurrentSelectedPsnHabit()I

    move-result p1

    return p1
.end method

.method private getCurrentSuspensionHeight()I
    .locals 3

    .line 2164
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsHeightMode()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 2166
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$AsHeight:[I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    return v1
.end method

.method private getCurrentTrunkAngle()I
    .locals 1

    .line 2422
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getTrunkFullOpenPos()I

    move-result v0

    return v0
.end method

.method private getDirection(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "direction"

    const/4 v1, 0x1

    .line 6338
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6339
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6340
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6343
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDirection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1
.end method

.method private getDoorLockStatus()I
    .locals 1

    .line 2388
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isCentralLocked()Z

    move-result v0

    return v0
.end method

.method private getDrivingRacerSupport()I
    .locals 5

    const-string v0, "isSupportXSportRacerMode"

    .line 6442
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 6443
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEspFault()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 6446
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevel()I

    move-result v0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    .line 6448
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getAvailableMileage()I

    move-result v0

    const/16 v3, 0x1e

    if-ge v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 6454
    :goto_0
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrivingRacerSupport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method private getEasyLoadAutoSupport()I
    .locals 1

    const-string v0, "isSupportAirSuspension"

    .line 2364
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2365
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isAutoEasyLoadingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getEasyLoadSupport()I
    .locals 1

    const-string v0, "isSupportAirSuspension"

    .line 2357
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2358
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->isEasyLoadingEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getEnerygyRecycleLevel()I
    .locals 3

    .line 2779
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getEnergyRecycle()Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 2781
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$EnergyRecycleGrade:[I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    return v0

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method private getEspFault()I
    .locals 1

    .line 2344
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEspFault()Z

    move-result v0

    return v0
.end method

.method private getFirsTimeLightGeek(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 6754
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getFirsTimeXSport(I)I

    move-result v0

    .line 6755
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFirsTimeLightGeek, pilot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", result: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method private getImsModeStatus()I
    .locals 2

    const-string v0, "isSupportIms"

    .line 2477
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2478
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->getImsMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static getInstance()Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;
    .locals 1

    .line 273
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$Holder;->access$100()Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;

    move-result-object v0

    return-object v0
.end method

.method private getKeepTime(Ljava/lang/String;)J
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "keep"

    const-wide/16 v1, 0x0

    .line 6818
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6819
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6820
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6823
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-wide v1
.end method

.method private getKeyParkSupport(I)I
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

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "isSupportCarCallAdvanced"

    .line 6612
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "isSupportKeyParkAdvanced"

    .line 6609
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const-string v0, "isSupportKeyPark"

    .line 6606
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 6615
    :goto_0
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKeyParkSupport mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " support:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getLegPosition(II)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pilot",
            "direction"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_a

    if-eq p1, v3, :cond_8

    const-string v5, "isSupportSecRowLegVer"

    const-string v6, "isSupportRearSeatLeg"

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_0

    .line 2300
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLegPosition unknown seat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_0
    if-eq p2, v4, :cond_3

    if-ne p2, v3, :cond_1

    goto :goto_0

    :cond_1
    if-eq p2, v2, :cond_2

    if-ne p2, v1, :cond_e

    .line 2294
    :cond_2
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2295
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatLegVerPos()I

    move-result v1

    goto/16 :goto_4

    .line 2290
    :cond_3
    :goto_0
    invoke-static {v6}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2291
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatLegHorPos()I

    move-result v1

    goto :goto_4

    :cond_4
    if-eq p2, v4, :cond_7

    if-ne p2, v3, :cond_5

    goto :goto_1

    :cond_5
    if-eq p2, v2, :cond_6

    if-ne p2, v1, :cond_e

    .line 2283
    :cond_6
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2284
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatLegVerPos()I

    move-result v1

    goto :goto_4

    .line 2279
    :cond_7
    :goto_1
    invoke-static {v6}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2280
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatLegHorPos()I

    move-result v1

    goto :goto_4

    :cond_8
    if-eq p2, v4, :cond_9

    if-ne p2, v3, :cond_e

    :cond_9
    const-string v1, "isSupportPsnLeg"

    .line 2271
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2272
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatLegPos()I

    move-result v1

    goto :goto_4

    :cond_a
    if-eq p2, v4, :cond_d

    if-ne p2, v3, :cond_b

    goto :goto_2

    :cond_b
    if-eq p2, v2, :cond_c

    if-ne p2, v1, :cond_e

    :cond_c
    const-string v1, "isSupportDrvLeg"

    .line 2264
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2265
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatLegPos()I

    move-result v1

    goto :goto_4

    :cond_d
    :goto_2
    const-string v1, "isSupportDrvCushion"

    .line 2260
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2261
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatCushionPos()I

    move-result v1

    goto :goto_4

    :cond_e
    :goto_3
    const/4 v1, -0x1

    .line 2303
    :goto_4
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLegPosition--->pilot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", direction="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ,pos="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method private getLightAtmosphereColorSupport()I
    .locals 4

    .line 6626
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlEffect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->isSupportDoubleThemeColor(Ljava/lang/String;)Z

    move-result v0

    .line 6628
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLightAtmosphereColorSupport, supportDouble: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method private getLightAtmosphereCurrentMode()I
    .locals 6

    .line 6634
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->None:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlEffect(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;)Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    move-result-object v0

    .line 6635
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$light$AtlEffect:[I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_3

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    .line 6651
    :cond_3
    :goto_0
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLightAtmosphereCurrentMode, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method private getLightAtmosphereModeSupport()I
    .locals 4

    const-string v0, "isSupportFullAtl"

    .line 6620
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 6621
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLightAtmosphereModeSupport, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method private getLightHeightStatus()I
    .locals 5

    .line 2561
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->isAutoLampHeight()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2562
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getLampHeightLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->convertLampHeightLevel(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2564
    :goto_0
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLightHeightStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method private getLightHeightSupport()I
    .locals 5

    const-string v0, "isSupportAutoLampHeight"

    .line 2550
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const-string v0, "isSupportLampHeight"

    .line 2552
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2555
    :goto_0
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLightHeightSupport:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method private getLightHomeStatus()I
    .locals 1

    .line 2392
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getLightMeHomeTime()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->fromLightMeHomeTime(I)I

    move-result v0

    return v0
.end method

.method private getLightTopBrightness()I
    .locals 4

    const-string v0, "isSupportDomeLightBrightnessCtrl"

    .line 6657
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6658
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getDomeLightBrightness()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 6660
    :goto_0
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLightTopBrightness, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method private getLightTopStatus(I)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pilot"
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "isRightDudder"

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    goto :goto_3

    :pswitch_0
    const/16 v0, 0x9

    goto :goto_3

    .line 6712
    :pswitch_1
    invoke-static {v6}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 6705
    :pswitch_2
    invoke-static {v6}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_0
    :goto_0
    move v0, v1

    goto :goto_3

    :pswitch_3
    const/4 v0, 0x6

    goto :goto_3

    :pswitch_4
    const/4 v0, 0x5

    goto :goto_3

    .line 6692
    :pswitch_5
    invoke-static {v6}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 6685
    :pswitch_6
    invoke-static {v6}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_3

    :cond_2
    :goto_1
    move v0, v3

    goto :goto_3

    .line 6678
    :pswitch_7
    invoke-static {v6}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 6671
    :pswitch_8
    invoke-static {v6}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v4

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v5

    goto :goto_3

    :pswitch_9
    const/4 v0, 0x4

    .line 6724
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getDomeLightSw(I)Z

    move-result v0

    .line 6725
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLightTopStatus, pilot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", result: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method private getLightTopSupport(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pilot"
        }
    .end annotation

    const-string v0, "isSupportDomeLightIndependentCtrl"

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    move p1, v1

    goto :goto_0

    .line 6744
    :pswitch_0
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "isSupportDomeLightThirdRow"

    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 6739
    :pswitch_1
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 6749
    :goto_0
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLightTopSupport, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getLluSayHiEffect()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;
    .locals 7

    .line 5442
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getFriendEffect()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->fromAvasType(I)Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;

    move-result-object v0

    .line 5443
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->EffectA:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;

    if-nez v0, :cond_0

    .line 5445
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SayHi:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    return-object v0

    .line 5447
    :cond_0
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$avas$AvasEffect:[I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 5452
    :cond_1
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->EffectC:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;

    goto :goto_0

    .line 5449
    :cond_2
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->EffectB:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;

    .line 5457
    :goto_0
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SayHi:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 5458
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LluSayHiEffect:[I

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v4, :cond_4

    if-eq v5, v3, :cond_3

    goto :goto_1

    .line 5463
    :cond_3
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SayHi3:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    goto :goto_1

    .line 5460
    :cond_4
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SayHi2:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 5469
    :goto_1
    sget-object v3, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLluEffect: avasEffect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", sayHiEffect="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", effect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private getMassageCurrentStatus(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pilot"
        }
    .end annotation

    .line 6546
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isMassagerRunning(I)Z

    move-result p1

    return p1
.end method

.method private getMassageCurrentStrength(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pilot"
        }
    .end annotation

    .line 6563
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassagerIntensity(I)I

    move-result p1

    return p1
.end method

.method private getMassageRunningMode(I)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pilot"
        }
    .end annotation

    .line 6550
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassagerRunningEffectId(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "getMassageModes"

    .line 6552
    invoke-static {v4, v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getArray(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v5, 0x1

    if-ge v2, v3, :cond_1

    new-array v3, v1, [Ljava/lang/Object;

    .line 6553
    invoke-static {v4, v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getArray(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/2addr v5, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6558
    :cond_1
    :goto_1
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMassageRunningMode, pilot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", effect: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v5
.end method

.method private getMode(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "mode"

    const/16 v1, 0x64

    .line 6309
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6310
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6311
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6314
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1
.end method

.method private getNarrowroadAssistSettings()I
    .locals 1

    .line 2404
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNraState()I

    move-result v0

    return v0
.end method

.method private getNarrowroadAssistStatus()I
    .locals 1

    .line 2400
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNraSw()Z

    move-result v0

    return v0
.end method

.method private getNewDrivingMode()I
    .locals 5

    .line 6393
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getDriveModeValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6395
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xa

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x9

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x8

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x7

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x5

    goto :goto_1

    :pswitch_5
    const/4 v0, 0x4

    goto :goto_1

    :pswitch_6
    const/4 v0, 0x3

    goto :goto_1

    :pswitch_7
    const/4 v0, 0x2

    goto :goto_1

    :pswitch_8
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_9
    move v0, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    .line 6428
    :goto_1
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNewDrivingMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method private getNum(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "num"

    const/4 v1, 0x1

    .line 6378
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6379
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6380
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6383
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1
.end method

.method private getPageId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "page_id"

    .line 6362
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPageId data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, ""

    .line 6365
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6366
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6367
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6370
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPageId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1
.end method

.method private getPercent(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "percent"

    const/16 v1, 0x64

    .line 5354
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5355
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5356
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5359
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPercent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1
.end method

.method private getPilot(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "pilot"

    const/4 v1, 0x1

    .line 6325
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6326
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6327
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6330
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPilot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1
.end method

.method private getSeatMemoryConfigs()Ljava/lang/String;
    .locals 1

    .line 2426
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatMemoryConfigs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getShowModeStatus()I
    .locals 1

    .line 6780
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isExhibitionModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 6783
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isTestDriveModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getSleepMode()I
    .locals 1

    .line 6772
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSpaceCapsuleViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getSleepMode()I

    move-result v0

    return v0
.end method

.method private getSoundPath(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .line 6942
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LluSayHiEffect:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_sayhi_mode_1.wav"

    goto :goto_0

    :cond_1
    const-string p1, "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_sayhi_mode_3.wav"

    goto :goto_0

    :cond_2
    const-string p1, "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_sayhi_mode_2.wav"

    :goto_0
    return-object p1
.end method

.method private getSource(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string/jumbo v0, "source"

    const/4 v1, 0x0

    .line 6805
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6806
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6807
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6810
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1
.end method

.method private getState(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string/jumbo v0, "state"

    const/4 v1, -0x1

    .line 6961
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6962
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6963
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6966
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1
.end method

.method private getSteeringAssistStatus()I
    .locals 1

    .line 2396
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getTurnAssistantSw()Z

    move-result v0

    return v0
.end method

.method private getSupportBackWelcomeMode()I
    .locals 1

    const-string v0, "isSupportRearSeatWelcomeMode"

    .line 6592
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getSupportChildSafetyMode()I
    .locals 1

    const-string v0, "isSupportChildMode"

    .line 2150
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getSupportLeg(II)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pilot",
            "direction"
        }
    .end annotation

    .line 2312
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportLeg--->pilot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_0

    if-eq p1, v1, :cond_0

    .line 2337
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLegPosition unknown seat "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_0
    if-eq p2, v5, :cond_3

    if-ne p2, v4, :cond_1

    goto :goto_0

    :cond_1
    if-eq p2, v3, :cond_2

    if-ne p2, v1, :cond_a

    :cond_2
    const-string p1, "isSupportSecRowLegVer"

    .line 2333
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_2

    :cond_3
    :goto_0
    const-string p1, "isSupportRearSeatLeg"

    .line 2331
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_2

    :cond_4
    if-eq p2, v5, :cond_5

    if-ne p2, v4, :cond_a

    :cond_5
    const-string p1, "isSupportPsnLeg"

    .line 2324
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_2

    :cond_6
    if-eq p2, v5, :cond_9

    if-ne p2, v4, :cond_7

    goto :goto_1

    :cond_7
    if-eq p2, v3, :cond_8

    if-ne p2, v1, :cond_a

    :cond_8
    const-string p1, "isSupportDrvLeg"

    .line 2319
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_2

    :cond_9
    :goto_1
    const-string p1, "isSupportDrvCushion"

    .line 2317
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_a
    :goto_2
    return v2
.end method

.method private getSupportMassage(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pilot"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    sub-int/2addr p1, v0

    .line 6542
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const-string p1, "isSupportSeatMassage_id"

    invoke-static {p1, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private getSupportPsnWelcomeMode()I
    .locals 1

    const-string v0, "isSupportPsnWelcomeMode"

    .line 2136
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getSupportSeatKeySettings()I
    .locals 1

    const-string v0, "isSupportSeatKeySettings"

    .line 6512
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getSupportSuspensionAuto()I
    .locals 3

    const-string v0, "isSupportXpu"

    .line 6484
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const-string v0, "isSupportAsHeightSaveMode"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6485
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;->getXpuXpilotState()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 6502
    :goto_0
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v2, "getSuspensionFlatStatus: "

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private getSupportSuspensionWelcomeMode()I
    .locals 1

    const-string v0, "isSupportAirSuspension"

    .line 6599
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getSupportSwing()I
    .locals 1

    const-string v0, "isSupportSeatRhythm"

    .line 6567
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getSupportWaistDialog()I
    .locals 5

    const-string v0, "isSupportDrvLumbarKeySettings"

    .line 6521
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6522
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;->getAccStateForMirror()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    .line 6523
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIntercept accState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6524
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    return v0

    .line 6527
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isCruiseActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private getSupportWaistPosition(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pilot"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p1, "isSupportSecRowRTSeatLumb"

    .line 2129
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const-string p1, "isSupportSecRowLTSeatLumb"

    .line 2127
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    const-string p1, "isSupportPsnLumbar"

    .line 2125
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    const-string p1, "isSupportDrvLumbar"

    .line 2123
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private getSuspensionFixStatus()I
    .locals 1

    .line 6469
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAirSuspensionRepairMode()Z

    move-result v0

    return v0
.end method

.method private getSuspensionFlatStatus()I
    .locals 1

    .line 6476
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsCampingMode()Z

    move-result v0

    return v0
.end method

.method private getSuspensionRigiditySupport()I
    .locals 1

    const-string v0, "isSupportCdcControl"

    .line 6776
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getSuspensionSupport()I
    .locals 5

    const-string v0, "isSupportAirSuspension"

    .line 2186
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2187
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsFaultStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2193
    :goto_0
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSuspensionSupport, value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method private getSwingCurrentStatus(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pilot"
        }
    .end annotation

    .line 6574
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRhythmRunning(I)Z

    move-result p1

    return p1
.end method

.method private getSwingCurrentStrength(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pilot"
        }
    .end annotation

    .line 6585
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRhythmIntensity(I)I

    move-result p1

    return p1
.end method

.method private getSwingRunningMode(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pilot"
        }
    .end annotation

    .line 6581
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRhythmMode()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private getTarget(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string/jumbo v0, "target"

    const/4 v1, 0x1

    .line 6351
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6352
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6353
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6356
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTarget: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1
.end method

.method private getTargetPos(IZIZ)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentPos",
            "scale",
            "value",
            "increase"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    add-int/2addr p1, p3

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p3

    :goto_0
    move p3, p1

    :cond_1
    const/16 p1, 0x64

    if-le p3, p1, :cond_2

    move p3, p1

    goto :goto_1

    :cond_2
    if-gez p3, :cond_3

    const/4 p3, 0x0

    :cond_3
    :goto_1
    return p3
.end method

.method private getTrailerModeStatus()I
    .locals 1

    .line 6462
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerModeStatus()Z

    move-result v0

    return v0
.end method

.method private getValue(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string/jumbo v0, "value"

    const/4 v1, 0x0

    .line 6296
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6297
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6298
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6301
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1
.end method

.method private getVpaStatus()I
    .locals 2

    .line 2113
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;->getMemoryParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    .line 2114
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getWindowLockStatus()I
    .locals 1

    .line 2384
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowLockActive()Z

    move-result v0

    return v0
.end method

.method private getXSportSupport(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p1, "isSupportXSportRacerMode"

    .line 6766
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const-string p1, "isSupportXpowerMode"

    .line 6764
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    const-string p1, "IsSupportGeekMode"

    .line 6762
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private initViewModel()V
    .locals 2

    .line 281
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    .line 282
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    .line 283
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 284
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    .line 285
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    .line 286
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 287
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    .line 288
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    .line 289
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSvcVm:Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    .line 290
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/meter/IMeterViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    .line 291
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/avas/IAvasViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    .line 292
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILluViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    .line 293
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    .line 294
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/light/IAtlViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    .line 295
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/space/ISpaceCapsuleViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSpaceCapsuleViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    .line 296
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;

    .line 297
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSelfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    .line 298
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->initExtViewModel(Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;)V

    return-void
.end method

.method private isNgpAndLccRuning()Z
    .locals 1

    .line 3870
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;->getNgpMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isSeatPosValid(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSupportDrivingComfortMode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isSupportDrivingCrossCountryMode()I
    .locals 1

    const-string v0, "isSupportEspMudMode"

    .line 2348
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private onArsFold()V
    .locals 2

    .line 5831
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onArsFold"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5832
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;->fold()V

    return-void
.end method

.method private onArsModeAutoOff()V
    .locals 2

    .line 5846
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onArsModeAutoOff"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5847
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->MANUAL:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;->setArsWorkMode(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;)V

    return-void
.end method

.method private onArsModeAutoOn()V
    .locals 2

    .line 5841
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onArsModeAutoOn"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5842
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->AUTO:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;->setArsWorkMode(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;)V

    return-void
.end method

.method private onArsUnfold()V
    .locals 2

    .line 5836
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onArsUnfold"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5837
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;->unfold()V

    return-void
.end method

.method private onAutoSelfCheckSet(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 5898
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoSelfCheckSet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5899
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSelfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->setAutoSelfCheck(Z)V

    return-void
.end method

.method private onAutoTrunkControl(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation

    .line 5927
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoTrunkControl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5928
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setTrunkSensorEnable(Z)V

    return-void
.end method

.method private onBlanketLightWelcomeModeSet(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 1123
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBlanketLightWelcomeModeSet, target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1124
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setCarpetLightWelcomeMode(Z)V

    return-void
.end method

.method private onCarLightWelcomeModeSet(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 1128
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCarLightWelcomeModeSet, target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1129
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setPollingLightWelcomeMode(Z)V

    return-void
.end method

.method private onChildSafetyLocksOff(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "source"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-ne p1, v0, :cond_1

    .line 1079
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p1, v0, v1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setChildLock(ZZZ)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1081
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p1, v1, v1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setChildLock(ZZZ)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 1083
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p1, v1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setAllChildLock(ZZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method private onChildSafetyLocksOn(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "source"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-ne p1, v1, :cond_1

    .line 1068
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p1, v1, v1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setChildLock(ZZZ)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1070
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p1, v0, v1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setChildLock(ZZZ)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 1072
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p1, v1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setAllChildLock(ZZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method private onChildSafetyModeOff()V
    .locals 2

    .line 1058
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setChildModeEnable(Z)V

    return-void
.end method

.method private onChildSafetyModeOn()V
    .locals 2

    .line 1062
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setChildModeEnable(Z)V

    return-void
.end method

.method private onControlNewKeyParkingEnhancedOff()V
    .locals 2

    .line 1053
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onControlNewKeyParkingEnhancedOff"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;->setPhoneParkSw(Z)V

    return-void
.end method

.method private onControlNewKeyParkingOff()V
    .locals 2

    .line 1049
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onControlNewKeyParkingOff"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onControlNewKeyParkingOn()V
    .locals 2

    .line 1045
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onControlNewKeyParkingOn"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onCushionMoveSet(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1325
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1328
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result v0

    .line 1329
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x64

    if-le v0, v2, :cond_1

    move v0, v2

    :cond_1
    const/4 v2, 0x0

    if-gez v0, :cond_2

    move v0, v2

    :cond_2
    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    goto :goto_0

    .line 1338
    :cond_3
    sget-object v4, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCushionMoveSet--->pilot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v5, 0x3

    .line 1339
    invoke-direct {p0, v1, v5, v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setLegPos(III)V

    .line 1340
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSource(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 1342
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getKeepTime(Ljava/lang/String;)J

    move-result-wide v5

    .line 1343
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLegMoveSet, keep: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-eqz p1, :cond_5

    .line 1345
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-ne v1, v3, :cond_4

    move v2, v3

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v5

    invoke-virtual {p1, v2, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSeatMenuNotShowKeepTime(ZJ)V

    :cond_5
    :goto_0
    return-void
.end method

.method private onDoorLockEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 5893
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDoorLockEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5894
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setCentralLock(ZZ)V

    return-void
.end method

.method private onEasyLoadAutoEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 5856
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEasyLoadAutoEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5857
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setAutoEasyLoadMode(Z)V

    return-void
.end method

.method private onEasyLoadEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 5851
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEasyLoadEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5852
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setEasyLoadingSwitch(Z)V

    return-void
.end method

.method private onEspCstSet(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 5958
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEspCstSet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5959
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setEspCstSw(Z)V

    return-void
.end method

.method private onHighAutoCloseWindowControl(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 6015
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHighAutoCloseWindowControl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6016
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setHighSpdCloseWin(Z)V

    return-void
.end method

.method private onImsControl(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 6037
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->setImsMode(I)V

    return-void
.end method

.method private onLeaveAutoLocControl(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 6010
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeaveAutoLocControl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6011
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setLeaveAutoLock(Z)V

    return-void
.end method

.method private onLegMove(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1225
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result v0

    .line 1226
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getDirection(Ljava/lang/String;)I

    move-result v1

    .line 1227
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getLegPosition(II)I

    move-result v2

    .line 1228
    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->calculateLegPos(II)I

    move-result v3

    .line 1229
    sget-object v4, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLegMove--->pilot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", direction:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pos:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", targetPos:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v5, -0x1

    const/4 v7, 0x1

    if-eq v0, v7, :cond_d

    const/4 v8, 0x2

    if-eq v0, v8, :cond_d

    const/4 p1, 0x7

    const/4 v4, 0x4

    const/4 v6, 0x3

    if-eq v0, v6, :cond_7

    if-eq v0, v4, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eq v1, v7, :cond_5

    if-ne v1, v8, :cond_2

    goto :goto_0

    :cond_2
    if-eq v1, v6, :cond_3

    if-ne v1, v4, :cond_f

    :cond_3
    if-ne v2, v5, :cond_4

    .line 1272
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, v1, v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatStart(III)Z

    goto/16 :goto_2

    .line 1274
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLegVerPos(I)V

    goto/16 :goto_2

    :cond_5
    :goto_0
    if-ne v2, v5, :cond_6

    .line 1265
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v4, v1, v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatStart(III)Z

    goto :goto_2

    .line 1267
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLegHorPos(I)V

    goto :goto_2

    :cond_7
    if-eq v1, v7, :cond_b

    if-ne v1, v8, :cond_8

    goto :goto_1

    :cond_8
    if-eq v1, v6, :cond_9

    if-ne v1, v4, :cond_f

    :cond_9
    if-ne v2, v5, :cond_a

    .line 1256
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, v1, v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatStart(III)Z

    goto :goto_2

    .line 1258
    :cond_a
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLegVerPos(I)V

    goto :goto_2

    :cond_b
    :goto_1
    if-ne v2, v5, :cond_c

    .line 1249
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v4, v1, v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatStart(III)Z

    goto :goto_2

    .line 1251
    :cond_c
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLegHorPos(I)V

    goto :goto_2

    :cond_d
    if-eq v2, v5, :cond_f

    .line 1234
    invoke-direct {p0, v0, v1, v3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setLegPos(III)V

    .line 1235
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSource(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_f

    .line 1237
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getKeepTime(Ljava/lang/String;)J

    move-result-wide v1

    .line 1238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLegMove, keep: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_f

    .line 1240
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-ne v0, v7, :cond_e

    move v6, v7

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {p1, v6, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSeatMenuNotShowKeepTime(ZJ)V

    :cond_f
    :goto_2
    return-void
.end method

.method private onLegMoveSet(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1288
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1293
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result v0

    .line 1294
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    move v1, v2

    :cond_1
    const/4 v2, 0x0

    if-gez v1, :cond_2

    move v1, v2

    :cond_2
    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    goto :goto_0

    .line 1304
    :cond_3
    sget-object v4, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLegMoveSet--->pilot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1305
    invoke-direct {p0, v0, v3, v1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setLegPos(III)V

    .line 1306
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSource(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 1308
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getKeepTime(Ljava/lang/String;)J

    move-result-wide v5

    .line 1309
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLegMoveSet, keep: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-eqz p1, :cond_5

    .line 1311
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-ne v0, v3, :cond_4

    move v2, v3

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v5

    invoke-virtual {p1, v2, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSeatMenuNotShowKeepTime(ZJ)V

    :cond_5
    :goto_0
    return-void
.end method

.method private onLegMovest(II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pilot",
            "direction"
        }
    .end annotation

    .line 1180
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getLegPosition(II)I

    move-result v0

    .line 1181
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLegMovest--->pilot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", direction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    const/16 v2, 0x64

    const/4 v4, 0x2

    if-eq p2, v1, :cond_6

    if-eq p2, v4, :cond_4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    rsub-int/lit8 v0, v0, 0x0

    .line 1205
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v4, :cond_1

    .line 1206
    invoke-direct {p0, p1, p2, v3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setLegPos(III)V

    goto :goto_0

    .line 1208
    :cond_1
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_cushion_control_lowest:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    goto :goto_0

    :cond_2
    rsub-int/lit8 v0, v0, 0x64

    .line 1198
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v4, :cond_3

    .line 1199
    invoke-direct {p0, p1, p2, v2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setLegPos(III)V

    goto :goto_0

    .line 1201
    :cond_3
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_cushion_control_highest:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    goto :goto_0

    :cond_4
    rsub-int/lit8 v0, v0, 0x0

    .line 1191
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v4, :cond_5

    .line 1192
    invoke-direct {p0, p1, p2, v3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setLegPos(III)V

    goto :goto_0

    .line 1194
    :cond_5
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_leg_control_rear:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    goto :goto_0

    :cond_6
    rsub-int/lit8 v0, v0, 0x64

    .line 1184
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v4, :cond_7

    .line 1185
    invoke-direct {p0, p1, p2, v2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setLegPos(III)V

    goto :goto_0

    .line 1187
    :cond_7
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_leg_control_foremost:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    :goto_0
    return-void
.end method

.method private onLockResponseSet(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "value"
        }
    .end annotation

    .line 5963
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLockResponseSet, mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 5973
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->LightAndAvas:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setUnLockResponseNewMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;)V

    goto :goto_0

    .line 5970
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->LightAndHorn:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setUnLockResponseNewMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;)V

    goto :goto_0

    .line 5967
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->Light:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setUnLockResponseNewMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;)V

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_7

    if-eq p2, v2, :cond_6

    if-eq p2, v1, :cond_5

    if-eq p2, v0, :cond_4

    goto :goto_0

    .line 5985
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->LightAndAvas:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setLockResponseNewMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;)V

    goto :goto_0

    .line 5982
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->LightAndHorn:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setLockResponseNewMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;)V

    goto :goto_0

    .line 5979
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->Light:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setLockResponseNewMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;)V

    goto :goto_0

    :cond_7
    if-ne p1, v0, :cond_b

    if-eq p2, v2, :cond_a

    if-eq p2, v1, :cond_9

    if-eq p2, v0, :cond_8

    goto :goto_0

    .line 5997
    :cond_8
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->LightAndAvas:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setUnlockResponseMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;)V

    goto :goto_0

    .line 5994
    :cond_9
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->LightAndHorn:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setUnlockResponseMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;)V

    goto :goto_0

    .line 5991
    :cond_a
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->Light:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setUnlockResponseMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;)V

    :cond_b
    :goto_0
    return-void
.end method

.method private onLogoLightControl(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation

    .line 5903
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLogoLightControl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5905
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object p1

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "xpCarControl_Lamp"

    invoke-virtual {p1, v0, v2, v1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->showRearLogoConfirmNotify(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 5907
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setRearLogoLightSw(Z)V

    :goto_0
    return-void
.end method

.method private onLowSpeedSoundSet(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 6020
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLowSpeedSoundSet, mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 6029
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->SoundEffect3:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setAvasLowSpdEffect(Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;)V

    goto :goto_0

    .line 6026
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->SoundEffect2:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setAvasLowSpdEffect(Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;)V

    goto :goto_0

    .line 6023
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->SoundEffect1:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setAvasLowSpdEffect(Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;)V

    :goto_0
    return-void
.end method

.method private onModesBrakeSet(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 5937
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModesBrakeSet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5947
    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;->Sport:Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;

    goto :goto_0

    .line 5944
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;

    goto :goto_0

    .line 5941
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;->Economic:Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;

    :goto_0
    if-eqz p1, :cond_3

    .line 5953
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setEspBpfModeValue(Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;)Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private onModesDrivingComfort()V
    .locals 3

    .line 1509
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onModesDrivingComfort"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1510
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Comfort:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    return-void
.end method

.method private onModesDrivingCrosscountry(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 1498
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onModesDrivingCrosscountry"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    move v2, v0

    .line 1500
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->OffRoad:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)V

    return-void
.end method

.method private onModesDrivingIndividual()V
    .locals 3

    .line 1504
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onModesDrivingIndividual"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1505
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Individual:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    return-void
.end method

.method private onModesDrivingRacer()V
    .locals 3

    .line 7015
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onModesDrivingRacer"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7016
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Race:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    return-void
.end method

.method private onModesDrivingXsport(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 6990
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->fromXsportDriveMode(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 6995
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->toVcuCmd()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_4

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 6997
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getAvailableMileage()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_2

    const/16 p1, 0x66

    goto :goto_0

    .line 6999
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->isTpmsPressureNormal()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 p1, 0x67

    goto :goto_0

    :cond_3
    const/16 v0, 0x65

    .line 7003
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->onModesDrivingXSport(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)I

    move p1, v0

    goto :goto_0

    .line 7007
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->onModesDrivingXSport(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)I

    move-result p1

    :goto_0
    return p1
.end method

.method private onNarrowroadAssistSet(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 5922
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNarrowroadAssistSet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5923
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setNraState(I)V

    return-void
.end method

.method private onNearAutoUnlockControl(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 6005
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNearAutoUnlockControl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6006
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setNearUnlock(Z)V

    return-void
.end method

.method private onNraAssistControl(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 5917
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNraAssistControl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5918
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setNraSwEnable(Z)V

    return-void
.end method

.method private onParkAutoUnlockOff()V
    .locals 2

    .line 5826
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onParkAutoUnlockOff"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5827
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setParkingAutoUnlock(Z)V

    return-void
.end method

.method private onParkAutoUnlockOn()V
    .locals 2

    .line 5821
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onParkAutoUnlockOn"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5822
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setParkingAutoUnlock(Z)V

    return-void
.end method

.method private onPsnSeatBackrestForemost()V
    .locals 4

    .line 1439
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatTiltPos()I

    move-result v0

    .line 1440
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPsnSeatBackrestForemost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x14

    rsub-int/lit8 v0, v0, 0x14

    .line 1443
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatTiltPos(I)V

    goto :goto_0

    .line 1446
    :cond_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_tilt:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    :goto_0
    return-void
.end method

.method private onPsnSeatBackrestRear()V
    .locals 4

    .line 1451
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatTiltPos()I

    move-result v0

    .line 1452
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPsnSeatBackrestRear:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x55

    rsub-int/lit8 v0, v0, 0x55

    .line 1455
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatTiltPos(I)V

    goto :goto_0

    .line 1458
    :cond_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_tilt:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    :goto_0
    return-void
.end method

.method private onPsnSeatMoveForemost()V
    .locals 4

    .line 1133
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatHorzPos()I

    move-result v0

    .line 1134
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPsnSeatMoveForemost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x5a

    rsub-int/lit8 v0, v0, 0x5a

    .line 1135
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatHorzPos(I)V

    goto :goto_0

    .line 1138
    :cond_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_foremost:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    :goto_0
    return-void
.end method

.method private onPsnSeatMoveHighest()V
    .locals 4

    .line 1163
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatVerPos()I

    move-result v0

    .line 1164
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPsnSeatMoveHighest:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x64

    rsub-int/lit8 v0, v0, 0x64

    .line 1165
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatVerPos(I)V

    goto :goto_0

    .line 1168
    :cond_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_highest:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    :goto_0
    return-void
.end method

.method private onPsnSeatMoveLowest()V
    .locals 4

    .line 1153
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatVerPos()I

    move-result v0

    .line 1154
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSeatMoveLowest:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    rsub-int/lit8 v0, v0, 0x0

    .line 1155
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatVerPos(I)V

    goto :goto_0

    .line 1158
    :cond_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_lowest:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    :goto_0
    return-void
.end method

.method private onPsnSeatMoveRear()V
    .locals 4

    .line 1143
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatHorzPos()I

    move-result v0

    .line 1144
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPsnSeatMoveRear:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    rsub-int/lit8 v0, v0, 0x0

    .line 1145
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatHorzPos(I)V

    goto :goto_0

    .line 1148
    :cond_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_rear:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    :goto_0
    return-void
.end method

.method private onPsnWelcomeModeOff()V
    .locals 2

    .line 1115
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnWelcomeMode(Z)V

    return-void
.end method

.method private onPsnWelcomeModeOn()V
    .locals 2

    .line 1119
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnWelcomeMode(Z)V

    return-void
.end method

.method private onSaveSuspensionPosition()V
    .locals 0

    return-void
.end method

.method private onSeatHabitSet(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pilot",
            "num"
        }
    .end annotation

    .line 5866
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeatHabitSet, pilot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    if-eq p2, v2, :cond_0

    if-eq p2, v1, :cond_0

    const-string p1, "onSeatHabitSet illegal habit"

    .line 5868
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 5881
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, p2, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreRRSelectSeatPos(IZ)Z

    goto :goto_0

    .line 5877
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, p2, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreRLSelectSeatPos(IZ)Z

    goto :goto_0

    .line 5873
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, p2, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restorePsnSelectSeatPos(IZ)Z

    :goto_0
    return-void
.end method

.method private onSeatMemoryConfig(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 4729
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "position"

    .line 4730
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "id"

    .line 4731
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string p1, "isSupportMsmP"

    .line 4734
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4735
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restorePsnSelectSeatPos(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    const-string v4, "isSupportSecRowMemory"

    if-ne p1, v3, :cond_1

    .line 4738
    :try_start_1
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4739
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreRLSelectSeatPos(IZ)Z

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 4742
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4743
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreRRSelectSeatPos(IZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4748
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeatMemoryConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onSeatMove(ZLjava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drv",
            "data"
        }
    .end annotation

    const-string v0, "legHorzPos"

    const-string v1, "legHeightPos"

    const-string/jumbo v2, "seatTiltingPos"

    const-string/jumbo v3, "seatVerticalPos"

    const-string/jumbo v4, "seatHorizonPos"

    .line 4478
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v5, "isSupportMsmD"

    .line 4481
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    if-nez p1, :cond_3

    const-string v5, "isSupportMsmP"

    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    return-void

    .line 4484
    :cond_3
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSource(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_13

    const/4 v5, -0x1

    .line 4492
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4493
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4494
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    :cond_4
    move v4, v5

    .line 4496
    :goto_0
    :try_start_1
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4497
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :cond_5
    move v3, v5

    .line 4499
    :goto_1
    :try_start_2
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4500
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :cond_6
    move v2, v5

    .line 4502
    :goto_2
    :try_start_3
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4503
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :cond_7
    move v1, v5

    .line 4505
    :goto_3
    :try_start_4
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 4506
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move v5, v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move v1, v5

    goto :goto_4

    :catch_2
    move-exception v0

    move v1, v5

    move v2, v1

    goto :goto_4

    :catch_3
    move-exception v0

    move v1, v5

    move v2, v1

    move v3, v2

    goto :goto_4

    :catch_4
    move-exception v0

    move v1, v5

    move v2, v1

    move v3, v2

    move v4, v3

    .line 4509
    :goto_4
    sget-object v6, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSeatMove: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4511
    :cond_8
    :goto_5
    invoke-direct {p0, v4}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4512
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatHorzPos()I

    move-result v0

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatHorzPos()I

    move-result v0

    :goto_6
    move v4, v0

    :cond_a
    move v7, v4

    .line 4514
    invoke-direct {p0, v3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 4515
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-eqz p1, :cond_b

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatVerPos()I

    move-result v0

    goto :goto_7

    :cond_b
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatVerPos()I

    move-result v0

    :goto_7
    move v3, v0

    :cond_c
    move v8, v3

    .line 4517
    invoke-direct {p0, v2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 4518
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-eqz p1, :cond_d

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatTiltPos()I

    move-result v0

    goto :goto_8

    :cond_d
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatTiltPos()I

    move-result v0

    :goto_8
    move v2, v0

    :cond_e
    move v9, v2

    .line 4520
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 4521
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatLegPos()I

    move-result v1

    :cond_f
    move v10, v1

    .line 4523
    invoke-direct {p0, v5}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 4524
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-eqz p1, :cond_10

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatCushionPos()I

    move-result v0

    goto :goto_9

    :cond_10
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatLegPos()I

    move-result v0

    :goto_9
    move v5, v0

    :cond_11
    move v11, v5

    if-eqz p1, :cond_12

    .line 4527
    iget-object v6, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual/range {v6 .. v11}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDrvSeatAllPositions(IIIII)V

    goto :goto_a

    .line 4529
    :cond_12
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v7, v8, v9, v11}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnSeatAllPositions(IIII)V

    .line 4531
    :goto_a
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getKeepTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 4532
    sget-object p2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSeatMoveUp, keep: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_13

    .line 4534
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p2, p1, v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSeatMenuNotShowKeepTime(ZJ)V

    :cond_13
    return-void
.end method

.method private onSeatOneKeyRestore(I)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pilot"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-ne v1, v8, :cond_0

    .line 4719
    iget-object v9, v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v10, v1, v6

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v11, v1, v5

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v12, v1, v4

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v13, v1, v8

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v14, v1, v7

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v15, v1, v3

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v16, v1, v2

    invoke-virtual/range {v9 .. v16}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatAllPositions(IIIIIII)V

    goto :goto_0

    :cond_0
    if-ne v1, v7, :cond_1

    .line 4722
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    sget-object v9, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v6, v9, v6

    sget-object v9, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v5, v9, v5

    sget-object v9, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v4, v9, v4

    sget-object v9, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v8, v9, v8

    sget-object v9, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v7, v9, v7

    sget-object v9, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v9, v9, v3

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v10, v3, v2

    move v2, v6

    move v3, v5

    move v5, v8

    move v6, v7

    move v7, v9

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatAllPositions(IIIIIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onSecondRowSeatMode(ZLjava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "data"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, "headHorzPos"

    const-string v4, "headHeightPos"

    const-string v5, "legHorzPos"

    const-string v6, "legHeightPos"

    const-string/jumbo v7, "seatTiltingPos"

    const-string/jumbo v8, "seatAngle"

    const-string/jumbo v9, "seatHorizonPos"

    .line 4753
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    return-void

    :cond_0
    const-string v10, "isSupportSecRowMemory"

    .line 4756
    invoke-static {v10}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    return-void

    .line 4759
    :cond_1
    sget-object v10, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onSecondRowSeatMode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", data: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4760
    invoke-direct {v1, v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSource(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_18

    const/4 v10, -0x1

    .line 4771
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4772
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4773
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move v9, v0

    goto :goto_0

    :cond_2
    move v9, v10

    .line 4775
    :goto_0
    :try_start_1
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4776
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move v8, v0

    goto :goto_1

    :cond_3
    move v8, v10

    .line 4778
    :goto_1
    :try_start_2
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4779
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move v7, v0

    goto :goto_2

    :cond_4
    move v7, v10

    .line 4781
    :goto_2
    :try_start_3
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4782
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move v6, v0

    goto :goto_3

    :cond_5
    move v6, v10

    .line 4784
    :goto_3
    :try_start_4
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4785
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move v5, v0

    goto :goto_4

    :cond_6
    move v5, v10

    .line 4787
    :goto_4
    :try_start_5
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4788
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move v4, v0

    goto :goto_5

    :cond_7
    move v4, v10

    .line 4790
    :goto_5
    :try_start_6
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4791
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move v10, v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move v4, v10

    goto :goto_6

    :catch_2
    move-exception v0

    move v4, v10

    move v5, v4

    goto :goto_6

    :catch_3
    move-exception v0

    move v4, v10

    move v5, v4

    move v6, v5

    goto :goto_6

    :catch_4
    move-exception v0

    move v4, v10

    move v5, v4

    move v6, v5

    move v7, v6

    goto :goto_6

    :catch_5
    move-exception v0

    move v4, v10

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    goto :goto_6

    :catch_6
    move-exception v0

    move v4, v10

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    .line 4794
    :goto_6
    sget-object v3, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onSeatMove: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4796
    :cond_8
    :goto_7
    invoke-direct {v1, v9}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4797
    iget-object v0, v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatHorPos()I

    move-result v0

    goto :goto_8

    :cond_9
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatHorPos()I

    move-result v0

    :goto_8
    move v9, v0

    :cond_a
    move v12, v9

    .line 4799
    invoke-direct {v1, v8}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 4800
    iget-object v0, v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatZeroAngle()I

    move-result v0

    goto :goto_9

    :cond_b
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatZeroAngle()I

    move-result v0

    :goto_9
    move v8, v0

    :cond_c
    move v13, v8

    .line 4802
    invoke-direct {v1, v7}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 4803
    iget-object v0, v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatTiltPos()I

    move-result v0

    goto :goto_a

    :cond_d
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatTiltPos()I

    move-result v0

    :goto_a
    move v7, v0

    :cond_e
    move v14, v7

    .line 4806
    invoke-direct {v1, v6}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 4807
    iget-object v0, v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatLegVerPos()I

    move-result v0

    goto :goto_b

    :cond_f
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatLegVerPos()I

    move-result v0

    :goto_b
    move v6, v0

    :cond_10
    move v15, v6

    .line 4809
    invoke-direct {v1, v5}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4810
    iget-object v0, v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatLegHorPos()I

    move-result v0

    goto :goto_c

    :cond_11
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatLegHorPos()I

    move-result v0

    :goto_c
    move v5, v0

    :cond_12
    move/from16 v16, v5

    .line 4812
    invoke-direct {v1, v4}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 4813
    iget-object v0, v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-eqz v2, :cond_13

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatHeadVerPos()I

    move-result v0

    goto :goto_d

    :cond_13
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatHeadVerPos()I

    move-result v0

    :goto_d
    move v4, v0

    :cond_14
    move/from16 v17, v4

    .line 4815
    invoke-direct {v1, v10}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSeatPosValid(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 4816
    iget-object v0, v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatHeadHorPos()I

    move-result v0

    goto :goto_e

    :cond_15
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatHeadHorPos()I

    move-result v0

    :goto_e
    move v10, v0

    :cond_16
    move/from16 v18, v10

    if-eqz v2, :cond_17

    .line 4819
    iget-object v11, v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual/range {v11 .. v18}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatAllPositions(IIIIIII)V

    goto :goto_f

    .line 4821
    :cond_17
    iget-object v11, v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual/range {v11 .. v18}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatAllPositions(IIIIIII)V

    :cond_18
    :goto_f
    return-void
.end method

.method private onSetLightHeight(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "source"
        }
    .end annotation

    .line 2531
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetLightHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    move v2, v0

    :cond_0
    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 2541
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->values()[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    move-result-object v1

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->toBcmValue()I

    move-result p1

    invoke-virtual {p2, p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setLampHeightLevel(IZ)V

    goto :goto_0

    .line 2535
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setAutoLampHeight(ZZ)V

    :goto_0
    return-void
.end method

.method private onShowModeReset()V
    .locals 2

    .line 5861
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onShowModeReset"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5862
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->handleSmartRestore()V

    return-void
.end method

.method private onStartSeatEasyEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "data",
            "callback"
        }
    .end annotation

    .line 2443
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result v0

    .line 2444
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result p2

    .line 2445
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartSeatEasyEntry--->pilot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 2447
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setLtSeatEasyEntryErrorCallBack(Ljava/lang/String;Ljava/lang/String;)V

    .line 2448
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-ne p2, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowLtSeatEZ(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 2450
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRtSeatEasyEntryErrorCallBack(Ljava/lang/String;Ljava/lang/String;)V

    .line 2451
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-ne p2, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowRtSeatEZ(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private onStartSeatFold(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "data",
            "callback"
        }
    .end annotation

    .line 2456
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result v0

    .line 2457
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result p2

    .line 2458
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartSeatFold--->pilot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    .line 2460
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTlSeatFolErrorCallBack(Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-ne p2, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLtSeatFol(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    if-ne v0, v3, :cond_3

    .line 2463
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrSeatFolErrorCallBack(Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-ne p2, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRtSeatFol(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private onStartSeatStow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "data",
            "callback"
        }
    .end annotation

    .line 2469
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    .line 2470
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result p2

    .line 2471
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartSeatStow--->target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2472
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowSeatStowErrorCallBack(Ljava/lang/String;Ljava/lang/String;)V

    .line 2473
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    :goto_0
    invoke-virtual {p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowSeatStow(I)V

    return-void
.end method

.method private onStartSeatZeroGravity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "data",
            "callback"
        }
    .end annotation

    .line 2430
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result v0

    .line 2431
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result p2

    .line 2432
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartSeatZeroGravity--->pilot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 2434
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setLtSeatZeroGravErrorCallBack(Ljava/lang/String;Ljava/lang/String;)V

    .line 2435
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowLtSeatZeroGrav(II)V

    goto :goto_2

    :cond_1
    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 2437
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRtSeatZeroGravErrorCallBack(Ljava/lang/String;Ljava/lang/String;)V

    .line 2438
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-ne p2, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowRtSeatZeroGrav(II)V

    :cond_3
    :goto_2
    return-void
.end method

.method private onSuspensionHeight(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "source"
        }
    .end annotation

    .line 1093
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuspensionHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    move v2, v0

    :cond_0
    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 1109
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->LL3:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {p1, p2, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAsHeightMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;Z)Ljava/lang/String;

    goto :goto_0

    .line 1106
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->LL1:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {p1, p2, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAsHeightMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;Z)Ljava/lang/String;

    goto :goto_0

    .line 1103
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->H0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {p1, p2, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAsHeightMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;Z)Ljava/lang/String;

    goto :goto_0

    .line 1100
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->HL1:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {p1, p2, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAsHeightMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;Z)Ljava/lang/String;

    goto :goto_0

    .line 1097
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->HL2:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {p1, p2, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAsHeightMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;Z)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private onTrunkAngleSet(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5932
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrunkAngleSet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5933
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setTrunkFullOpenPos(I)V

    return-void
.end method

.method private onTurnAssistControl(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 5912
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTurnAssistControl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5913
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setTurnAssistantEnable(Z)V

    return-void
.end method

.method private onWaistMove(II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pilot",
            "direction"
        }
    .end annotation

    .line 1470
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWaistMove, pilot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x4

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq p2, v2, :cond_1

    if-eq p2, v3, :cond_1

    if-eq p2, v4, :cond_0

    if-eq p2, v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v5, 0x6

    goto :goto_0

    :cond_1
    const/4 v5, 0x5

    :goto_0
    if-eq v5, v1, :cond_6

    .line 1483
    rem-int/2addr p2, v3

    if-nez p2, :cond_2

    move p2, v3

    goto :goto_1

    :cond_2
    move p2, v2

    :goto_1
    if-ne p1, v2, :cond_3

    .line 1485
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v5, p2, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatStart(III)Z

    goto :goto_2

    :cond_3
    if-ne p1, v3, :cond_4

    .line 1487
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v5, p2, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatStart(III)Z

    goto :goto_2

    :cond_4
    if-ne p1, v4, :cond_5

    .line 1489
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v5, p2, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatStart(III)Z

    goto :goto_2

    :cond_5
    if-ne p1, v0, :cond_6

    .line 1491
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v5, p2, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatStart(III)Z

    :cond_6
    :goto_2
    return-void
.end method

.method private onWindowLockEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 5888
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowLockEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5889
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setWindowLockActive(Z)V

    return-void
.end method

.method private setAsHeight(II)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "source"
        }
    .end annotation

    .line 7075
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getDriveMode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v0, v5, :cond_5

    if-eqz p1, :cond_4

    if-eq p1, v7, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v6

    goto :goto_0

    :cond_1
    move v1, v7

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v2

    .line 7097
    :goto_0
    invoke-static {v5}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->getDriveSubItem(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;

    move-result-object p1

    const-string p2, "AS_HEIGHT"

    .line 7098
    invoke-virtual {p1, p2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    .line 7099
    invoke-static {v5, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->updateDriveSubItemByDriveMode(ILcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;)V

    .line 7100
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setTuningConfig()V

    goto :goto_3

    :cond_5
    if-eq p2, v7, :cond_6

    move p2, v7

    goto :goto_1

    :cond_6
    move p2, v6

    :goto_1
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    if-eq p1, v7, :cond_a

    if-eq p1, v4, :cond_9

    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_7

    goto :goto_2

    .line 7119
    :cond_7
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->LL3:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    goto :goto_2

    .line 7116
    :cond_8
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->LL1:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    goto :goto_2

    .line 7113
    :cond_9
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->H0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    goto :goto_2

    .line 7110
    :cond_a
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->HL1:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    goto :goto_2

    .line 7107
    :cond_b
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->HL2:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    :goto_2
    if-eqz v0, :cond_c

    .line 7124
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAsHeightMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;Z)Ljava/lang/String;

    move-result-object p1

    .line 7125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 7127
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Code"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 7130
    sget-object p2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setAsHeight, parse resultJson error"

    invoke-static {p2, v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_c
    :goto_3
    move v1, v6

    :goto_4
    return v1
.end method

.method private setAtlEnable()V
    .locals 2

    .line 3840
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->isAtlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3841
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlSwitch(Z)V

    :cond_0
    return-void
.end method

.method private setEnergyRecycleDialogStateChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1606
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->confirmOrCancelSetEnergyRecycleGrade(Z)V

    return-void
.end method

.method private setEnergyRecycleGrade(II)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "grade",
            "source"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    .line 1584
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v3, p1, p2, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setEnergyRecycleGradeWithPreconditions(IZZZ)Ljava/lang/String;

    move-result-object p1

    .line 1585
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1587
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Code"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1590
    sget-object p2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setEnergyRecycleGrade, parse resultJson error"

    invoke-static {p2, v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    :cond_1
    :goto_1
    move v2, v0

    goto :goto_2

    .line 1595
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "setEnergyRecycleGrade, grade is invalid"

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v2
.end method

.method private setEspBpfMode(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 7149
    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;->Sport:Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;

    goto :goto_0

    .line 7146
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;

    goto :goto_0

    .line 7143
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;->Economic:Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;

    :goto_0
    if-eqz p1, :cond_3

    .line 7155
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setEspBpfModeValue(Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;)Ljava/lang/String;

    :cond_3
    if-eqz p1, :cond_4

    .line 7158
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setEspBpfModeValue(Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;)Ljava/lang/String;

    move-result-object p1

    .line 7159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7161
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Code"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v0, -0x1

    .line 7164
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setEspBpfMode, parse resultJson error"

    invoke-static {v1, v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move p1, v0

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private setLegPos(III)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pilot",
            "direction",
            "pos"
        }
    .end annotation

    if-ltz p3, :cond_e

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_a

    if-eq p1, v2, :cond_8

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_0

    goto :goto_3

    :cond_0
    if-eq p2, v3, :cond_3

    if-ne p2, v2, :cond_1

    goto :goto_0

    :cond_1
    if-eq p2, v1, :cond_2

    if-ne p2, v0, :cond_e

    .line 1380
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLegVerPos(I)V

    goto :goto_3

    .line 1378
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLegHorPos(I)V

    goto :goto_3

    :cond_4
    if-eq p2, v3, :cond_7

    if-ne p2, v2, :cond_5

    goto :goto_1

    :cond_5
    if-eq p2, v1, :cond_6

    if-ne p2, v0, :cond_e

    .line 1373
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLegVerPos(I)V

    goto :goto_3

    .line 1371
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLegHorPos(I)V

    goto :goto_3

    :cond_8
    if-eq p2, v3, :cond_9

    if-ne p2, v2, :cond_e

    .line 1366
    :cond_9
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatLegPos(I)V

    goto :goto_3

    :cond_a
    if-eq p2, v3, :cond_d

    if-ne p2, v2, :cond_b

    goto :goto_2

    :cond_b
    if-eq p2, v1, :cond_c

    if-ne p2, v0, :cond_e

    .line 1361
    :cond_c
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatLegPos(I)V

    goto :goto_3

    .line 1359
    :cond_d
    :goto_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatCushionPos(I)V

    :cond_e
    :goto_3
    return-void
.end method

.method private setSteeringMode(I)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 7024
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getDriveMode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0xf

    if-ne v0, v6, :cond_3

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    move v1, v3

    .line 7040
    :goto_0
    invoke-static {v6}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->getDriveSubItem(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;

    move-result-object p1

    const-string v0, "EPS"

    .line 7041
    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    .line 7042
    invoke-static {v6, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->updateDriveSubItemByDriveMode(ILcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;)V

    .line 7043
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setTuningConfig()V

    goto :goto_2

    :cond_3
    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_5

    if-eq p1, v2, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    .line 7053
    :cond_4
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->Sport:Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    goto :goto_1

    .line 7050
    :cond_5
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->Standard:Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    goto :goto_1

    .line 7047
    :cond_6
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->Soft:Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    :goto_1
    if-eqz p1, :cond_7

    .line 7059
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setSteeringEps(Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;)Ljava/lang/String;

    move-result-object p1

    .line 7060
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 7062
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Code"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 7065
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setSteeringModes, parse resultJson error"

    invoke-static {v0, v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    :goto_2
    move v1, v3

    :goto_3
    return v1
.end method

.method private setXSportDrivingMode(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1519
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->toXSportDriveModeFromVui(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 1522
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->showConfirmDialogBySpDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)Ljava/lang/String;

    move-result-object p1

    .line 1523
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1525
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Code"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1528
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setXSportDrivingMode, parse resultJson error"

    invoke-static {v1, v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    .line 1533
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setXSportDrivingMode, mode is invalid"

    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method private setXSportDrivingModeDialogStateChange(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "state"
        }
    .end annotation

    .line 1545
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->toXSportDriveModeFromVui(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    move-result-object p1

    .line 1546
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->confirmOrCancelSetDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)V

    return-void
.end method

.method private speak(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stringId"
        }
    .end annotation

    .line 3382
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private toEnergyRecycleGradeFromVui(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1622
    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->XPEDAL:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->toVcuRecycleCmd()I

    move-result p1

    goto :goto_0

    .line 1619
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->High:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->toVcuRecycleCmd()I

    move-result p1

    goto :goto_0

    .line 1616
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->Middle:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->toVcuRecycleCmd()I

    move-result p1

    goto :goto_0

    .line 1613
    :cond_3
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->Low:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->toVcuRecycleCmd()I

    move-result p1

    :goto_0
    return p1
.end method

.method private toXSportDriveModeFromVui(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1568
    :pswitch_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->EcoPlus:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    goto :goto_0

    .line 1565
    :pswitch_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Comfort:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    goto :goto_0

    .line 1562
    :pswitch_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->OffRoad:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    goto :goto_0

    .line 1559
    :pswitch_3
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Race:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    goto :goto_0

    .line 1556
    :pswitch_4
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Xpower:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    goto :goto_0

    .line 1553
    :pswitch_5
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Geek:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected checkDriverSeatOccupied()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected checkPsnSeatOccupied()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected closeNapa2DPageUI(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageUrl"
        }
    .end annotation

    .line 3964
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeNapa2DPageUI  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3965
    invoke-static {}, Lcom/xiaopeng/carcontrol/direct/ElementDirectManager;->getElementDirect()Lcom/xiaopeng/carcontrol/direct/IElementDirect;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3967
    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/direct/IElementDirect;->convertUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3968
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/xiaopeng/carcontrol/direct/IElementDirect;->closePageDirect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_0
    return v1
.end method

.method public getArsStatus()I
    .locals 6

    const-string v0, "isSupportArs"

    .line 6847
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6848
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;->checkError()I

    move-result v0

    .line 6849
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;->getArsFoldState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    move-result-object v1

    .line 6850
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getArsStatus: error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", foldState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 6853
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;

    invoke-interface {v4, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;->startInitialize(Z)V

    :cond_0
    const/4 v4, 0x6

    if-ne v0, v4, :cond_1

    .line 6856
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;

    invoke-interface {v5, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;->startReset(Z)V

    :cond_1
    const/4 v5, 0x3

    packed-switch v0, :pswitch_data_0

    if-eqz v1, :cond_4

    .line 6873
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$ArsFoldState:[I

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xb

    return v0

    :pswitch_1
    const/16 v0, 0xc

    return v0

    :pswitch_2
    const/16 v0, 0xa

    return v0

    :pswitch_3
    const/16 v0, 0x9

    return v0

    :pswitch_4
    const/16 v0, 0x8

    return v0

    :pswitch_5
    return v5

    :pswitch_6
    const/4 v0, 0x7

    return v0

    :pswitch_7
    return v4

    :pswitch_8
    const/4 v0, 0x5

    return v0

    :pswitch_9
    const/4 v0, 0x4

    return v0

    :goto_0
    if-eq v0, v3, :cond_3

    if-eq v0, v5, :cond_2

    goto :goto_1

    :cond_2
    return v5

    :cond_3
    return v3

    :cond_4
    :goto_1
    return v2

    :cond_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public getArsWorkMode()I
    .locals 5

    const-string v0, "isSupportArs"

    .line 6891
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6894
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;->getArsWorkMode()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    move-result-object v0

    .line 6895
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getArsWorkMode:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6897
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->AUTO:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    .line 6900
    :cond_1
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->MANUAL:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    return v1
.end method

.method protected getAtmosphereBrightnessStatus()I
    .locals 3

    .line 3815
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "getAtmosphereBrightnessStatus"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3816
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlBrightnessValue()I

    move-result v0

    return v0
.end method

.method protected getAtmosphereColorStatus()I
    .locals 3

    .line 3820
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "getAtmosphereColorStatus"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3821
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlSingleColor()I

    move-result v0

    return v0
.end method

.method protected getAtmosphereCurrentColorMode()I
    .locals 3

    .line 3830
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "getAtmosphereCurrentColorMode()"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3831
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlThemeColorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method protected getAtmosphereCurrentStatus()I
    .locals 3

    .line 3835
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "getAtmosphereCurrentStatus()"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3836
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->isAtlEnabled()Z

    move-result v0

    return v0
.end method

.method protected getAtmosphereDoubleColorStatus()I
    .locals 3

    .line 3825
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "getAtmosphereDoubleColorStatus"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3826
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getDoubleColor()I

    move-result v0

    return v0
.end method

.method protected getAvailableMileage()I
    .locals 1

    .line 5348
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getAvailableMileage()I

    move-result v0

    return v0
.end method

.method protected getCapsuleCurrentMode()I
    .locals 5

    const-string v0, "isSupportVipSeat"

    .line 5324
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 5325
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSpaceCapsuleViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getCurrentSubMode()I

    move-result v0

    .line 5326
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpaceCapsule subMode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v3, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    if-eq v0, v3, :cond_3

    const/4 v3, 0x6

    if-ne v0, v3, :cond_5

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v3

    :cond_5
    return v1
.end method

.method protected getCarWindowCanControl(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x8

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x7

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_7
    move v1, v0

    goto :goto_0

    :pswitch_8
    const/4 v1, 0x0

    .line 6279
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowInitFailed(I)Z

    move-result v1

    xor-int/2addr v0, v1

    .line 6280
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarWindowCanControl:pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", state="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected getControlComfortableDrivingModeSupport()I
    .locals 4

    .line 5160
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getDriveMode()I

    move-result v0

    .line 5161
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getControlComfortableDrivingModeSupport, driveMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getControlElectricCurtainSupport()I
    .locals 5

    const-string v0, "isSupportSunShade"

    .line 5280
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 5283
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isSunShadeInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v0, 0x67

    .line 5286
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isSunShadeHotProtect()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x65

    .line 5289
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isSunShadeBlocked()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v0, 0x66

    :cond_3
    if-nez v0, :cond_4

    .line 5294
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getSunShadePos()I

    move-result v0

    .line 5296
    :cond_4
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getControlElectricCurtainSupport: result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method protected getControlLampSignalSupport()I
    .locals 4

    const-string v0, "isSupportLlu"

    .line 5191
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5192
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isLLuSwEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5194
    :goto_0
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getControlLampSignalSupport, value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method protected getControlLidarSupport()I
    .locals 1

    const-string v0, "isSupportXNgp"

    .line 5199
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected getControlLightLanguageAutoPlayState()I
    .locals 2

    .line 6071
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "getControlLightLanguageAutoPlayState"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6072
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isSayHiEnabled()Z

    move-result v0

    return v0
.end method

.method protected getControlLightLanguageSettingPreviewSupport()I
    .locals 2

    .line 6046
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "getControlLightLanguageSettingPreviewSupport"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isSupportLluPreview"

    .line 6047
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 6050
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isLLuSwEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 6053
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    return v0

    .line 6056
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->isTurnLampOn()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    return v0

    .line 6059
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getRearFogLampState()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method protected getControlLowSpeedAnalogSoundSupport()I
    .locals 1

    .line 4861
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->isLowSpdEnabled()Z

    move-result v0

    return v0
.end method

.method protected getControlScissorDoorLeftCloseSupport()I
    .locals 5

    const-string v0, "isSupportSdc"

    .line 4953
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4956
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSdcSysRunningState()I

    move-result v0

    .line 4957
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getControlScissorDoorLeftCloseSupport, LeftSdcRunningState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x6

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x7

    return v0

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 v0, 0x5

    return v0
.end method

.method protected getControlScissorDoorLeftOpenSupport()I
    .locals 7

    const-string v0, "isSupportSdc"

    .line 4896
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4899
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevel()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 4900
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevel()I

    move-result v0

    if-ne v0, v4, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 4901
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeed()F

    move-result v0

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    :cond_2
    return v3

    .line 4904
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSdcSysRunningState()I

    move-result v0

    .line 4905
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getControlScissorDoorLeftOpenSupport, LeftSdcRunningState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    return v4

    :cond_4
    const/4 v2, 0x5

    if-eq v0, v4, :cond_7

    if-ne v0, v3, :cond_5

    goto :goto_0

    :cond_5
    if-ne v0, v2, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    return v0

    :cond_7
    :goto_0
    return v2
.end method

.method protected getControlScissorDoorLeftRunningSupport()I
    .locals 5

    const-string v0, "isSupportSdc"

    .line 4998
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5001
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSdcSysRunningState()I

    move-result v0

    .line 5002
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getControlScissorDoorLeftRunningSupport, LeftSdcRunningState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected getControlScissorDoorRightCloseSupport()I
    .locals 5

    const-string v0, "isSupportSdc"

    .line 4972
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4975
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSdcSysRunningState()I

    move-result v0

    .line 4976
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getControlScissorDoorRightCloseSupport, RightSdcRunningState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x6

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x7

    return v0

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 v0, 0x5

    return v0
.end method

.method protected getControlScissorDoorRightOpenSupport()I
    .locals 7

    const-string v0, "isSupportSdc"

    .line 4920
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4923
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevel()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 4924
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevel()I

    move-result v0

    if-ne v0, v4, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 4925
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeed()F

    move-result v0

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    :cond_2
    return v3

    .line 4928
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSdcSysRunningState()I

    move-result v0

    .line 4929
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getControlScissorDoorRightOpenSupport, RightSdcRunningState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    return v4

    :cond_4
    const/4 v2, 0x5

    if-eq v0, v4, :cond_7

    if-ne v0, v3, :cond_5

    goto :goto_0

    :cond_5
    if-ne v0, v2, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    return v0

    :cond_7
    :goto_0
    return v2
.end method

.method protected getControlScissorDoorRightRunningSupport()I
    .locals 5

    const-string v0, "isSupportSdc"

    .line 5011
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5014
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSdcSysRunningState()I

    move-result v0

    .line 5015
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getControlScissorDoorRightRunningSupport, RightSdcRunningState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected getControlSupportEnergyRecycleReason()I
    .locals 1

    const-string v0, "isSupportSnowMode"

    .line 2801
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getSnowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const-string v0, "isSupportDriveModeNewArch"

    .line 2804
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "isSupportAbsFault"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isAbsFault()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected getControlWindowsStateSupport()[F
    .locals 4

    .line 5150
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "getControlWindowsStateSupport"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5151
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getWindowsPos()[F

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5152
    array-length v2, v1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    const-string v1, "WindowPos array is error"

    .line 5153
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getControlXkeySettingSupport(Ljava/lang/Integer;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 6134
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "isSupportAutoPark"

    .line 6145
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_1
    const-string v0, "isSupportSwitchMedia"

    .line 6142
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_2
    const-string v0, "isSupportXSayHi"

    .line 6139
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_3
    const-string v0, "isSupportXUnlockTrunk"

    .line 6136
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 6149
    :goto_1
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getControlXkeySettingSupport: mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", result="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method protected getControlXpedalStatus()I
    .locals 2

    .line 4876
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->XPEDAL:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getEnergyRecycle()Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getDoorKeyValue()I
    .locals 1

    .line 3314
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getDoorKeyForCustomer()I

    move-result v0

    return v0
.end method

.method protected getExtraTrunkStatus()I
    .locals 4

    const-string v0, "persist.sys.xiaopeng.empennage"

    .line 3302
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ConfigUtil;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    .line 3303
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExtraTrunkStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method protected getGuiPageOpenState(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageUrl"
        }
    .end annotation

    .line 3910
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGuiPageOpenState 1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "isSupportVuiOpenCarControl"

    .line 3912
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3913
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->isCarControlMoveBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3914
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.xiaopeng.carcontrol.intent.action.SHOW_CAR_CONTROL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 3915
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3916
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/App;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    const-string v1, "isSupportGuiPageOpen"

    .line 3923
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const-string p1, "getGuiPageOpenState not support"

    .line 3924
    invoke-static {v0, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v3

    .line 3928
    :cond_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/direct/ElementDirectManager;->getElementDirect()Lcom/xiaopeng/carcontrol/direct/IElementDirect;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3930
    invoke-interface {v1, p1}, Lcom/xiaopeng/carcontrol/direct/IElementDirect;->convertUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3931
    invoke-interface {v1, p1}, Lcom/xiaopeng/carcontrol/direct/IElementDirect;->checkSupport(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3932
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGuiPageOpenState 0 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3933
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/xiaopeng/carcontrol/direct/IElementDirect;->showPageDirect(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    :cond_3
    return v3
.end method

.method protected getIhbStatus()I
    .locals 2

    .line 6118
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;->getIhbState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    .line 6119
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getIhbSupport()I
    .locals 2

    .line 6081
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "getIhbSupport"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isSupportIhb"

    .line 6082
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "isVpmNotReady"

    .line 6095
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    return v0

    .line 6098
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNedcState()Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    move-result-object v0

    .line 6099
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->On:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->TurnOning:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->TurnOnFailure:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 6102
    :cond_2
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->TurnOffing:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x6

    return v0

    .line 6105
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;->getIhbState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->FAIL:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x7

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    :goto_0
    const/4 v0, 0x5

    return v0
.end method

.method protected getInDcCharge()Z
    .locals 1

    .line 5344
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isInDcCharge()Z

    move-result v0

    return v0
.end method

.method protected getLegHeight()I
    .locals 5

    .line 3168
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatLegPos()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    move v0, v1

    .line 3174
    :cond_1
    :goto_0
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLegHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method protected getMirrorStatus()I
    .locals 4

    const-string v0, "isSupportMirrorFold"

    .line 2596
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2598
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeed()F

    move-result v0

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v0, v0, v2

    const/4 v2, 0x2

    if-ltz v0, :cond_1

    return v2

    .line 2601
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->getMirrorFoldState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    move-result-object v0

    .line 2602
    sget-object v3, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$MirrorFoldState:[I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x0

    const-string v3, "isSupportFramelessMirror"

    if-eq v0, v2, :cond_3

    .line 2613
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    return v0

    :cond_2
    return v1

    .line 2606
    :cond_3
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    return v0

    :cond_4
    return v1

    :cond_5
    const/4 v0, 0x3

    return v0
.end method

.method protected getNapa2DPageOpenState(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageUrl"
        }
    .end annotation

    .line 3948
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNapa2DPageOpenState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3949
    invoke-static {}, Lcom/xiaopeng/carcontrol/direct/ElementDirectManager;->getElementDirect()Lcom/xiaopeng/carcontrol/direct/IElementDirect;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3951
    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/direct/IElementDirect;->convertUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3952
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/direct/IElementDirect;->isPageOpen(Landroid/net/Uri;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_0
    return v1
.end method

.method protected getNgpStatus()I
    .locals 9

    .line 5219
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "getNgpStatus"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "isSupportNgp"

    .line 5220
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_a

    .line 5221
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;->getXpuXpilotState()I

    move-result v1

    .line 5222
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-interface {v4}, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;->getNgpState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v4

    .line 5223
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;->getNgpVoiceChangeLane()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v5

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v2

    .line 5224
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XpuXpilotState: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", NgpState: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", VoiceChangeLane: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_9

    const/4 v0, 0x3

    if-eq v1, v3, :cond_8

    if-eq v1, v0, :cond_7

    .line 5234
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNedcState()Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    move-result-object v0

    .line 5235
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->On:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->TurnOning:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->TurnOnFailure:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 5238
    :cond_1
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->TurnOffing:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    if-ne v0, v1, :cond_2

    const/16 v0, 0xa

    return v0

    .line 5241
    :cond_2
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v7, :cond_5

    if-eq v0, v3, :cond_4

    if-eqz v5, :cond_3

    return v7

    :cond_3
    const/16 v0, 0x8

    return v0

    :cond_4
    const/4 v0, 0x7

    return v0

    :cond_5
    const/4 v0, 0x6

    return v0

    :cond_6
    :goto_1
    const/16 v0, 0x9

    return v0

    :cond_7
    const/4 v0, 0x4

    :cond_8
    return v0

    :cond_9
    const/4 v0, 0x5

    return v0

    :cond_a
    return v3
.end method

.method protected getSeatModeSupport(Ljava/lang/String;)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 4419
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 4420
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result v0

    .line 4421
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    .line 4422
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportSeatHeadrestgetSeatModeSupport, pilot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq p1, v6, :cond_8

    if-eq p1, v7, :cond_6

    if-eq p1, v5, :cond_4

    const/4 v5, 0x6

    const/4 v8, 0x5

    if-eq p1, v3, :cond_2

    if-eq p1, v8, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v3, "isSupportTrdRowStow"

    .line 4462
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-eq v0, v8, :cond_1

    if-ne v0, v5, :cond_b

    .line 4464
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowSeatStowState()I

    move-result v1

    if-ne v1, v7, :cond_9

    goto/16 :goto_0

    :cond_2
    const-string v3, "isSupportTrdRowFold"

    .line 4453
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-ne v0, v8, :cond_3

    .line 4455
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLeftSeatTiltState()I

    move-result v1

    if-ne v1, v7, :cond_9

    goto :goto_0

    :cond_3
    if-ne v0, v5, :cond_b

    .line 4457
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRightSeatTiltState()I

    move-result v1

    if-ne v1, v7, :cond_9

    goto :goto_0

    :cond_4
    const-string v6, "isSupportSecRowOneKeyRestore"

    .line 4446
    invoke-static {v6}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    if-eq v0, v5, :cond_5

    if-ne v0, v3, :cond_b

    :cond_5
    move v1, v7

    goto :goto_1

    :cond_6
    const-string v8, "isSupportSecRowEasyEntry"

    .line 4437
    invoke-static {v8}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    if-ne v0, v5, :cond_7

    .line 4439
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLTFuctionStatus()I

    move-result v1

    if-ne v1, v7, :cond_9

    goto :goto_0

    :cond_7
    if-ne v0, v3, :cond_b

    .line 4441
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRTFuctionStatus()I

    move-result v1

    if-ne v1, v7, :cond_9

    goto :goto_0

    :cond_8
    const-string v8, "isSupportSecRowZeroGravity"

    .line 4428
    invoke-static {v8}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    if-ne v0, v5, :cond_a

    .line 4430
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLTFuctionStatus()I

    move-result v1

    if-ne v1, v6, :cond_9

    goto :goto_0

    :cond_9
    move v6, v7

    :goto_0
    move v1, v6

    goto :goto_1

    :cond_a
    if-ne v0, v3, :cond_b

    .line 4432
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRTFuctionStatus()I

    move-result v1

    if-ne v1, v6, :cond_9

    goto :goto_0

    .line 4472
    :cond_b
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSupportSeatHeadrest, pilot: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return v1
.end method

.method protected getSlideDoorStatus(I)I
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

    if-ne p1, v0, :cond_0

    .line 5060
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSlideDoorState()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 5062
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSlideDoorState()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    :cond_2
    move v0, v1

    .line 5069
    :cond_3
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSlideDoorStatus, mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", vmStatus: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method protected getSlideDoorSupport()I
    .locals 1

    const-string v0, "isSupportSlideDoor"

    .line 5054
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected getSlidingDoorControlStatus(II)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "target"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_2

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 5092
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->checkLeftSlideDoorStopAvailability()I

    move-result v0

    goto :goto_1

    :cond_1
    if-ne p1, v0, :cond_6

    .line 5094
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->checkRightSlideDoorStopAvailability()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    if-ne p1, v1, :cond_3

    .line 5085
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->checkLeftSlideDoorOpenAvailability(Z)I

    move-result v0

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_6

    .line 5087
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->checkRightSlideDoorOpenAvailability(Z)I

    move-result v0

    goto :goto_1

    :cond_4
    if-ne p1, v1, :cond_5

    .line 5078
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->checkLeftSlideDoorCloseAvailability()I

    move-result v0

    goto :goto_1

    :cond_5
    if-ne p1, v0, :cond_6

    .line 5080
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->checkRightSlideDoorCloseAvailability()I

    move-result v0

    goto :goto_1

    :cond_6
    :goto_0
    const/16 v0, 0x8

    .line 5098
    :goto_1
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSlidingDoorControlStatus, mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", target: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", status: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method protected getStatusChargePortControl(II)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "chargePort",
            "controlType"
        }
    .end annotation

    .line 3325
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStatusChargePortControl: chargePort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", controlType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x4

    const/4 v1, 0x2

    if-nez p2, :cond_1

    const-string v3, "isSupportChargePortPGearConstrain"

    .line 3328
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 3329
    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevel()I

    move-result v3

    if-eq v3, v0, :cond_0

    return v1

    .line 3331
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeed()F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    return v1

    :cond_1
    const/4 v3, 0x1

    if-eqz p1, :cond_3

    const-string p1, "isChargePortSignalErr"

    .line 3335
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v3

    .line 3336
    :goto_1
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    if-eqz p1, :cond_4

    move v5, v3

    goto :goto_2

    :cond_4
    move v5, v1

    :goto_2
    invoke-virtual {v4, v5}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getChargePortUnlock(I)I

    move-result v4

    .line 3339
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v5, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isChargeGunUnlinked(Z)Z

    move-result p1

    xor-int/2addr p1, v3

    const/4 v5, 0x3

    if-eqz p1, :cond_5

    return v5

    :cond_5
    const-string p1, "isSupportChargePortOnOffConstraint"

    .line 3343
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez v4, :cond_6

    if-nez p2, :cond_6

    return v0

    :cond_6
    if-ne v4, v1, :cond_7

    if-ne p2, v3, :cond_7

    const/4 p1, 0x5

    return p1

    :cond_7
    if-ne v4, v1, :cond_8

    if-eqz p2, :cond_9

    :cond_8
    if-nez v4, :cond_a

    if-ne p2, v3, :cond_a

    :cond_9
    move v2, v3

    :cond_a
    if-eqz v2, :cond_b

    goto :goto_3

    :cond_b
    move v3, v5

    :goto_3
    return v3
.end method

.method protected getSteeringCurrentMode()I
    .locals 2

    .line 3887
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->Standard:Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getSteeringEps(Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;)Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    move-result-object v0

    .line 3888
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->Soft:Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3891
    :cond_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->Sport:Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    if-ne v1, v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method protected getSupportCloseTrunk()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getSupportCwc(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pilot"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p1, "isSupportCwcRR"

    .line 6226
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const-string p1, "isSupportCwcRL"

    .line 6224
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    const-string p1, "isSupportCwcFR"

    .line 6222
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    const-string p1, "isSupportCwc"

    .line 6220
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected getSupportDoorKeySetting(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const-string v0, "isSupportDoorKeySetting"

    .line 6160
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "getSupportDoorKeySetting: mode="

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "isSupportSwitchMedia"

    .line 6171
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "isShowDoorKeySpeech"

    .line 6168
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 6174
    :goto_0
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", result="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 6177
    :cond_3
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", door key not support"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method protected getSupportDoorKnobAutoOpen()I
    .locals 1

    const-string v0, "isSupportDhc"

    .line 6290
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected getSupportMirrorReverseMode()I
    .locals 2

    .line 6237
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "getSupportMirrorReverseMode"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "getCduMirrorReverseMode"

    .line 6238
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getSupportNewSeat(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 4223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 4224
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result v0

    .line 4225
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    if-eq p1, v2, :cond_1

    if-ne p1, v5, :cond_6

    :cond_1
    const-string v3, "isSupportSecRowHor"

    .line 4240
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_2
    if-eq p1, v2, :cond_5

    if-ne p1, v5, :cond_3

    goto :goto_0

    :cond_3
    if-eq p1, v4, :cond_4

    if-ne p1, v3, :cond_6

    :cond_4
    const-string v1, "isSupportPsnSeatVerControl"

    .line 4234
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_5
    :goto_0
    move v1, v2

    .line 4248
    :cond_6
    :goto_1
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportNewSeat, pilot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return v1
.end method

.method protected getSupportNewSeatBackrest(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 4280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 4281
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result v0

    .line 4282
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getDirection(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-eq p1, v4, :cond_1

    if-ne p1, v3, :cond_4

    :cond_1
    const-string v2, "isSupportTrdRowSeatControl"

    .line 4295
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_2
    if-eq p1, v4, :cond_3

    if-ne p1, v3, :cond_4

    :cond_3
    const-string v2, "isSupportRearSeatCtrl"

    .line 4287
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_0
    move v1, v4

    .line 4303
    :cond_4
    :goto_1
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportNewSeatBackrest, pilot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", direction: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v1
.end method

.method protected getSupportNewSeatBackrestPosition(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 4310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 4311
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result v0

    .line 4312
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getDirection(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    :cond_0
    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 4325
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatTiltPos()I

    move-result v1

    goto :goto_0

    .line 4322
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLtSeatTiltPos()I

    move-result v1

    goto :goto_0

    .line 4319
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatTiltPos()I

    move-result v1

    goto :goto_0

    .line 4316
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatTiltPos()I

    move-result v1

    .line 4331
    :cond_5
    :goto_0
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportNewSeatBackrest, pilot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", direction: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return v1
.end method

.method protected getSupportNewSeatPosition(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 4256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 4257
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result v0

    .line 4258
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getDirection(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, v4, :cond_1

    if-ne p1, v3, :cond_4

    .line 4267
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatHorPos()I

    move-result v1

    goto :goto_0

    :cond_2
    if-eq p1, v4, :cond_3

    if-ne p1, v3, :cond_4

    .line 4262
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatHorPos()I

    move-result v1

    .line 4273
    :cond_4
    :goto_0
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportNewSeatPosition, pilot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", direction: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v1
.end method

.method protected getSupportOpenTrunk()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getSupportPsnSeat()I
    .locals 4

    const-string v0, "isSupportPsnSeatControl"

    .line 4206
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "isSupportMsmP"

    if-nez v1, :cond_0

    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4208
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->seatCheckDoorClose()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isDoorClosed(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x2

    return v0

    .line 4210
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->checkPsnSeatOccupied()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnSeatOccupied()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x4

    return v0

    .line 4212
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnTiltMovingSafe()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x5

    return v0

    .line 4214
    :cond_3
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    return v0

    :cond_4
    return v3
.end method

.method protected getSupportSeat()I
    .locals 4

    const-string v0, "isSupportSeatCtrl"

    .line 2811
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "isSupportMsmD"

    if-nez v1, :cond_0

    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 2813
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->seatCheckDoorClose()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isDoorClosed(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x2

    return v0

    .line 2815
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->checkDriverSeatOccupied()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSvcVm:Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;->isDrvSeatOccupied()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x4

    return v0

    .line 2817
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeed()F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    const/4 v0, 0x3

    return v0

    .line 2819
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvTiltMovingSafe()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x5

    return v0

    .line 2821
    :cond_4
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    return v0

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method protected getSupportSeatHeadrest(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 4338
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 4339
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result v0

    .line 4340
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_4

    const/4 v5, 0x5

    if-eq v0, v5, :cond_2

    const/4 v5, 0x6

    if-eq v0, v5, :cond_2

    const/4 v5, 0x7

    if-eq v0, v5, :cond_0

    goto :goto_1

    :cond_0
    if-eq p1, v4, :cond_1

    if-ne p1, v3, :cond_6

    :cond_1
    const-string v3, "isSupportTrdRowMidHeadRest"

    .line 4360
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_2
    if-eq p1, v4, :cond_3

    if-ne p1, v3, :cond_6

    :cond_3
    const-string v3, "isSupportTrdRowHeadRest"

    .line 4353
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_4
    if-eq p1, v2, :cond_5

    const/4 v5, 0x2

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_5

    if-ne p1, v3, :cond_6

    :cond_5
    const-string v3, "isSupportSecRowHeadRest"

    .line 4345
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_0
    move v1, v2

    .line 4368
    :cond_6
    :goto_1
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportSeatHeadrest, pilot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return v1
.end method

.method protected getSupportSeatHeadrestPosition(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 4375
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 4376
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result v0

    .line 4377
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eq v0, v5, :cond_a

    if-eq v0, v4, :cond_6

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    if-eq p1, v5, :cond_1

    if-ne p1, v4, :cond_e

    .line 4405
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowMidSeatHeadVerticalPos()I

    move-result v1

    goto :goto_2

    :cond_2
    if-eq p1, v5, :cond_3

    if-ne p1, v4, :cond_e

    .line 4400
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatHeadVerticalPos()I

    move-result v1

    goto :goto_2

    :cond_4
    if-eq p1, v5, :cond_5

    if-ne p1, v4, :cond_e

    .line 4395
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLtSeatHeadVerticalPos()I

    move-result v1

    goto :goto_2

    :cond_6
    if-eq p1, v3, :cond_9

    if-ne p1, v2, :cond_7

    goto :goto_0

    :cond_7
    if-eq p1, v5, :cond_8

    if-ne p1, v4, :cond_e

    .line 4390
    :cond_8
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatHeadVerPos()I

    move-result v1

    goto :goto_2

    .line 4388
    :cond_9
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatHeadHorPos()I

    move-result v1

    goto :goto_2

    :cond_a
    if-eq p1, v3, :cond_d

    if-ne p1, v2, :cond_b

    goto :goto_1

    :cond_b
    if-eq p1, v5, :cond_c

    if-ne p1, v4, :cond_e

    .line 4383
    :cond_c
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatHeadVerPos()I

    move-result v1

    goto :goto_2

    .line 4381
    :cond_d
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatHeadHorPos()I

    move-result v1

    .line 4411
    :cond_e
    :goto_2
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportSeatHeadrest, pilot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", direction: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return v1
.end method

.method protected getSupportWelcomeMode()I
    .locals 2

    .line 6187
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "getSupportWelcomeMode"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isSupportWelcomeMode"

    .line 6188
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected getSupportWelcomeModeSoundEffect()I
    .locals 2

    .line 6197
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "getSupportWelcomeModeSoundEffect"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isSupportBootSoundEffect"

    .line 6198
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected getTrunkStatus()I
    .locals 4

    .line 3308
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isTrunkClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3309
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrunkStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method protected getUnityPageOpenState(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageUrl"
        }
    .end annotation

    .line 3981
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUnityPageOpenState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "isSupportNapa"

    .line 3982
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3983
    invoke-static {}, Lcom/xiaopeng/carcontrol/direct/ElementDirectManager;->getElementDirect()Lcom/xiaopeng/carcontrol/direct/IElementDirect;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3985
    invoke-interface {v1, p1}, Lcom/xiaopeng/carcontrol/direct/IElementDirect;->convertUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3986
    invoke-interface {v1, p1}, Lcom/xiaopeng/carcontrol/direct/IElementDirect;->checkSupport(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3987
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUnityPageOpenState 0 : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected getVipChairStatus()I
    .locals 1

    const-string v0, "isSupportVipSeat"

    .line 5320
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected getWelcomeModeSoundEffectStatus()I
    .locals 4

    .line 6207
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getBootSoundEffect()I

    move-result v0

    .line 6208
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWelcomeModeSoundEffectStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method protected getWindowStatus()I
    .locals 4

    .line 2667
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowOpened()Z

    move-result v0

    .line 2668
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWindowStatus, isWindowOpen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method protected getWiperInterval()I
    .locals 4

    .line 3898
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getWiperIntervalValue()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    move-result-object v0

    .line 3899
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWiperInterval return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3900
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->toSensitivityBcmCmd()I

    move-result v0

    return v0
.end method

.method protected initExtViewModel(Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "manager"
        }
    .end annotation

    .line 302
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/IXpuViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    return-void
.end method

.method protected isSteeringModeAdjustable()I
    .locals 3

    .line 3846
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeed()F

    move-result v0

    const-string v1, "getEpsSpdThreshold"

    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getFloat(Ljava/lang/String;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    .line 3847
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTorsionBarTorque()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const-string v1, "getEpsTorsionBarThreshold"

    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getFloat(Ljava/lang/String;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "isSupportNgp"

    .line 3849
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isNgpAndLccRuning()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 3851
    :cond_1
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;->isNgpRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const-string v0, "isSupportLcc"

    .line 3853
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;->getLccWorkSt()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne v0, v1, :cond_3

    return v2

    .line 3855
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEpsWarningState()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    return v0

    .line 3858
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getDriveModeValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    move-result-object v0

    .line 3859
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Geek:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    if-ne v1, v0, :cond_5

    const/4 v0, 0x4

    return v0

    .line 3861
    :cond_5
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Xpower:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    if-ne v1, v0, :cond_6

    const/4 v0, 0x5

    return v0

    .line 3863
    :cond_6
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Race:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    if-ne v1, v0, :cond_7

    const/4 v0, 0x6

    return v0

    :cond_7
    const/4 v0, 0x1

    return v0

    :cond_8
    :goto_0
    const/4 v0, 0x2

    return v0
.end method

.method protected isSupportAtmosphere()Z
    .locals 3

    .line 3210
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "isSupportAtmosphere"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "isSupportAtl"

    .line 3211
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isSupportCloseMirror()Z
    .locals 5

    const-string v0, "isSupportMirrorFold"

    .line 2588
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2589
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->getMirrorFoldState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    move-result-object v1

    .line 2590
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportCloseMirror: hasFeature = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2591
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 2590
    invoke-static {v2, v3, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_1

    .line 2592
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Unfolded:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Folded:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method protected isSupportControlChargePort(II)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "chargePort",
            "mode"
        }
    .end annotation

    .line 3318
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportControlChargePort: chargePort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3320
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isChargePortEnable(ZZZ)Z

    move-result p1

    return p1
.end method

.method protected isSupportControlMirror()Z
    .locals 4

    .line 2633
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->getMirrorFoldState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    move-result-object v0

    .line 2634
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportControlMirror: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2635
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Middle:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    if-eq v0, v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method protected isSupportDrivingMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isSupportEnergyRecycle()Z
    .locals 2

    .line 2797
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isEnergyEnable(Z)Z

    move-result v0

    return v0
.end method

.method protected isSupportUnlockTrunk()Z
    .locals 5

    .line 3291
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevel()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3292
    :goto_0
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportUnlockTrunk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method protected isTirePressureNormal()Z
    .locals 1

    .line 3369
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->isTpmsPressureNormal()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$onControlSlidingDoorSet$0$CarControlSpeechModel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "finalLeftCmd"
        }
    .end annotation

    .line 5127
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlLeftSlideDoor(I)V

    return-void
.end method

.method public synthetic lambda$onControlSlidingDoorSet$1$CarControlSpeechModel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "finalRightCmd"
        }
    .end annotation

    .line 5139
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlRightSlideDoor(I)V

    return-void
.end method

.method public synthetic lambda$onLluEffectSet$2$CarControlSpeechModel(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "finalSayHiEffect"
        }
    .end annotation

    .line 5506
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSoundPath(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;)Ljava/lang/String;

    move-result-object p1

    .line 5507
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5508
    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onLluEffectSet$3$CarControlSpeechModel(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "finalSayHiEffect"
        }
    .end annotation

    .line 5513
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->convertSayHiEffect2LluEffect(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluEffectPreview(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    return-void
.end method

.method protected onAtmosphereSpeakerOff()V
    .locals 3

    .line 3248
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onAtmosphereSpeakerOff"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3249
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlSpeakerSwEnabled(Z)V

    return-void
.end method

.method protected onAtmosphereSpeakerOn()V
    .locals 3

    .line 3237
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onAtmosphereSpeakerOn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3238
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlSpeakerSwEnabled(Z)V

    return-void
.end method

.method protected onAvasSayHiDisable()V
    .locals 2

    .line 5550
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onAvasSayHiDisable"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5551
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setAvasSayHiSw(Z)V

    return-void
.end method

.method protected onAvasSayHiEnable()V
    .locals 2

    .line 5542
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onAvasSayHiEnable"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5543
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setAvasSayHiSw(Z)V

    return-void
.end method

.method protected onBackWelcomeModeSet(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 3671
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackWelcomeModeSet, target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3672
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRearSeatWelcomeMode(Z)V

    return-void
.end method

.method protected onBootSoundEffectSet(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 5663
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBootSoundEffectSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5665
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 5680
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->EffectD:Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setBootSoundEffectValue(Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;)V

    goto :goto_0

    .line 5676
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->EffectC:Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setBootSoundEffectValue(Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;)V

    goto :goto_0

    .line 5672
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->EffectB:Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setBootSoundEffectValue(Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;)V

    goto :goto_0

    .line 5668
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->EffectA:Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setBootSoundEffectValue(Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onBootSoundOff()V
    .locals 2

    .line 5653
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onBootSoundOff"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5654
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->Off:Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setBootSoundEffectValue(Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;)V

    return-void
.end method

.method protected onBootSoundOn()V
    .locals 2

    .line 5645
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onBootSoundOn"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5646
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getBootEffectBeforeSw()I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->fromXuiCmd(I)Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setBootSoundEffectValue(Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;)V

    return-void
.end method

.method protected onChargePortControl(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "chargePort",
            "mode"
        }
    .end annotation

    .line 3358
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChargePortControl: chargePort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    const-string v1, "isSingleChargePort"

    .line 3360
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "isChargePortSignalErr"

    .line 3361
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    :cond_1
    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    .line 3365
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    if-nez p2, :cond_3

    move v2, v0

    :cond_3
    invoke-virtual {v1, p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setChargePortUnlock(IZ)V

    return-void
.end method

.method protected onCheckUserBook(Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userBookValue"
        }
    .end annotation

    .line 3215
    sget-object p1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v0, "onCheckUserBook not support"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCloseUserBook()V
    .locals 2

    .line 3223
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onCloseUserBook not support"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onControlComfortableDrivingModeClose(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 5178
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onControlComfortableDrivingModeClose"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5180
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)V

    return-void
.end method

.method protected onControlComfortableDrivingModeOpen(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 5184
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onControlComfortableDrivingModeOpen"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5186
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Comfort:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)V

    return-void
.end method

.method protected onControlLightResume()V
    .locals 2

    .line 3443
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onControlLightResume not support"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onControlScissorLeftDoorOff()V
    .locals 3

    .line 5034
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onControlScissorLeftDoorOff"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5035
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlSdc(ZI)V

    return-void
.end method

.method protected onControlScissorLeftDoorOn()V
    .locals 3

    .line 5024
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onControlScissorLeftDoorOn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5025
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlSdc(ZI)V

    return-void
.end method

.method protected onControlScissorLeftDoorPause()V
    .locals 3

    .line 5044
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onControlScissorLeftDoorPause"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5045
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlSdc(ZI)V

    return-void
.end method

.method protected onControlScissorRightDoorOff()V
    .locals 3

    .line 5039
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onControlScissorRightDoorOff"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5040
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlSdc(ZI)V

    return-void
.end method

.method protected onControlScissorRightDoorOn()V
    .locals 3

    .line 5029
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onControlScissorRightDoorOn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5030
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlSdc(ZI)V

    return-void
.end method

.method protected onControlScissorRightDoorPause()V
    .locals 3

    .line 5049
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onControlScissorRightDoorPause"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5050
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlSdc(ZI)V

    return-void
.end method

.method protected onControlSeatResume()V
    .locals 3

    .line 3447
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "Exit meditation mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3448
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->exitMeditationState()V

    return-void
.end method

.method protected onControlSlidingDoorSet(II)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "mode"
        }
    .end annotation

    .line 5103
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onControlSlidingDoorSet, target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v1, :cond_0

    const-string v5, "onControlSlidingDoorSet, target is invalid"

    .line 5116
    invoke-static {v0, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v1

    :goto_0
    const-wide/16 v6, 0x1f4

    const/4 v8, 0x4

    if-ne p2, v4, :cond_6

    .line 5120
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSlideDoorState()I

    move-result p2

    .line 5121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "controlLeftSlideDoor, current state: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_3

    if-eq p2, v3, :cond_4

    :cond_3
    if-ne p1, v4, :cond_5

    if-ne p2, v8, :cond_5

    .line 5124
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlLeftSlideDoor(I)V

    .line 5126
    new-instance p1, Lcom/xiaopeng/carcontrol/speech/-$$Lambda$CarControlSpeechModel$rvtOCU5LhW-YKoNOphXT5cAagaY;

    invoke-direct {p1, p0, v5}, Lcom/xiaopeng/carcontrol/speech/-$$Lambda$CarControlSpeechModel$rvtOCU5LhW-YKoNOphXT5cAagaY;-><init>(Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;I)V

    invoke-static {v2, p1, v6, v7}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    goto :goto_1

    .line 5129
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1, v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlLeftSlideDoor(I)V

    goto :goto_1

    :cond_6
    if-ne p2, v1, :cond_a

    .line 5132
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSlideDoorState()I

    move-result p2

    .line 5133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "controlRightSlideDoor, current state: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_7

    if-eq p2, v3, :cond_8

    :cond_7
    if-ne p1, v4, :cond_9

    if-ne p2, v8, :cond_9

    .line 5136
    :cond_8
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlRightSlideDoor(I)V

    .line 5138
    new-instance p1, Lcom/xiaopeng/carcontrol/speech/-$$Lambda$CarControlSpeechModel$SUGcxXWU_7K9_n9DmXVhqZ--k7Q;

    invoke-direct {p1, p0, v5}, Lcom/xiaopeng/carcontrol/speech/-$$Lambda$CarControlSpeechModel$SUGcxXWU_7K9_n9DmXVhqZ--k7Q;-><init>(Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;I)V

    invoke-static {v2, p1, v6, v7}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    goto :goto_1

    .line 5142
    :cond_9
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1, v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlRightSlideDoor(I)V

    goto :goto_1

    :cond_a
    const-string p1, "onControlSlidingDoorSet, mode is invalid"

    .line 5145
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected onControlSunShade(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "pos"
        }
    .end annotation

    .line 5309
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onControlSunShade: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p2, :cond_2

    const/16 v0, 0x64

    if-gt p2, v0, :cond_2

    .line 5310
    rem-int/lit8 v0, p2, 0x5

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    rsub-int/lit8 p2, p2, 0x64

    .line 5316
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setSunShadePos(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onControlXpedalOff(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 5172
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onControlXpedalOff"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    move v2, v0

    .line 5174
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)V

    return-void
.end method

.method protected onControlXpedalOn(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 5166
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onControlXpedalOn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    move v2, v0

    .line 5168
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->EcoPlus:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)V

    return-void
.end method

.method protected onControlXpowerOff(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 4880
    sget-object p1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v0, "onControlXpowerOff"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4881
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    return-void
.end method

.method protected onDialogEnd(Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogEndReason"
        }
    .end annotation

    .line 4852
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogEnd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;->reason:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4853
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSpaceCapsuleViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setSpeechStop()V

    return-void
.end method

.method protected onDialogStart(Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wakeupReason"
        }
    .end annotation

    .line 4847
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;->reason:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4848
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSpaceCapsuleViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setSpeechStart()V

    return-void
.end method

.method protected onDoorKeySetting(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 5604
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDoorKeySetting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 5606
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 5617
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->SwitchMedia:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setDoorKeyForCustomerValue(Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;)V

    goto :goto_0

    .line 5614
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->Mute:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setDoorKeyForCustomerValue(Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;)V

    goto :goto_0

    .line 5611
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->Speech:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setDoorKeyForCustomerValue(Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;)V

    goto :goto_0

    .line 5608
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->Disable:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setDoorKeyForCustomerValue(Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onDoorknobAutoOff()V
    .locals 2

    .line 5816
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onDoorknobAutoOff"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5817
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setAutoDoorHandleEnable(Z)V

    return-void
.end method

.method protected onDoorknobAutoOn()V
    .locals 2

    .line 5811
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onDoorknobAutoOn"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5812
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setAutoDoorHandleEnable(Z)V

    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "data",
            "source"
        }
    .end annotation

    .line 307
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "command://control.near.auto.unlock.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v10, 0xf2

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "command://control.blanket.light.welcome.mode.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v10, 0xf1

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "command://control.window.front.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v10, 0xf0

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "command://control.seat.habit.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v10, 0xef

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "command://control.modes.driving.normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v10, 0xee

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "command://control.wireless.charging.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v10, 0xed

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "command://control.light.top.brightness.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v10, 0xec

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "command://control.mirror.rear.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v10, 0xeb

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "command://control.easy.load.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v10, 0xea

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "command://control.modes.steering.soft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v10, 0xe9

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "command://control.psn.seat.move.rear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v10, 0xe8

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "command://control.psn.seat.move.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v10, 0xe7

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "command://control.psn.seat.move.back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v10, 0xe6

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "command://control.modes.steering.sport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v10, 0xe5

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "command://control.door.lock.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v10, 0xe4

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "command://control.rearviewmirror.reverse.down.on.setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v10, 0xe3

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "command://control.shortcutkey.setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v10, 0xe2

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "command://control.light.auto.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v10, 0xe1

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "command://control.xpedal.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v10, 0xe0

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "command://control.xpedal.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v10, 0xdf

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "jarvis.dm.start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v10, 0xde

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "command://control.manual.search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v10, 0xdd

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "command://control.rearviewmirror.reverse.down.off.setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v10, 0xdc

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "command://control.window.left.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v10, 0xdb

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "command://control.new.key.parking.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v10, 0xda

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "command://control.light.atmosphere.speaker.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v10, 0xd9

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "command://control.window.right.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v10, 0xd8

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "command://control.tail.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v10, 0xd7

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "command://control.light.resume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v10, 0xd6

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "command://control.windows.ventilate.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v10, 0xd5

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "command://control.auto.trunk.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v10, 0xd4

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "command://control.trunk.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v10, 0xd3

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "command://control.low.speed.sound.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v10, 0xd2

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "command://control.leave.auto.lock.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v10, 0xd1

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "command://control.psn.welcome.mode.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v10, 0xd0

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "command://control.seat.move.lowest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v10, 0xcf

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "command://control.tail.auto.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v10, 0xce

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "command://control.easy.load.auto.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v10, 0xcd

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "command://charge.alternating.port.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v10, 0xcc

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "command://control.light.low.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v10, 0xcb

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "command://control.light.language.autoplay.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v10, 0xca

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "command://control.leg.movest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v10, 0xc9

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "command://control.seat.move"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v10, 0xc8

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "command://control.leg.lowest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v10, 0xc7

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "command://control.windows.ventilate.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v10, 0xc6

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "command://control.seat.onekey.restore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v10, 0xc5

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "command://control.open.user.book"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v10, 0xc4

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "command://control.comport.brake.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v10, 0xc3

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "command://control.light.atmosphere.color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v10, 0xc2

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "command://control.light.height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v10, 0xc1

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "command://control.suspension.save.position"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v10, 0xc0

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "command://control.xsport.close.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v10, 0xbf

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "command://control.seat.second.left.move"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v10, 0xbe

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "command://control.auto.testself.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v10, 0xbd

    goto/16 :goto_0

    :sswitch_36
    const-string v0, "command://control.light.language.setting.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v10, 0xbc

    goto/16 :goto_0

    :sswitch_37
    const-string v0, "command://control.new.seat.backrest.move"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v10, 0xbb

    goto/16 :goto_0

    :sswitch_38
    const-string v0, "command://control.window.right.rear.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v10, 0xba

    goto/16 :goto_0

    :sswitch_39
    const-string v0, "command://control.light.atmosphere.double.color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v10, 0xb9

    goto/16 :goto_0

    :sswitch_3a
    const-string v0, "command://control.electric.curtain.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v10, 0xb8

    goto/16 :goto_0

    :sswitch_3b
    const-string v0, "command://control.swing.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v10, 0xb7

    goto/16 :goto_0

    :sswitch_3c
    const-string v0, "command://control.modes.driving.new.xsport.dialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/16 v10, 0xb6

    goto/16 :goto_0

    :sswitch_3d
    const-string v0, "command://control.swing.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/16 v10, 0xb5

    goto/16 :goto_0

    :sswitch_3e
    const-string v0, "command://control.seat.move.highest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/16 v10, 0xb4

    goto/16 :goto_0

    :sswitch_3f
    const-string v0, "jarvis.dm.end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/16 v10, 0xb3

    goto/16 :goto_0

    :sswitch_40
    const-string v0, "command://control.window.lock.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto/16 :goto_0

    :cond_40
    const/16 v10, 0xb2

    goto/16 :goto_0

    :sswitch_41
    const-string v0, "command://control.near.auto.unlock.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    goto/16 :goto_0

    :cond_41
    const/16 v10, 0xb1

    goto/16 :goto_0

    :sswitch_42
    const-string v0, "command://control.energy.recycle.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    goto/16 :goto_0

    :cond_42
    const/16 v10, 0xb0

    goto/16 :goto_0

    :sswitch_43
    const-string v0, "command://control.window.right.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    goto/16 :goto_0

    :cond_43
    const/16 v10, 0xaf

    goto/16 :goto_0

    :sswitch_44
    const-string v0, "command://control.steering.assist.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    goto/16 :goto_0

    :cond_44
    const/16 v10, 0xae

    goto/16 :goto_0

    :sswitch_45
    const-string v0, "command://control.park.auto.unlock.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    goto/16 :goto_0

    :cond_45
    const/16 v10, 0xad

    goto/16 :goto_0

    :sswitch_46
    const-string v0, "command://control.welcome.mode.soundeffect.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto/16 :goto_0

    :cond_46
    const/16 v10, 0xac

    goto/16 :goto_0

    :sswitch_47
    const-string v0, "command://control.suspension.welcome.mode.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto/16 :goto_0

    :cond_47
    const/16 v10, 0xab

    goto/16 :goto_0

    :sswitch_48
    const-string v0, "command://control.seat.backrest.move.foremost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto/16 :goto_0

    :cond_48
    const/16 v10, 0xaa

    goto/16 :goto_0

    :sswitch_49
    const-string v0, "command://control.easy.load.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto/16 :goto_0

    :cond_49
    const/16 v10, 0xa9

    goto/16 :goto_0

    :sswitch_4a
    const-string v0, "command://control.child.safety.mode.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    goto/16 :goto_0

    :cond_4a
    const/16 v10, 0xa8

    goto/16 :goto_0

    :sswitch_4b
    const-string v0, "command://control.car.light.welcome.mode.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    goto/16 :goto_0

    :cond_4b
    const/16 v10, 0xa7

    goto/16 :goto_0

    :sswitch_4c
    const-string v0, "command://control.seat.memory.config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4c

    goto/16 :goto_0

    :cond_4c
    const/16 v10, 0xa6

    goto/16 :goto_0

    :sswitch_4d
    const-string v0, "command://control.narrowroad.assist.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    goto/16 :goto_0

    :cond_4d
    const/16 v10, 0xa5

    goto/16 :goto_0

    :sswitch_4e
    const-string v0, "command://control.wiper.slow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    goto/16 :goto_0

    :cond_4e
    const/16 v10, 0xa4

    goto/16 :goto_0

    :sswitch_4f
    const-string v0, "command://control.wiper.high"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    goto/16 :goto_0

    :cond_4f
    const/16 v10, 0xa3

    goto/16 :goto_0

    :sswitch_50
    const-string v0, "command://control.scissor.right.door.pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    goto/16 :goto_0

    :cond_50
    const/16 v10, 0xa2

    goto/16 :goto_0

    :sswitch_51
    const-string v0, "command://control.scissor.left.door.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    goto/16 :goto_0

    :cond_51
    const/16 v10, 0xa1

    goto/16 :goto_0

    :sswitch_52
    const-string v0, "command://control.comfortable.driving.mode.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_52

    goto/16 :goto_0

    :cond_52
    const/16 v10, 0xa0

    goto/16 :goto_0

    :sswitch_53
    const-string v0, "command://control.psn.seat.backrest.move.foremost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    goto/16 :goto_0

    :cond_53
    const/16 v10, 0x9f

    goto/16 :goto_0

    :sswitch_54
    const-string v0, "command://control.light.language.autoplay.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_54

    goto/16 :goto_0

    :cond_54
    const/16 v10, 0x9e

    goto/16 :goto_0

    :sswitch_55
    const-string v0, "command://control.window.left.rear.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_55

    goto/16 :goto_0

    :cond_55
    const/16 v10, 0x9d

    goto/16 :goto_0

    :sswitch_56
    const-string v0, "command://control.electric.curtain.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    goto/16 :goto_0

    :cond_56
    const/16 v10, 0x9c

    goto/16 :goto_0

    :sswitch_57
    const-string v0, "command://control.welcome.mode.soundeffect.setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_57

    goto/16 :goto_0

    :cond_57
    const/16 v10, 0x9b

    goto/16 :goto_0

    :sswitch_58
    const-string v0, "command://control.suspension.auto.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_58

    goto/16 :goto_0

    :cond_58
    const/16 v10, 0x9a

    goto/16 :goto_0

    :sswitch_59
    const-string v0, "command://control.new.seat.headrest.move"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_59

    goto/16 :goto_0

    :cond_59
    const/16 v10, 0x99

    goto/16 :goto_0

    :sswitch_5a
    const-string v0, "command://control.energy.recycle.medium"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5a

    goto/16 :goto_0

    :cond_5a
    const/16 v10, 0x98

    goto/16 :goto_0

    :sswitch_5b
    const-string v0, "command://control.lock.response.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5b

    goto/16 :goto_0

    :cond_5b
    const/16 v10, 0x97

    goto/16 :goto_0

    :sswitch_5c
    const-string v0, "command://control.seat.move.rear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    goto/16 :goto_0

    :cond_5c
    const/16 v10, 0x96

    goto/16 :goto_0

    :sswitch_5d
    const-string v0, "command://control.seat.move.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5d

    goto/16 :goto_0

    :cond_5d
    const/16 v10, 0x95

    goto/16 :goto_0

    :sswitch_5e
    const-string v0, "command://control.seat.move.back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5e

    goto/16 :goto_0

    :cond_5e
    const/16 v10, 0x94

    goto/16 :goto_0

    :sswitch_5f
    const-string v0, "command://control.light.atmosphere.brightness.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    goto/16 :goto_0

    :cond_5f
    const/16 v10, 0x93

    goto/16 :goto_0

    :sswitch_60
    const-string v0, "command://control.comfortable.driving.mode.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    goto/16 :goto_0

    :cond_60
    const/16 v10, 0x92

    goto/16 :goto_0

    :sswitch_61
    const-string v0, "command://control.windows.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    goto/16 :goto_0

    :cond_61
    const/16 v10, 0x91

    goto/16 :goto_0

    :sswitch_62
    const-string v0, "command://control.windows.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_62

    goto/16 :goto_0

    :cond_62
    const/16 v10, 0x90

    goto/16 :goto_0

    :sswitch_63
    const-string v0, "command://control.tail.auto.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_63

    goto/16 :goto_0

    :cond_63
    const/16 v10, 0x8f

    goto/16 :goto_0

    :sswitch_64
    const-string v0, "command://control.psn.seat.move"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_64

    goto/16 :goto_0

    :cond_64
    const/16 v10, 0x8e

    goto/16 :goto_0

    :sswitch_65
    const-string v0, "command://control.tail.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_65

    goto/16 :goto_0

    :cond_65
    const/16 v10, 0x8d

    goto/16 :goto_0

    :sswitch_66
    const-string v0, "command://control.modes.brake.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_66

    goto/16 :goto_0

    :cond_66
    const/16 v10, 0x8c

    goto/16 :goto_0

    :sswitch_67
    const-string v0, "command://control.seat.lumber.control"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_67

    goto/16 :goto_0

    :cond_67
    const/16 v10, 0x8b

    goto/16 :goto_0

    :sswitch_68
    const-string v0, "command://control.modes.driving.crosscountry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_68

    goto/16 :goto_0

    :cond_68
    const/16 v10, 0x8a

    goto/16 :goto_0

    :sswitch_69
    const-string v0, "command://control.suspension.height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_69

    goto/16 :goto_0

    :cond_69
    const/16 v10, 0x89

    goto/16 :goto_0

    :sswitch_6a
    const-string v0, "command://control.window.left.rear.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6a

    goto/16 :goto_0

    :cond_6a
    const/16 v10, 0x88

    goto/16 :goto_0

    :sswitch_6b
    const-string v0, "command://control.show.mode.reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    goto/16 :goto_0

    :cond_6b
    const/16 v10, 0x87

    goto/16 :goto_0

    :sswitch_6c
    const-string v0, "command://control.window.rear.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6c

    goto/16 :goto_0

    :cond_6c
    const/16 v10, 0x86

    goto/16 :goto_0

    :sswitch_6d
    const-string v0, "command://control.seat.move.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6d

    goto/16 :goto_0

    :cond_6d
    const/16 v10, 0x85

    goto/16 :goto_0

    :sswitch_6e
    const-string v0, "command://control.psn.seat.backrest.move.rear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6e

    goto/16 :goto_0

    :cond_6e
    const/16 v10, 0x84

    goto/16 :goto_0

    :sswitch_6f
    const-string v0, "command://control.psn.seat.backrest.move.back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    goto/16 :goto_0

    :cond_6f
    const/16 v10, 0x83

    goto/16 :goto_0

    :sswitch_70
    const-string v0, "command://control.leg.move.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_70

    goto/16 :goto_0

    :cond_70
    const/16 v10, 0x82

    goto/16 :goto_0

    :sswitch_71
    const-string v0, "command://control.auto.logo.light.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_71

    goto/16 :goto_0

    :cond_71
    const/16 v10, 0x81

    goto/16 :goto_0

    :sswitch_72
    const-string v0, "command://control.welcome.mode.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    goto/16 :goto_0

    :cond_72
    const/16 v10, 0x80

    goto/16 :goto_0

    :sswitch_73
    const-string v0, "command://control.window.passenger.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_73

    goto/16 :goto_0

    :cond_73
    const/16 v10, 0x7f

    goto/16 :goto_0

    :sswitch_74
    const-string v0, "command://control.window.front.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_74

    goto/16 :goto_0

    :cond_74
    const/16 v10, 0x7e

    goto/16 :goto_0

    :sswitch_75
    const-string v0, "command://control.new.seat.move"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_75

    goto/16 :goto_0

    :cond_75
    const/16 v10, 0x7d

    goto/16 :goto_0

    :sswitch_76
    const-string v0, "command://control.psn.seat.move.foremost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_76

    goto/16 :goto_0

    :cond_76
    const/16 v10, 0x7c

    goto/16 :goto_0

    :sswitch_77
    const-string v0, "command://control.trunk.unlock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_77

    goto/16 :goto_0

    :cond_77
    const/16 v10, 0x7b

    goto/16 :goto_0

    :sswitch_78
    const-string v0, "command://control.light.language.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_78

    goto/16 :goto_0

    :cond_78
    const/16 v10, 0x7a

    goto/16 :goto_0

    :sswitch_79
    const-string v0, "command://control.wiper.superhigh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_79

    goto/16 :goto_0

    :cond_79
    const/16 v10, 0x79

    goto/16 :goto_0

    :sswitch_7a
    const-string v0, "command://control.light.home.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7a

    goto/16 :goto_0

    :cond_7a
    const/16 v10, 0x78

    goto/16 :goto_0

    :sswitch_7b
    const-string v0, "command://control.seat.restore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7b

    goto/16 :goto_0

    :cond_7b
    const/16 v10, 0x77

    goto/16 :goto_0

    :sswitch_7c
    const-string v0, "command://control.intelligent.high.light.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7c

    goto/16 :goto_0

    :cond_7c
    const/16 v10, 0x76

    goto/16 :goto_0

    :sswitch_7d
    const-string v0, "command://control.modes.driving.new.energy.recycle.dialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7d

    goto/16 :goto_0

    :cond_7d
    const/16 v10, 0x75

    goto/16 :goto_0

    :sswitch_7e
    const-string v0, "command://control.leg.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7e

    goto/16 :goto_0

    :cond_7e
    const/16 v10, 0x74

    goto/16 :goto_0

    :sswitch_7f
    const-string v0, "command://charge.direct.port.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7f

    goto/16 :goto_0

    :cond_7f
    const/16 v10, 0x73

    goto/16 :goto_0

    :sswitch_80
    const-string v0, "command://control.comport.brake.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_80

    goto/16 :goto_0

    :cond_80
    const/16 v10, 0x72

    goto/16 :goto_0

    :sswitch_81
    const-string v0, "command://control.easy.load.auto.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_81

    goto/16 :goto_0

    :cond_81
    const/16 v10, 0x71

    goto/16 :goto_0

    :sswitch_82
    const-string v0, "command://control.modes.steering.normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_82

    goto/16 :goto_0

    :cond_82
    const/16 v10, 0x70

    goto/16 :goto_0

    :sswitch_83
    const-string v0, "command://control.suspension.rigidity.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_83

    goto/16 :goto_0

    :cond_83
    const/16 v10, 0x6f

    goto/16 :goto_0

    :sswitch_84
    const-string v0, "command://control.sliding.door.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_84

    goto/16 :goto_0

    :cond_84
    const/16 v10, 0x6e

    goto/16 :goto_0

    :sswitch_85
    const-string v0, "command://control.seat.second.right.move"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_85

    goto/16 :goto_0

    :cond_85
    const/16 v10, 0x6d

    goto/16 :goto_0

    :sswitch_86
    const-string v0, "command://control.window.driver.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_86

    goto/16 :goto_0

    :cond_86
    const/16 v10, 0x6c

    goto/16 :goto_0

    :sswitch_87
    const-string v0, "command://control.massage.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_87

    goto/16 :goto_0

    :cond_87
    const/16 v10, 0x6b

    goto/16 :goto_0

    :sswitch_88
    const-string v0, "command://control.psn.seat.move.highest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_88

    goto/16 :goto_0

    :cond_88
    const/16 v10, 0x6a

    goto/16 :goto_0

    :sswitch_89
    const-string v0, "command://control.light.atmosphere.change.color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_89

    goto/16 :goto_0

    :cond_89
    const/16 v10, 0x69

    goto/16 :goto_0

    :sswitch_8a
    const-string v0, "command://control.massage.strength.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8a

    goto/16 :goto_0

    :cond_8a
    const/16 v10, 0x68

    goto/16 :goto_0

    :sswitch_8b
    const-string v0, "command://control.narrowroad.assist.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8b

    goto/16 :goto_0

    :cond_8b
    const/16 v10, 0x67

    goto/16 :goto_0

    :sswitch_8c
    const-string v0, "command://control.narrowroad.assist.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8c

    goto/16 :goto_0

    :cond_8c
    const/16 v10, 0x66

    goto/16 :goto_0

    :sswitch_8d
    const-string v0, "command://control.steering.assist.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8d

    goto/16 :goto_0

    :cond_8d
    const/16 v10, 0x65

    goto/16 :goto_0

    :sswitch_8e
    const-string v0, "command://control.light.home.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8e

    goto/16 :goto_0

    :cond_8e
    const/16 v10, 0x64

    goto/16 :goto_0

    :sswitch_8f
    const-string v0, "command://control.light.home.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8f

    goto/16 :goto_0

    :cond_8f
    const/16 v10, 0x63

    goto/16 :goto_0

    :sswitch_90
    const-string v0, "command://control.modes.driving.sport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_90

    goto/16 :goto_0

    :cond_90
    const/16 v10, 0x62

    goto/16 :goto_0

    :sswitch_91
    const-string v0, "command://control.modes.driving.racer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_91

    goto/16 :goto_0

    :cond_91
    const/16 v10, 0x61

    goto/16 :goto_0

    :sswitch_92
    const-string v0, "command://control.auto.trunk.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_92

    goto/16 :goto_0

    :cond_92
    const/16 v10, 0x60

    goto/16 :goto_0

    :sswitch_93
    const-string v0, "command://control.light.language.setting.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_93

    goto/16 :goto_0

    :cond_93
    const/16 v10, 0x5f

    goto/16 :goto_0

    :sswitch_94
    const-string v0, "command://control.doorknob.auto.open.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_94

    goto/16 :goto_0

    :cond_94
    const/16 v10, 0x5e

    goto/16 :goto_0

    :sswitch_95
    const-string v0, "command://control.door.lock.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_95

    goto/16 :goto_0

    :cond_95
    const/16 v10, 0x5d

    goto/16 :goto_0

    :sswitch_96
    const-string v0, "command://system.digital.rear.mirror.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_96

    goto/16 :goto_0

    :cond_96
    const/16 v10, 0x5c

    goto/16 :goto_0

    :sswitch_97
    const-string v0, "command://control.window.lock.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_97

    goto/16 :goto_0

    :cond_97
    const/16 v10, 0x5b

    goto/16 :goto_0

    :sswitch_98
    const-string v0, "command://control.energy.recycle.high"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_98

    goto/16 :goto_0

    :cond_98
    const/16 v10, 0x5a

    goto/16 :goto_0

    :sswitch_99
    const-string v0, "command://control.energy.recycle.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_99

    goto/16 :goto_0

    :cond_99
    const/16 v10, 0x59

    goto/16 :goto_0

    :sswitch_9a
    const-string v0, "command://control.trunk.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9a

    goto/16 :goto_0

    :cond_9a
    const/16 v10, 0x58

    goto/16 :goto_0

    :sswitch_9b
    const-string v0, "command://charge.alternating.port.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9b

    goto/16 :goto_0

    :cond_9b
    const/16 v10, 0x57

    goto/16 :goto_0

    :sswitch_9c
    const-string v0, "command://control.window.driver.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9c

    goto/16 :goto_0

    :cond_9c
    const/16 v10, 0x56

    goto/16 :goto_0

    :sswitch_9d
    const-string v0, "command://control.wiper.speed.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9d

    goto/16 :goto_0

    :cond_9d
    const/16 v10, 0x55

    goto/16 :goto_0

    :sswitch_9e
    const-string v0, "command://control.scissor.left.door.pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9e

    goto/16 :goto_0

    :cond_9e
    const/16 v10, 0x54

    goto/16 :goto_0

    :sswitch_9f
    const-string v0, "command://control.psn.seat.backrest.move.forward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9f

    goto/16 :goto_0

    :cond_9f
    const/16 v10, 0x53

    goto/16 :goto_0

    :sswitch_a0
    const-string v0, "command://control.light.low.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a0

    goto/16 :goto_0

    :cond_a0
    const/16 v10, 0x52

    goto/16 :goto_0

    :sswitch_a1
    const-string v0, "command://control.seat.move.forward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a1

    goto/16 :goto_0

    :cond_a1
    const/16 v10, 0x51

    goto/16 :goto_0

    :sswitch_a2
    const-string v0, "command://control.modes.driving.conservation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a2

    goto/16 :goto_0

    :cond_a2
    const/16 v10, 0x50

    goto/16 :goto_0

    :sswitch_a3
    const-string v0, "command://control.light.position.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a3

    goto/16 :goto_0

    :cond_a3
    const/16 v10, 0x4f

    goto/16 :goto_0

    :sswitch_a4
    const-string v0, "command://control.suspension.auto.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a4

    goto/16 :goto_0

    :cond_a4
    const/16 v10, 0x4e

    goto/16 :goto_0

    :sswitch_a5
    const-string v0, "command://control.high.auto.close.windows.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a5

    goto/16 :goto_0

    :cond_a5
    const/16 v10, 0x4d

    goto/16 :goto_0

    :sswitch_a6
    const-string v0, "command://control.light.position.mode.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a6

    goto/16 :goto_0

    :cond_a6
    const/16 v10, 0x4c

    goto/16 :goto_0

    :sswitch_a7
    const-string v0, "command://control.light.atmosphere.brightness.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a7

    goto/16 :goto_0

    :cond_a7
    const/16 v10, 0x4b

    goto/16 :goto_0

    :sswitch_a8
    const-string v0, "command://control.light.atmosphere.brightness.min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a8

    goto/16 :goto_0

    :cond_a8
    const/16 v10, 0x4a

    goto/16 :goto_0

    :sswitch_a9
    const-string v0, "command://control.light.atmosphere.brightness.max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a9

    goto/16 :goto_0

    :cond_a9
    const/16 v10, 0x49

    goto/16 :goto_0

    :sswitch_aa
    const-string v0, "command://control.window.rear.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_aa

    goto/16 :goto_0

    :cond_aa
    const/16 v10, 0x48

    goto/16 :goto_0

    :sswitch_ab
    const-string v0, "command://control.auto.logo.light.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ab

    goto/16 :goto_0

    :cond_ab
    const/16 v10, 0x47

    goto/16 :goto_0

    :sswitch_ac
    const-string v0, "command://control.modes.driving.individual"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ac

    goto/16 :goto_0

    :cond_ac
    const/16 v10, 0x46

    goto/16 :goto_0

    :sswitch_ad
    const-string v0, "command://system.digital.rear.mirror.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ad

    goto/16 :goto_0

    :cond_ad
    const/16 v10, 0x45

    goto/16 :goto_0

    :sswitch_ae
    const-string v0, "command://control.massage.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ae

    goto/16 :goto_0

    :cond_ae
    const/16 v10, 0x44

    goto/16 :goto_0

    :sswitch_af
    const-string v0, "command://control.seat.mode.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_af

    goto/16 :goto_0

    :cond_af
    const/16 v10, 0x43

    goto/16 :goto_0

    :sswitch_b0
    const-string v0, "command://control.intelligent.high.light.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b0

    goto/16 :goto_0

    :cond_b0
    const/16 v10, 0x42

    goto/16 :goto_0

    :sswitch_b1
    const-string v0, "command://control.window.left.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b1

    goto/16 :goto_0

    :cond_b1
    const/16 v10, 0x41

    goto/16 :goto_0

    :sswitch_b2
    const-string v0, "command://control.child.safety.mode.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b2

    goto/16 :goto_0

    :cond_b2
    const/16 v10, 0x40

    goto/16 :goto_0

    :sswitch_b3
    const-string v0, "command://control.psn.seat.move.lowest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b3

    goto/16 :goto_0

    :cond_b3
    const/16 v10, 0x3f

    goto/16 :goto_0

    :sswitch_b4
    const-string v0, "command://control.child.safety.locks.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b4

    goto/16 :goto_0

    :cond_b4
    const/16 v10, 0x3e

    goto/16 :goto_0

    :sswitch_b5
    const-string v0, "command://control.scissor.right.door.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b5

    goto/16 :goto_0

    :cond_b5
    const/16 v10, 0x3d

    goto/16 :goto_0

    :sswitch_b6
    const-string v0, "command://control.seat.recovery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b6

    goto/16 :goto_0

    :cond_b6
    const/16 v10, 0x3c

    goto/16 :goto_0

    :sswitch_b7
    const-string v0, "command://control.window.right.rear.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b7

    goto/16 :goto_0

    :cond_b7
    const/16 v10, 0x3b

    goto/16 :goto_0

    :sswitch_b8
    const-string v0, "command://control.doorknob.auto.open.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b8

    goto/16 :goto_0

    :cond_b8
    const/16 v10, 0x3a

    goto/16 :goto_0

    :sswitch_b9
    const-string v0, "command://control.close.user.book"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b9

    goto/16 :goto_0

    :cond_b9
    const/16 v10, 0x39

    goto/16 :goto_0

    :sswitch_ba
    const-string v0, "command://control.seat.backrest.move.rear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ba

    goto/16 :goto_0

    :cond_ba
    const/16 v10, 0x38

    goto/16 :goto_0

    :sswitch_bb
    const-string v0, "command://control.seat.backrest.move.back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bb

    goto/16 :goto_0

    :cond_bb
    const/16 v10, 0x37

    goto/16 :goto_0

    :sswitch_bc
    const-string v0, "command://control.low.volume.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bc

    goto/16 :goto_0

    :cond_bc
    const/16 v10, 0x36

    goto/16 :goto_0

    :sswitch_bd
    const-string v0, "command://control.new.key.parking.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bd

    goto/16 :goto_0

    :cond_bd
    const/16 v10, 0x35

    goto/16 :goto_0

    :sswitch_be
    const-string v0, "command://control.child.safety.locks.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_be

    goto/16 :goto_0

    :cond_be
    const/16 v10, 0x34

    goto/16 :goto_0

    :sswitch_bf
    const-string v0, "command://control.trunk.angle.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bf

    goto/16 :goto_0

    :cond_bf
    const/16 v10, 0x33

    goto/16 :goto_0

    :sswitch_c0
    const-string v0, "command://control.wiper.medium"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c0

    goto/16 :goto_0

    :cond_c0
    const/16 v10, 0x32

    goto/16 :goto_0

    :sswitch_c1
    const-string v0, "command://control.light.atmosphere.color.switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c1

    goto/16 :goto_0

    :cond_c1
    const/16 v10, 0x31

    goto/16 :goto_0

    :sswitch_c2
    const-string v0, "command://control.scissor.right.door.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c2

    goto/16 :goto_0

    :cond_c2
    const/16 v10, 0x30

    goto/16 :goto_0

    :sswitch_c3
    const-string v0, "command://control.park.auto.unlock.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c3

    goto/16 :goto_0

    :cond_c3
    const/16 v10, 0x2f

    goto/16 :goto_0

    :sswitch_c4
    const-string v0, "command://control.back.welcome.mode.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c4

    goto/16 :goto_0

    :cond_c4
    const/16 v10, 0x2e

    goto/16 :goto_0

    :sswitch_c5
    const-string v0, "command://control.leg.move"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c5

    goto/16 :goto_0

    :cond_c5
    const/16 v10, 0x2d

    goto/16 :goto_0

    :sswitch_c6
    const-string v0, "command://control.leg.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c6

    goto/16 :goto_0

    :cond_c6
    const/16 v10, 0x2c

    goto/16 :goto_0

    :sswitch_c7
    const-string v0, "command://control.rear.mist.light.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c7

    goto/16 :goto_0

    :cond_c7
    const/16 v10, 0x2b

    goto/16 :goto_0

    :sswitch_c8
    const-string v0, "command://control.light.atmosphere.brightness.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c8

    goto/16 :goto_0

    :cond_c8
    const/16 v10, 0x2a

    goto/16 :goto_0

    :sswitch_c9
    const-string v0, "command://control.welcome.mode.soundeffect.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c9

    goto/16 :goto_0

    :cond_c9
    const/16 v10, 0x29

    goto/16 :goto_0

    :sswitch_ca
    const-string v0, "command://control.rear.mist.light.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ca

    goto/16 :goto_0

    :cond_ca
    const/16 v10, 0x28

    goto/16 :goto_0

    :sswitch_cb
    const-string v0, "command://control.light.atmosphere.mode.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cb

    goto/16 :goto_0

    :cond_cb
    const/16 v10, 0x27

    goto/16 :goto_0

    :sswitch_cc
    const-string v0, "command://control.light.language.playtogether.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cc

    goto/16 :goto_0

    :cond_cc
    const/16 v10, 0x26

    goto/16 :goto_0

    :sswitch_cd
    const-string v0, "command://control.light.language.setting.preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cd

    goto/16 :goto_0

    :cond_cd
    const/16 v10, 0x25

    goto/16 :goto_0

    :sswitch_ce
    const-string v0, "command://control.wireless.charging.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ce

    goto/16 :goto_0

    :cond_ce
    const/16 v10, 0x24

    goto/16 :goto_0

    :sswitch_cf
    const-string v0, "command://control.mirror.rear.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cf

    goto/16 :goto_0

    :cond_cf
    const/16 v10, 0x23

    goto/16 :goto_0

    :sswitch_d0
    const-string v0, "command://control.light.auto.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d0

    goto/16 :goto_0

    :cond_d0
    const/16 v10, 0x22

    goto/16 :goto_0

    :sswitch_d1
    const-string v0, "command://control.swing.strength.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d1

    goto/16 :goto_0

    :cond_d1
    const/16 v10, 0x21

    goto/16 :goto_0

    :sswitch_d2
    const-string v0, "command://control.new.key.parking.enhanced.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d2

    goto/16 :goto_0

    :cond_d2
    const/16 v10, 0x20

    goto/16 :goto_0

    :sswitch_d3
    const-string v0, "command://control.leave.auto.lock.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d3

    goto/16 :goto_0

    :cond_d3
    const/16 v10, 0x1f

    goto/16 :goto_0

    :sswitch_d4
    const-string v0, "command://control.light.language.setting.effect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d4

    goto/16 :goto_0

    :cond_d4
    const/16 v10, 0x1e

    goto/16 :goto_0

    :sswitch_d5
    const-string v0, "command://control.seat.backrest.move.forward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d5

    goto/16 :goto_0

    :cond_d5
    const/16 v10, 0x1d

    goto/16 :goto_0

    :sswitch_d6
    const-string v0, "command://control.welcome.mode.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d6

    goto/16 :goto_0

    :cond_d6
    const/16 v10, 0x1c

    goto/16 :goto_0

    :sswitch_d7
    const-string v0, "command://control.psn.seat.move.forward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d7

    goto/16 :goto_0

    :cond_d7
    const/16 v10, 0x1b

    goto/16 :goto_0

    :sswitch_d8
    const-string v0, "command://control.seat.resume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d8

    goto/16 :goto_0

    :cond_d8
    const/16 v10, 0x1a

    goto/16 :goto_0

    :sswitch_d9
    const-string v0, "command://control.light.atmosphere.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d9

    goto/16 :goto_0

    :cond_d9
    const/16 v10, 0x19

    goto/16 :goto_0

    :sswitch_da
    const-string v0, "command://control.light.atmosphere.speaker.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_da

    goto/16 :goto_0

    :cond_da
    const/16 v10, 0x18

    goto/16 :goto_0

    :sswitch_db
    const-string v0, "command://control.seat.move.foremost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_db

    goto/16 :goto_0

    :cond_db
    const/16 v10, 0x17

    goto/16 :goto_0

    :sswitch_dc
    const-string v0, "command://control.waist.move"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_dc

    goto/16 :goto_0

    :cond_dc
    const/16 v10, 0x16

    goto/16 :goto_0

    :sswitch_dd
    const-string v0, "command://control.xkey.setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_dd

    goto/16 :goto_0

    :cond_dd
    const/16 v10, 0x15

    goto/16 :goto_0

    :sswitch_de
    const-string v0, "command://control.light.language.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_de

    goto/16 :goto_0

    :cond_de
    const/16 v10, 0x14

    goto/16 :goto_0

    :sswitch_df
    const-string v0, "command://control.energy.recycle.low"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_df

    goto/16 :goto_0

    :cond_df
    const/16 v10, 0x13

    goto/16 :goto_0

    :sswitch_e0
    const-string v0, "command://control.query.tire.pressure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e0

    goto/16 :goto_0

    :cond_e0
    const/16 v10, 0x12

    goto/16 :goto_0

    :sswitch_e1
    const-string v0, "command://control.low.volume.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e1

    goto/16 :goto_0

    :cond_e1
    const/16 v10, 0x11

    goto/16 :goto_0

    :sswitch_e2
    const-string v0, "command://control.cushion.move.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e2

    goto/16 :goto_0

    :cond_e2
    const/16 v10, 0x10

    goto/16 :goto_0

    :sswitch_e3
    const-string v0, "command://control.light.atmosphere.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e3

    goto/16 :goto_0

    :cond_e3
    const/16 v10, 0xf

    goto/16 :goto_0

    :sswitch_e4
    const-string v0, "command://control.light.language.playtogether.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e4

    goto/16 :goto_0

    :cond_e4
    const/16 v10, 0xe

    goto/16 :goto_0

    :sswitch_e5
    const-string v0, "command://control.scissor.left.door.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e5

    goto/16 :goto_0

    :cond_e5
    const/16 v10, 0xd

    goto/16 :goto_0

    :sswitch_e6
    const-string v0, "command://control.wiper.speed.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e6

    goto/16 :goto_0

    :cond_e6
    const/16 v10, 0xc

    goto/16 :goto_0

    :sswitch_e7
    const-string v0, "command://control.leg.highest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e7

    goto/16 :goto_0

    :cond_e7
    const/16 v10, 0xb

    goto/16 :goto_0

    :sswitch_e8
    const-string v0, "command://control.auto.testself.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e8

    goto/16 :goto_0

    :cond_e8
    const/16 v10, 0xa

    goto/16 :goto_0

    :sswitch_e9
    const-string v0, "command://control.light.position.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e9

    goto/16 :goto_0

    :cond_e9
    const/16 v10, 0x9

    goto/16 :goto_0

    :sswitch_ea
    const-string v0, "command://control.modes.driving.comfort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ea

    goto/16 :goto_0

    :cond_ea
    move v10, v1

    goto/16 :goto_0

    :sswitch_eb
    const-string v0, "command://control.mirror.rear.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_eb

    goto/16 :goto_0

    :cond_eb
    move v10, v2

    goto :goto_0

    :sswitch_ec
    const-string v0, "command://charge.direct.port.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ec

    goto :goto_0

    :cond_ec
    move v10, v3

    goto :goto_0

    :sswitch_ed
    const-string v0, "command://control.light.top.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ed

    goto :goto_0

    :cond_ed
    move v10, v4

    goto :goto_0

    :sswitch_ee
    const-string v0, "command://control.seat.adjust"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ee

    goto :goto_0

    :cond_ee
    move v10, v5

    goto :goto_0

    :sswitch_ef
    const-string v0, "command://control.psn.welcome.mode.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ef

    goto :goto_0

    :cond_ef
    move v10, v6

    goto :goto_0

    :sswitch_f0
    const-string v0, "command://control.window.passenger.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f0

    goto :goto_0

    :cond_f0
    move v10, v7

    goto :goto_0

    :sswitch_f1
    const-string v0, "command://control.high.auto.close.windows.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f1

    goto :goto_0

    :cond_f1
    move v10, v9

    goto :goto_0

    :sswitch_f2
    const-string v0, "command://control.psn.seat.move.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f2

    goto :goto_0

    :cond_f2
    move v10, v8

    :goto_0
    packed-switch v10, :pswitch_data_0

    goto/16 :goto_1

    .line 1007
    :pswitch_0
    invoke-direct {p0, v9}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onNearAutoUnlockControl(Z)V

    goto/16 :goto_1

    .line 807
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onBlanketLightWelcomeModeSet(I)V

    goto/16 :goto_1

    .line 438
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPercent(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v2, v8, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWindowsControl(III)V

    goto/16 :goto_1

    .line 944
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getNum(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSeatHabitSet(II)V

    goto/16 :goto_1

    .line 387
    :pswitch_4
    invoke-virtual {p0, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onModesDrivingNormal(I)V

    goto/16 :goto_1

    .line 816
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p3, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onsCwcSwOff(II)V

    goto/16 :goto_1

    .line 901
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightTopBrightnessSet(II)V

    goto/16 :goto_1

    .line 525
    :pswitch_7
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onMirrorRearSet()V

    goto/16 :goto_1

    .line 931
    :pswitch_8
    invoke-direct {p0, v8}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onEasyLoadEnable(Z)V

    goto/16 :goto_1

    .line 402
    :pswitch_9
    invoke-direct {p0, v9}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setSteeringMode(I)I

    goto/16 :goto_1

    .line 651
    :pswitch_a
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onPsnSeatMoveRear()V

    goto/16 :goto_1

    .line 630
    :pswitch_b
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onPsnSeatMoveDown(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 639
    :pswitch_c
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onPsnSeatMoveBack(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 408
    :pswitch_d
    invoke-direct {p0, v6}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setSteeringMode(I)I

    goto/16 :goto_1

    .line 953
    :pswitch_e
    invoke-direct {p0, v9}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onDoorLockEnable(Z)V

    goto/16 :goto_1

    .line 819
    :pswitch_f
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSetReverseMirrorModeOn(I)V

    goto/16 :goto_1

    .line 783
    :pswitch_10
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onDoorKeySetting(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 333
    :pswitch_11
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightAutoOff()V

    goto/16 :goto_1

    .line 687
    :pswitch_12
    invoke-virtual {p0, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onControlXpedalOn(I)V

    goto/16 :goto_1

    .line 690
    :pswitch_13
    invoke-virtual {p0, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onControlXpedalOff(I)V

    goto/16 :goto_1

    .line 744
    :pswitch_14
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onDialogStart(Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;)V

    goto/16 :goto_1

    .line 741
    :pswitch_15
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onCheckUserBook(Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;)V

    goto/16 :goto_1

    .line 822
    :pswitch_16
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSetReverseMirrorModeOff(I)V

    goto/16 :goto_1

    .line 552
    :pswitch_17
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPercent(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v5, v8, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWindowsControl(III)V

    goto/16 :goto_1

    .line 885
    :pswitch_18
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onControlNewKeyParkingOn()V

    goto/16 :goto_1

    .line 519
    :pswitch_19
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onAtmosphereSpeakerOn()V

    goto/16 :goto_1

    .line 555
    :pswitch_1a
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPercent(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v4, v9, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWindowsControl(III)V

    goto/16 :goto_1

    .line 916
    :pswitch_1b
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onArsUnfold()V

    goto/16 :goto_1

    .line 498
    :pswitch_1c
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onControlLightResume()V

    goto/16 :goto_1

    .line 378
    :pswitch_1d
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWindowsVentilateOff()V

    goto/16 :goto_1

    .line 986
    :pswitch_1e
    invoke-direct {p0, v9}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onAutoTrunkControl(Z)V

    goto/16 :goto_1

    .line 351
    :pswitch_1f
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onTrunkOpen()V

    goto/16 :goto_1

    .line 1025
    :pswitch_20
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLowSpeedSoundSet(I)V

    goto/16 :goto_1

    .line 1013
    :pswitch_21
    invoke-direct {p0, v9}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLeaveAutoLocControl(Z)V

    goto/16 :goto_1

    .line 801
    :pswitch_22
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onPsnWelcomeModeOn()V

    goto/16 :goto_1

    .line 459
    :pswitch_23
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSeatMoveLowest()V

    goto/16 :goto_1

    .line 922
    :pswitch_24
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onArsModeAutoOn()V

    goto/16 :goto_1

    .line 938
    :pswitch_25
    invoke-direct {p0, v8}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onEasyLoadAutoEnable(Z)V

    goto/16 :goto_1

    .line 600
    :pswitch_26
    invoke-virtual {p0, v8, v8}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onChargePortControl(II)V

    goto/16 :goto_1

    .line 321
    :pswitch_27
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightLowOn()V

    goto/16 :goto_1

    .line 765
    :pswitch_28
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSayHiDisable()V

    goto/16 :goto_1

    .line 582
    :pswitch_29
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getDirection(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLegMovest(II)V

    goto/16 :goto_1

    .line 657
    :pswitch_2a
    invoke-direct {p0, v9, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSeatMove(ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 570
    :pswitch_2b
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLegLowest()V

    goto/16 :goto_1

    .line 375
    :pswitch_2c
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWindowsVentilateOn()V

    goto/16 :goto_1

    .line 675
    :pswitch_2d
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSeatOneKeyRestore(I)V

    goto/16 :goto_1

    .line 735
    :pswitch_2e
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onOpenUserBook()V

    goto/16 :goto_1

    .line 998
    :pswitch_2f
    invoke-direct {p0, v9}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onEspCstSet(Z)V

    goto/16 :goto_1

    .line 606
    :pswitch_30
    new-instance p1, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;

    invoke-direct {p1, p2}, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightAtmosphereColor(Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;I)V

    goto/16 :goto_1

    .line 336
    :pswitch_31
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSetLightHeight(II)V

    goto/16 :goto_1

    .line 840
    :pswitch_32
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSaveSuspensionPosition()V

    goto/16 :goto_1

    .line 693
    :pswitch_33
    invoke-virtual {p0, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onControlXpowerOff(I)V

    goto/16 :goto_1

    .line 681
    :pswitch_34
    invoke-direct {p0, v9, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSecondRowSeatMode(ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 959
    :pswitch_35
    invoke-direct {p0, v9}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onAutoSelfCheckSet(Z)V

    goto/16 :goto_1

    .line 750
    :pswitch_36
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLluEffectPlayEnable(I)V

    goto/16 :goto_1

    .line 666
    :pswitch_37
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onNewSeatBackrestMove(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 426
    :pswitch_38
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPercent(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, v8, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWindowsControl(III)V

    goto/16 :goto_1

    .line 609
    :pswitch_39
    new-instance p1, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;

    invoke-direct {p1, p2}, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightAtmosphereDualColor(Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;I)V

    goto/16 :goto_1

    .line 720
    :pswitch_3a
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPercent(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v9, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onControlSunShade(II)V

    goto/16 :goto_1

    .line 873
    :pswitch_3b
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSwingOff(I)V

    goto/16 :goto_1

    .line 1034
    :pswitch_3c
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getState(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setXSportDrivingModeDialogStateChange(II)V

    goto/16 :goto_1

    .line 870
    :pswitch_3d
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSwingOn(II)V

    goto/16 :goto_1

    .line 456
    :pswitch_3e
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSeatMoveHighest()V

    goto/16 :goto_1

    .line 747
    :pswitch_3f
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onDialogEnd(Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;)V

    goto/16 :goto_1

    .line 950
    :pswitch_40
    invoke-direct {p0, v8}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWindowLockEnable(Z)V

    goto/16 :goto_1

    .line 1010
    :pswitch_41
    invoke-direct {p0, v8}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onNearAutoUnlockControl(Z)V

    goto/16 :goto_1

    .line 420
    :pswitch_42
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->High:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->toVcuRecycleCmd()I

    move-result p1

    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setEnergyRecycleGrade(II)I

    goto/16 :goto_1

    .line 558
    :pswitch_43
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPercent(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v4, v8, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWindowsControl(III)V

    goto/16 :goto_1

    .line 971
    :pswitch_44
    invoke-direct {p0, v9}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onTurnAssistControl(Z)V

    goto/16 :goto_1

    .line 831
    :pswitch_45
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onParkAutoUnlockOn()V

    goto/16 :goto_1

    .line 792
    :pswitch_46
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onBootSoundOn()V

    goto/16 :goto_1

    .line 882
    :pswitch_47
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSuspensionWelcomeModeSet(I)V

    goto/16 :goto_1

    .line 483
    :pswitch_48
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSeatBackrestForemost()V

    goto/16 :goto_1

    .line 846
    :pswitch_49
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onChildSafetyModeOff()V

    goto/16 :goto_1

    .line 810
    :pswitch_4a
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onCarLightWelcomeModeSet(I)V

    goto/16 :goto_1

    .line 678
    :pswitch_4b
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSeatMemoryConfig(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 977
    :pswitch_4c
    invoke-direct {p0, v9}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onNraAssistControl(Z)V

    goto/16 :goto_1

    .line 534
    :pswitch_4d
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWiperSlow()V

    goto/16 :goto_1

    .line 537
    :pswitch_4e
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWiperHigh()V

    goto/16 :goto_1

    .line 711
    :pswitch_4f
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onControlScissorRightDoorPause()V

    goto/16 :goto_1

    .line 696
    :pswitch_50
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onControlScissorLeftDoorOn()V

    goto/16 :goto_1

    .line 726
    :pswitch_51
    invoke-virtual {p0, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onControlComfortableDrivingModeClose(I)V

    goto/16 :goto_1

    .line 492
    :pswitch_52
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onPsnSeatBackrestForemost()V

    goto/16 :goto_1

    .line 762
    :pswitch_53
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSayHiEnable()V

    goto/16 :goto_1

    .line 435
    :pswitch_54
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPercent(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v7, v9, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWindowsControl(III)V

    goto/16 :goto_1

    .line 717
    :pswitch_55
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPercent(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v8, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onControlSunShade(II)V

    goto/16 :goto_1

    .line 798
    :pswitch_56
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onBootSoundEffectSet(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 855
    :pswitch_57
    invoke-virtual {p0, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSuspensionAutoOn(I)V

    goto/16 :goto_1

    .line 669
    :pswitch_58
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onNewSeatHeadrestMove(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 417
    :pswitch_59
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->Middle:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->toVcuRecycleCmd()I

    move-result p1

    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setEnergyRecycleGrade(II)I

    goto/16 :goto_1

    .line 1004
    :pswitch_5a
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getValue(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLockResponseSet(II)V

    goto/16 :goto_1

    .line 468
    :pswitch_5b
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSeatMoveRear()V

    goto/16 :goto_1

    .line 453
    :pswitch_5c
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSeatMoveDown(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 462
    :pswitch_5d
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSeatMoveBack(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 618
    :pswitch_5e
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightAtmosphereBrightnessDown()V

    goto/16 :goto_1

    .line 723
    :pswitch_5f
    invoke-virtual {p0, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onControlComfortableDrivingModeOpen(I)V

    goto/16 :goto_1

    .line 369
    :pswitch_60
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPercent(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v3, v8, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWindowsControl(III)V

    goto/16 :goto_1

    .line 366
    :pswitch_61
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPercent(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v3, v9, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWindowsControl(III)V

    goto/16 :goto_1

    .line 925
    :pswitch_62
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onArsModeAutoOff()V

    .line 927
    :pswitch_63
    invoke-direct {p0, v9}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onEasyLoadEnable(Z)V

    goto/16 :goto_1

    .line 660
    :pswitch_64
    invoke-direct {p0, v8, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSeatMove(ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 919
    :pswitch_65
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onArsFold()V

    goto/16 :goto_1

    .line 995
    :pswitch_66
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setEspBpfMode(I)I

    goto/16 :goto_1

    .line 913
    :pswitch_67
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSeatLumberControl(II)V

    goto/16 :goto_1

    .line 396
    :pswitch_68
    invoke-direct {p0, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onModesDrivingCrosscountry(I)V

    goto/16 :goto_1

    .line 837
    :pswitch_69
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setAsHeight(II)I

    goto/16 :goto_1

    .line 432
    :pswitch_6a
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPercent(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v7, v8, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWindowsControl(III)V

    goto/16 :goto_1

    .line 941
    :pswitch_6b
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onShowModeReset()V

    goto/16 :goto_1

    .line 447
    :pswitch_6c
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPercent(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v1, v9, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWindowsControl(III)V

    goto/16 :goto_1

    .line 450
    :pswitch_6d
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSeatMoveUp(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 489
    :pswitch_6e
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onPsnSeatBackrestRear()V

    goto/16 :goto_1

    .line 633
    :pswitch_6f
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onPsnSeatBackrestBack(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 576
    :pswitch_70
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLegMoveSet(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 968
    :pswitch_71
    invoke-direct {p0, v8}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLogoLightControl(Z)V

    goto/16 :goto_1

    .line 789
    :pswitch_72
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWelcomeModeOff()V

    goto/16 :goto_1

    .line 360
    :pswitch_73
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPercent(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v9, v9, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWindowsControl(III)V

    goto/16 :goto_1

    .line 441
    :pswitch_74
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPercent(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v2, v9, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWindowsControl(III)V

    goto/16 :goto_1

    .line 663
    :pswitch_75
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onNewSeatMove(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 654
    :pswitch_76
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onPsnSeatMoveForemost()V

    goto/16 :goto_1

    .line 546
    :pswitch_77
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onTrunkUnlock()V

    goto/16 :goto_1

    .line 732
    :pswitch_78
    invoke-virtual {p0, v8}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setLluSw(Z)V

    goto/16 :goto_1

    .line 543
    :pswitch_79
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWiperSuperhigh()V

    goto/16 :goto_1

    .line 312
    :pswitch_7a
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightHomeOn()V

    goto/16 :goto_1

    .line 585
    :pswitch_7b
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSeatRestore()V

    goto/16 :goto_1

    .line 774
    :pswitch_7c
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onIhbOn()V

    goto/16 :goto_1

    .line 1037
    :pswitch_7d
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getState(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setEnergyRecycleDialogStateChange(I)V

    goto/16 :goto_1

    .line 561
    :pswitch_7e
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLegUp()V

    goto/16 :goto_1

    .line 594
    :pswitch_7f
    invoke-virtual {p0, v9, v9}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onChargePortControl(II)V

    goto/16 :goto_1

    .line 1001
    :pswitch_80
    invoke-direct {p0, v8}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onEspCstSet(Z)V

    goto/16 :goto_1

    .line 935
    :pswitch_81
    invoke-direct {p0, v9}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onEasyLoadAutoEnable(Z)V

    goto/16 :goto_1

    .line 405
    :pswitch_82
    invoke-direct {p0, v7}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setSteeringMode(I)I

    goto/16 :goto_1

    .line 910
    :pswitch_83
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSuspensionRigiditySet(I)V

    goto/16 :goto_1

    .line 714
    :pswitch_84
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onControlSlidingDoorSet(II)V

    goto/16 :goto_1

    .line 684
    :pswitch_85
    invoke-direct {p0, v8, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSecondRowSeatMode(ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 357
    :pswitch_86
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPercent(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v8, v8, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWindowsControl(III)V

    goto/16 :goto_1

    .line 861
    :pswitch_87
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onMassageOn(II)V

    goto/16 :goto_1

    .line 645
    :pswitch_88
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onPsnSeatMoveHighest()V

    goto/16 :goto_1

    .line 516
    :pswitch_89
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightAtmosphereColorChange(I)V

    goto/16 :goto_1

    .line 867
    :pswitch_8a
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onMassageStrengthSet(II)V

    goto/16 :goto_1

    .line 983
    :pswitch_8b
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onNarrowroadAssistSet(I)V

    goto/16 :goto_1

    .line 980
    :pswitch_8c
    invoke-direct {p0, v8}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onNraAssistControl(Z)V

    goto/16 :goto_1

    .line 974
    :pswitch_8d
    invoke-direct {p0, v8}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onTurnAssistControl(Z)V

    goto/16 :goto_1

    .line 315
    :pswitch_8e
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightHomeSet(I)V

    goto/16 :goto_1

    .line 309
    :pswitch_8f
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightHomeOff()V

    goto/16 :goto_1

    .line 381
    :pswitch_90
    invoke-virtual {p0, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onModesDrivingSport(I)V

    goto/16 :goto_1

    .line 393
    :pswitch_91
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onModesDrivingRacer()V

    goto/16 :goto_1

    .line 989
    :pswitch_92
    invoke-direct {p0, v8}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onAutoTrunkControl(Z)V

    goto/16 :goto_1

    .line 753
    :pswitch_93
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLluEffectPlayDisable(I)V

    goto/16 :goto_1

    .line 828
    :pswitch_94
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onDoorknobAutoOff()V

    goto/16 :goto_1

    .line 956
    :pswitch_95
    invoke-direct {p0, v8}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onDoorLockEnable(Z)V

    goto/16 :goto_1

    .line 1031
    :pswitch_96
    invoke-direct {p0, v8}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onImsControl(Z)V

    goto/16 :goto_1

    .line 947
    :pswitch_97
    invoke-direct {p0, v9}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWindowLockEnable(Z)V

    goto/16 :goto_1

    .line 411
    :pswitch_98
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->High:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->toVcuRecycleCmd()I

    move-result p1

    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setEnergyRecycleGrade(II)I

    goto/16 :goto_1

    .line 423
    :pswitch_99
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->Low:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->toVcuRecycleCmd()I

    move-result p1

    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setEnergyRecycleGrade(II)I

    goto/16 :goto_1

    .line 372
    :pswitch_9a
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onTrunkClose()V

    goto/16 :goto_1

    .line 597
    :pswitch_9b
    invoke-virtual {p0, v8, v9}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onChargePortControl(II)V

    goto/16 :goto_1

    .line 354
    :pswitch_9c
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPercent(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v8, v9, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWindowsControl(III)V

    goto/16 :goto_1

    .line 528
    :pswitch_9d
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWiperSpeedUp()V

    goto/16 :goto_1

    .line 708
    :pswitch_9e
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onControlScissorLeftDoorPause()V

    goto/16 :goto_1

    .line 636
    :pswitch_9f
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onPsnSeatBackrestForward(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 318
    :pswitch_a0
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightLowOff(Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;)V

    goto/16 :goto_1

    .line 465
    :pswitch_a1
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSeatMoveForward(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 384
    :pswitch_a2
    invoke-virtual {p0, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onModesDrivingConservation(I)V

    goto/16 :goto_1

    .line 324
    :pswitch_a3
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightPositionOn()V

    goto/16 :goto_1

    .line 858
    :pswitch_a4
    invoke-virtual {p0, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSuspensionAutoOff(I)V

    goto/16 :goto_1

    .line 1019
    :pswitch_a5
    invoke-direct {p0, v9}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onHighAutoCloseWindowControl(Z)V

    goto/16 :goto_1

    .line 895
    :pswitch_a6
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightPositionModeSet(I)V

    goto/16 :goto_1

    .line 612
    :pswitch_a7
    new-instance p1, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;

    invoke-direct {p1, p2}, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightAtmosphereBrightnessSet(Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;)V

    goto/16 :goto_1

    .line 624
    :pswitch_a8
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightAtmosphereBrightnessMin()V

    goto/16 :goto_1

    .line 621
    :pswitch_a9
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightAtmosphereBrightnessMax()V

    goto/16 :goto_1

    .line 444
    :pswitch_aa
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPercent(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v1, v8, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWindowsControl(III)V

    goto/16 :goto_1

    .line 965
    :pswitch_ab
    invoke-direct {p0, v9}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLogoLightControl(Z)V

    goto/16 :goto_1

    .line 399
    :pswitch_ac
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onModesDrivingIndividual()V

    goto/16 :goto_1

    .line 1028
    :pswitch_ad
    invoke-direct {p0, v9}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onImsControl(Z)V

    goto/16 :goto_1

    .line 864
    :pswitch_ae
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onMassageOff(I)V

    goto/16 :goto_1

    .line 672
    :pswitch_af
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSeatModeSet(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 777
    :pswitch_b0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onIhbOff()V

    goto/16 :goto_1

    .line 549
    :pswitch_b1
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPercent(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v5, v9, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWindowsControl(III)V

    goto/16 :goto_1

    .line 843
    :pswitch_b2
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onChildSafetyModeOn()V

    goto/16 :goto_1

    .line 648
    :pswitch_b3
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onPsnSeatMoveLowest()V

    goto/16 :goto_1

    .line 849
    :pswitch_b4
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onChildSafetyLocksOn(II)V

    goto/16 :goto_1

    .line 699
    :pswitch_b5
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onControlScissorRightDoorOn()V

    goto/16 :goto_1

    .line 588
    :pswitch_b6
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSeatRecovery(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 429
    :pswitch_b7
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPercent(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, v9, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWindowsControl(III)V

    goto/16 :goto_1

    .line 825
    :pswitch_b8
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onDoorknobAutoOn()V

    goto/16 :goto_1

    .line 738
    :pswitch_b9
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onCloseUserBook()V

    goto/16 :goto_1

    .line 480
    :pswitch_ba
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSeatBackrestRear()V

    goto/16 :goto_1

    .line 474
    :pswitch_bb
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSeatBackrestBack(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 507
    :pswitch_bc
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLowVolumeOff()V

    goto/16 :goto_1

    .line 888
    :pswitch_bd
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onControlNewKeyParkingOff()V

    goto/16 :goto_1

    .line 852
    :pswitch_be
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onChildSafetyLocksOff(II)V

    goto/16 :goto_1

    .line 992
    :pswitch_bf
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getValue(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onTrunkAngleSet(I)V

    goto/16 :goto_1

    .line 540
    :pswitch_c0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWiperMedium()V

    goto/16 :goto_1

    .line 898
    :pswitch_c1
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightAtmosphereColorSwitch(I)V

    goto/16 :goto_1

    .line 705
    :pswitch_c2
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onControlScissorRightDoorOff()V

    goto/16 :goto_1

    .line 834
    :pswitch_c3
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onParkAutoUnlockOff()V

    goto/16 :goto_1

    .line 879
    :pswitch_c4
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onBackWelcomeModeSet(I)V

    goto/16 :goto_1

    .line 573
    :pswitch_c5
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLegMove(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 564
    :pswitch_c6
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLegDown()V

    goto/16 :goto_1

    .line 339
    :pswitch_c7
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onMistLightOff()V

    goto/16 :goto_1

    .line 615
    :pswitch_c8
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightAtmosphereBrightnessUp()V

    goto/16 :goto_1

    .line 795
    :pswitch_c9
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onBootSoundOff()V

    goto/16 :goto_1

    .line 342
    :pswitch_ca
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onMistLightOn()V

    goto/16 :goto_1

    .line 904
    :pswitch_cb
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightAtmosphereModeSet(I)V

    goto/16 :goto_1

    .line 768
    :pswitch_cc
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onAvasSayHiEnable()V

    goto/16 :goto_1

    .line 756
    :pswitch_cd
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLluEffectPreview(I)V

    goto/16 :goto_1

    .line 813
    :pswitch_ce
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p3, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onsCwcSwOn(II)V

    goto/16 :goto_1

    .line 348
    :pswitch_cf
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onMirrorRearOn()V

    goto/16 :goto_1

    .line 330
    :pswitch_d0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightAutoOn()V

    goto/16 :goto_1

    .line 876
    :pswitch_d1
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSwingStrengthSet(II)V

    goto/16 :goto_1

    .line 891
    :pswitch_d2
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onControlNewKeyParkingEnhancedOff()V

    goto/16 :goto_1

    .line 1016
    :pswitch_d3
    invoke-direct {p0, v8}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLeaveAutoLocControl(Z)V

    goto/16 :goto_1

    .line 759
    :pswitch_d4
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLluEffectSet(I)V

    goto/16 :goto_1

    .line 477
    :pswitch_d5
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSeatBackrestForward(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 786
    :pswitch_d6
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWelcomeModeOn()V

    goto/16 :goto_1

    .line 642
    :pswitch_d7
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onPsnSeatMoveForward(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 501
    :pswitch_d8
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onControlSeatResume()V

    goto/16 :goto_1

    .line 513
    :pswitch_d9
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightAtmosphereOff()V

    goto/16 :goto_1

    .line 522
    :pswitch_da
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onAtmosphereSpeakerOff()V

    goto/16 :goto_1

    .line 471
    :pswitch_db
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSeatMoveForemost()V

    goto/16 :goto_1

    .line 486
    :pswitch_dc
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getDirection(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWaistMove(II)V

    goto/16 :goto_1

    .line 780
    :pswitch_dd
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onXkeySetting(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 729
    :pswitch_de
    invoke-virtual {p0, v9}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setLluSw(Z)V

    goto/16 :goto_1

    .line 414
    :pswitch_df
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->Low:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->toVcuRecycleCmd()I

    move-result p1

    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setEnergyRecycleGrade(II)I

    goto/16 :goto_1

    .line 603
    :pswitch_e0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onTirePressureShow()V

    goto :goto_1

    .line 504
    :pswitch_e1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLowVolumeOn()V

    goto :goto_1

    .line 579
    :pswitch_e2
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onCushionMoveSet(Ljava/lang/String;)V

    goto :goto_1

    .line 510
    :pswitch_e3
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightAtmosphereOn()V

    goto :goto_1

    .line 771
    :pswitch_e4
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onAvasSayHiDisable()V

    goto :goto_1

    .line 702
    :pswitch_e5
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onControlScissorLeftDoorOff()V

    goto :goto_1

    .line 531
    :pswitch_e6
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWiperSpeedDown()V

    goto :goto_1

    .line 567
    :pswitch_e7
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLegHighest()V

    goto :goto_1

    .line 962
    :pswitch_e8
    invoke-direct {p0, v8}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onAutoSelfCheckSet(Z)V

    goto :goto_1

    .line 327
    :pswitch_e9
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightPositionOff()V

    goto :goto_1

    .line 390
    :pswitch_ea
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onModesDrivingComfort()V

    goto :goto_1

    .line 345
    :pswitch_eb
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onMirrorRearClose()V

    goto :goto_1

    .line 591
    :pswitch_ec
    invoke-virtual {p0, v9, v8}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onChargePortControl(II)V

    goto :goto_1

    .line 907
    :pswitch_ed
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onLightTopSet(II)V

    goto :goto_1

    .line 495
    :pswitch_ee
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSeatAdjust(Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;)V

    goto :goto_1

    .line 804
    :pswitch_ef
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onPsnWelcomeModeOff()V

    goto :goto_1

    .line 363
    :pswitch_f0
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPercent(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v9, v8, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onWindowsControl(III)V

    goto :goto_1

    .line 1022
    :pswitch_f1
    invoke-direct {p0, v8}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onHighAutoCloseWindowControl(Z)V

    goto :goto_1

    .line 627
    :pswitch_f2
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onPsnSeatMoveUp(Ljava/lang/String;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e695aee -> :sswitch_f2
        -0x7d96e405 -> :sswitch_f1
        -0x7b2dbb04 -> :sswitch_f0
        -0x793583ad -> :sswitch_ef
        -0x776a9c48 -> :sswitch_ee
        -0x74b7d06f -> :sswitch_ed
        -0x732a9d2e -> :sswitch_ec
        -0x7248d523 -> :sswitch_eb
        -0x71053ff9 -> :sswitch_ea
        -0x70223b1e -> :sswitch_e9
        -0x6fbfafa2 -> :sswitch_e8
        -0x6da9d71c -> :sswitch_e7
        -0x6964ed74 -> :sswitch_e6
        -0x6695813c -> :sswitch_e5
        -0x668c51f3 -> :sswitch_e4
        -0x6608688d -> :sswitch_e3
        -0x65f2986e -> :sswitch_e2
        -0x653830c7 -> :sswitch_e1
        -0x63e38c7b -> :sswitch_e0
        -0x639a3d0d -> :sswitch_df
        -0x628b2083 -> :sswitch_de
        -0x61273dd7 -> :sswitch_dd
        -0x5fd0f0a1 -> :sswitch_dc
        -0x5fbe808d -> :sswitch_db
        -0x5ef72414 -> :sswitch_da
        -0x5b04a9a5 -> :sswitch_d9
        -0x5a560baa -> :sswitch_d8
        -0x5a349152 -> :sswitch_d7
        -0x5a27b862 -> :sswitch_d6
        -0x591277ce -> :sswitch_d5
        -0x58461473 -> :sswitch_d4
        -0x57c9174c -> :sswitch_d3
        -0x578bedf6 -> :sswitch_d2
        -0x578471fb -> :sswitch_d1
        -0x573c3a3a -> :sswitch_d0
        -0x56ec8ce6 -> :sswitch_cf
        -0x56e557f4 -> :sswitch_ce
        -0x56240eb4 -> :sswitch_cd
        -0x55e37e7f -> :sswitch_cc
        -0x557a9fd5 -> :sswitch_cb
        -0x5548b362 -> :sswitch_ca
        -0x53fe097e -> :sswitch_c9
        -0x53dfacbc -> :sswitch_c8
        -0x53cdb970 -> :sswitch_c7
        -0x51f8eb9e -> :sswitch_c6
        -0x51f4d46f -> :sswitch_c5
        -0x507faf16 -> :sswitch_c4
        -0x4ecc00c0 -> :sswitch_c3
        -0x4c67ad0d -> :sswitch_c2
        -0x46c3b74d -> :sswitch_c1
        -0x46450668 -> :sswitch_c0
        -0x45335ed3 -> :sswitch_bf
        -0x44764681 -> :sswitch_be
        -0x43363704 -> :sswitch_bd
        -0x41cde8ab -> :sswitch_bc
        -0x3d2b3166 -> :sswitch_bb
        -0x3d23dca9 -> :sswitch_ba
        -0x3bae912a -> :sswitch_b9
        -0x3a10b292 -> :sswitch_b8
        -0x39ba0962 -> :sswitch_b7
        -0x389fba82 -> :sswitch_b6
        -0x34035825 -> :sswitch_b5
        -0x33c1c031 -> :sswitch_b4
        -0x32784757 -> :sswitch_b3
        -0x2fd39220 -> :sswitch_b2
        -0x2f42edd1 -> :sswitch_b1
        -0x2ece6c7e -> :sswitch_b0
        -0x2dffe480 -> :sswitch_af
        -0x2cf05554 -> :sswitch_ae
        -0x29b8d236 -> :sswitch_ad
        -0x2945a582 -> :sswitch_ac
        -0x289a5b85 -> :sswitch_ab
        -0x2874304a -> :sswitch_aa
        -0x28160a25 -> :sswitch_a9
        -0x28160937 -> :sswitch_a8
        -0x2815f327 -> :sswitch_a7
        -0x27aa11fc -> :sswitch_a6
        -0x2515622d -> :sswitch_a5
        -0x24f47c3f -> :sswitch_a4
        -0x24a643f4 -> :sswitch_a3
        -0x1e6293fe -> :sswitch_a2
        -0x1bd4d8ef -> :sswitch_a1
        -0x1b8714e3 -> :sswitch_a0
        -0x17487ecb -> :sswitch_9f
        -0x172e09f5 -> :sswitch_9e
        -0x127d90fb -> :sswitch_9d
        -0x126411f0 -> :sswitch_9c
        -0x122da2fc -> :sswitch_9b
        -0x10f1daa2 -> :sswitch_9a
        -0xfb1071d -> :sswitch_99
        -0xfaf4e1d -> :sswitch_98
        -0xe70ca9c -> :sswitch_97
        -0xd61751c -> :sswitch_96
        -0x80f7374 -> :sswitch_95
        -0x805a040 -> :sswitch_94
        -0x79fe30d -> :sswitch_93
        -0x6482b6a -> :sswitch_92
        -0x41cc344 -> :sswitch_91
        -0x407ab91 -> :sswitch_90
        -0x3070e68 -> :sswitch_8f
        -0x306ff75 -> :sswitch_8e
        -0x2f639d9 -> :sswitch_8d
        0x2d8a5d -> :sswitch_8c
        0x2d9950 -> :sswitch_8b
        0x1268498 -> :sswitch_8a
        0x3834c39 -> :sswitch_89
        0x4b90c8d -> :sswitch_88
        0x6cef502 -> :sswitch_87
        0x7afb332 -> :sswitch_86
        0x841be54 -> :sswitch_85
        0x8b275c2 -> :sswitch_84
        0xa104d28 -> :sswitch_83
        0xa190e66 -> :sswitch_82
        0xb355002 -> :sswitch_81
        0xc763ae0 -> :sswitch_80
        0xdd6f6dc -> :sswitch_7f
        0xe90ee5b -> :sswitch_7e
        0xead54d6 -> :sswitch_7d
        0xf01996c -> :sswitch_7c
        0xf942b85 -> :sswitch_7b
        0x106b2096 -> :sswitch_7a
        0x10f5569a -> :sswitch_79
        0x11270f91 -> :sswitch_78
        0x1188849e -> :sswitch_77
        0x12aa2b76 -> :sswitch_76
        0x1437c36c -> :sswitch_75
        0x1467b8d5 -> :sswitch_74
        0x14cb9586 -> :sswitch_73
        0x1530ab90 -> :sswitch_72
        0x154eea53 -> :sswitch_71
        0x168fa085 -> :sswitch_70
        0x18162c77 -> :sswitch_6f
        0x181d8134 -> :sswitch_6e
        0x1847facf -> :sswitch_6d
        0x1943620c -> :sswitch_6c
        0x1a31d4f5 -> :sswitch_6b
        0x1a35ad0b -> :sswitch_6a
        0x1cdaa078 -> :sswitch_69
        0x1e8d49fb -> :sswitch_68
        0x1fa957a3 -> :sswitch_67
        0x20159a01 -> :sswitch_66
        0x203262b1 -> :sswitch_65
        0x20ea92d7 -> :sswitch_64
        0x214848ae -> :sswitch_63
        0x2177eaed -> :sswitch_62
        0x222226b5 -> :sswitch_61
        0x2283bba6 -> :sswitch_60
        0x2550e30b -> :sswitch_5f
        0x262bb41b -> :sswitch_5e
        0x262cd3d6 -> :sswitch_5d
        0x263308d8 -> :sswitch_5c
        0x271ab138 -> :sswitch_5b
        0x273a5776 -> :sswitch_5a
        0x27ae0290 -> :sswitch_59
        0x2819254d -> :sswitch_58
        0x281e95e3 -> :sswitch_57
        0x2b960d77 -> :sswitch_56
        0x2bd52f57 -> :sswitch_55
        0x2c2b426c -> :sswitch_54
        0x2d4069cf -> :sswitch_53
        0x2d48f41c -> :sswitch_52
        0x2e3d3dea -> :sswitch_51
        0x2edb7a7a -> :sswitch_50
        0x31777485 -> :sswitch_4f
        0x317c80e4 -> :sswitch_4e
        0x318ddb31 -> :sswitch_4d
        0x32887c86 -> :sswitch_4c
        0x35329bb5 -> :sswitch_4b
        0x35614d8e -> :sswitch_4a
        0x356fa5db -> :sswitch_49
        0x35cb4272 -> :sswitch_48
        0x363e38b4 -> :sswitch_47
        0x3718d66c -> :sswitch_46
        0x3743bdee -> :sswitch_45
        0x39b5fe27 -> :sswitch_44
        0x3d2797ba -> :sswitch_43
        0x3ed9ff1c -> :sswitch_42
        0x3f8ee77e -> :sswitch_41
        0x4057768a -> :sswitch_40
        0x40947fdf -> :sswitch_3f
        0x4318c4f0 -> :sswitch_3e
        0x444f72af -> :sswitch_3d
        0x45801627 -> :sswitch_3c
        0x459ee29f -> :sswitch_3b
        0x4680dc6b -> :sswitch_3a
        0x4763579a -> :sswitch_39
        0x487b60e4 -> :sswitch_38
        0x49a0c369 -> :sswitch_37
        0x4a139ddb -> :sswitch_36
        0x4ef9d110 -> :sswitch_35
        0x4f5e2547 -> :sswitch_34
        0x520ac32b -> :sswitch_33
        0x526c6a09 -> :sswitch_32
        0x528d8cdf -> :sswitch_31
        0x52da4d4f -> :sswitch_30
        0x52fb8e4e -> :sswitch_2f
        0x544dac68 -> :sswitch_2e
        0x54bd1b02 -> :sswitch_2d
        0x55c9d2be -> :sswitch_2c
        0x563a3572 -> :sswitch_2b
        0x57ce5e3a -> :sswitch_2a
        0x57ee99b2 -> :sswitch_29
        0x593d0a82 -> :sswitch_28
        0x59f36271 -> :sswitch_27
        0x5a4097aa -> :sswitch_26
        0x5b74afac -> :sswitch_25
        0x5be98ec0 -> :sswitch_24
        0x5bede7e6 -> :sswitch_23
        0x5f2fd27b -> :sswitch_22
        0x6043d5fa -> :sswitch_21
        0x6088a3a2 -> :sswitch_20
        0x62925a24 -> :sswitch_1f
        0x62e4e5d8 -> :sswitch_1e
        0x63708470 -> :sswitch_1d
        0x63a2c3e5 -> :sswitch_1c
        0x6422a85d -> :sswitch_1b
        0x67209a88 -> :sswitch_1a
        0x684a9bc2 -> :sswitch_19
        0x692fccb2 -> :sswitch_18
        0x69da0f33 -> :sswitch_17
        0x6a8ebf17 -> :sswitch_16
        0x6d09a4f0 -> :sswitch_15
        0x6e3c0a66 -> :sswitch_14
        0x6e59cd63 -> :sswitch_13
        0x6eea1f6b -> :sswitch_12
        0x6fb4f268 -> :sswitch_11
        0x7224dddb -> :sswitch_10
        0x7225aa3b -> :sswitch_f
        0x735a5722 -> :sswitch_e
        0x74372a15 -> :sswitch_d
        0x7678d99e -> :sswitch_c
        0x7679f959 -> :sswitch_b
        0x76802e5b -> :sswitch_a
        0x775c9969 -> :sswitch_9
        0x788514f3 -> :sswitch_8
        0x795afe87 -> :sswitch_7
        0x7a194ab6 -> :sswitch_6
        0x7a3a58e2 -> :sswitch_5
        0x7a7d2f4c -> :sswitch_4
        0x7b1ee41f -> :sswitch_3
        0x7c8cfbcd -> :sswitch_2
        0x7d91ada6 -> :sswitch_1
        0x7debd5f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_63
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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

.method protected onIhbOff()V
    .locals 2

    .line 5567
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onIhbOff"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5568
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;->setIhbEnable(ZZ)V

    return-void
.end method

.method protected onIhbOn()V
    .locals 3

    .line 5558
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onIhbOn"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5560
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;->setIhbEnable(ZZ)V

    return-void
.end method

.method protected onLegDown()V
    .locals 4

    .line 3138
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatLegPos()I

    move-result v0

    .line 3139
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLegDown: pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 3141
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatLegMove(II)V

    goto :goto_0

    .line 3143
    :cond_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_cushion_control_lowest:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    :goto_0
    return-void
.end method

.method protected onLegHighest()V
    .locals 4

    .line 3148
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatLegPos()I

    move-result v0

    .line 3149
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLegHighest: pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x64

    rsub-int/lit8 v0, v0, 0x64

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 3151
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatLegPos(I)V

    goto :goto_0

    .line 3153
    :cond_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_cushion_control_highest:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    :goto_0
    return-void
.end method

.method protected onLegLowest()V
    .locals 4

    .line 3158
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatLegPos()I

    move-result v0

    .line 3159
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLegLowest: pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 3161
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatLegPos(I)V

    goto :goto_0

    .line 3163
    :cond_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_cushion_control_lowest:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    :goto_0
    return-void
.end method

.method protected onLegUp()V
    .locals 4

    .line 3128
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatLegPos()I

    move-result v0

    .line 3129
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLegUp: pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    rsub-int/lit8 v0, v0, 0x64

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 3131
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatLegMove(II)V

    goto :goto_0

    .line 3133
    :cond_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_cushion_control_highest:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    :goto_0
    return-void
.end method

.method protected onLightAtmosphereBrightnessDown()V
    .locals 3

    .line 3542
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onLightAtmosphereBrightnessDown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3543
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setAtlEnable()V

    .line 3544
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlBrightnessValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    move v0, v1

    .line 3549
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlBrightnessValue(I)V

    return-void
.end method

.method protected onLightAtmosphereBrightnessMax()V
    .locals 3

    .line 3556
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onLightAtmosphereBrightnessMax"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3557
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setAtlEnable()V

    .line 3558
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlBrightnessValue(I)V

    return-void
.end method

.method protected onLightAtmosphereBrightnessMin()V
    .locals 3

    .line 3565
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onLightAtmosphereBrightnessMin"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3566
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setAtlEnable()V

    .line 3567
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlBrightnessValue(I)V

    return-void
.end method

.method protected onLightAtmosphereBrightnessSet(Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandValue"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3509
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLightAtmosphereBrightnessSet umber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;->getNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", percent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3510
    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;->getPercent()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3509
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3511
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setAtlEnable()V

    .line 3512
    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;->getNumber()I

    move-result v0

    .line 3513
    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;->getPercent()I

    move-result p1

    if-lez v0, :cond_0

    .line 3515
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlBrightnessValue(I)V

    goto :goto_0

    .line 3517
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    mul-int/lit8 p1, p1, 0x5a

    div-int/lit8 p1, p1, 0x64

    add-int/lit8 p1, p1, 0xa

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlBrightnessValue(I)V

    goto :goto_0

    .line 3520
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onLightAtmosphereBrightnessSet is null"

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method protected onLightAtmosphereBrightnessUp()V
    .locals 3

    .line 3528
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onLightAtmosphereBrightnessUp"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3529
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setAtlEnable()V

    .line 3530
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlBrightnessValue()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    move v0, v1

    .line 3535
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlBrightnessValue(I)V

    return-void
.end method

.method protected onLightAtmosphereColor(Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commandValue",
            "source"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 3461
    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;->getColor()I

    move-result v3

    .line 3462
    sget-object v4, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLightAtmosphereColor color:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "source: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-lt v3, v1, :cond_3

    const/16 p2, 0x14

    if-gt v3, p2, :cond_3

    .line 3465
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setAtlEnable()V

    .line 3466
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlThemeColorMode()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3467
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlThemeColorMode(Z)V

    .line 3469
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;->getColor()I

    move-result p1

    invoke-virtual {p2, p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlSingleColor(IZ)V

    goto :goto_1

    .line 3472
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string p2, "onLightAtmosphereColor is null"

    invoke-static {p1, p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method onLightAtmosphereColorChange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 3242
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLightAtmosphereColorChange: mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3243
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setAtlEnable()V

    .line 3244
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlColorChange(I)V

    return-void
.end method

.method protected onLightAtmosphereColorSwitch(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 3686
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLightAtmosphereColorSwitch, target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3687
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlThemeColorMode(Z)V

    return-void
.end method

.method protected onLightAtmosphereDualColor(Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commandValue",
            "source"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 3484
    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;->getColor()I

    move-result p1

    .line 3485
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v3, p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->convertDoubleColor(I)[I

    move-result-object v3

    .line 3486
    sget-object v4, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLightAtmosphereDualColor color:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "source: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ltz p1, :cond_3

    const/4 p2, 0x6

    if-gt p1, p2, :cond_3

    .line 3489
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setAtlEnable()V

    .line 3490
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlThemeColorMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3491
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlThemeColorMode(Z)V

    .line 3493
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    aget p2, v3, v0

    aget v0, v3, v1

    invoke-virtual {p1, p2, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlDualColor(IIZ)V

    goto :goto_1

    .line 3496
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string p2, "onLightAtmosphereColor is null"

    invoke-static {p1, p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onLightAtmosphereModeSet(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 3691
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLightAtmosphereModeSet, target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3703
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->Music:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlEffect(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;)V

    goto :goto_0

    .line 3700
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->Speed:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlEffect(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;)V

    goto :goto_0

    .line 3697
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->Breathing:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlEffect(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;)V

    goto :goto_0

    .line 3694
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->None:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlEffect(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;)V

    :goto_0
    return-void
.end method

.method protected onLightAtmosphereOff()V
    .locals 3

    .line 3232
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onLightAtmosphereOff"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3233
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlSwitch(Z)V

    return-void
.end method

.method protected onLightAtmosphereOn()V
    .locals 3

    .line 3227
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onLightAtmosphereOn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3228
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlSwitch(Z)V

    return-void
.end method

.method protected onLightAutoOff()V
    .locals 3

    .line 2526
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onLightAutoOff"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2527
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setHeadLampGroup(I)V

    return-void
.end method

.method protected onLightAutoOn()V
    .locals 3

    .line 2521
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onLightAutoOn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2522
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setHeadLampGroup(I)V

    return-void
.end method

.method protected onLightHomeOff()V
    .locals 3

    .line 2484
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onLightHomeOff"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2485
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setLightMeHome(Z)V

    return-void
.end method

.method protected onLightHomeOn()V
    .locals 3

    .line 2489
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onLightHomeOn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2490
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setLightMeHome(Z)V

    return-void
.end method

.method protected onLightHomeSet(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2494
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLightHomeSet time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2495
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->fromTime(I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setLightMeHomeTime(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;)V

    return-void
.end method

.method protected onLightLowOff(Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controlReason"
        }
    .end annotation

    .line 2499
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLightLowOff reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;->getControlReason()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2500
    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;->getControlReason()I

    move-result p1

    if-nez p1, :cond_0

    .line 2501
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setHeadLampGroup(I)V

    :cond_0
    return-void
.end method

.method protected onLightLowOn()V
    .locals 3

    .line 2506
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onLightLowOn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2507
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setHeadLampGroup(I)V

    return-void
.end method

.method protected onLightPositionModeSet(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 3681
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLightPositionModeSet, target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3682
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    if-nez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setParkLampIncludeFmB(Z)V

    return-void
.end method

.method protected onLightPositionOff()V
    .locals 3

    .line 2516
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onLightPositionOff"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2517
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setHeadLampGroup(I)V

    return-void
.end method

.method protected onLightPositionOn()V
    .locals 3

    .line 2511
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onLightPositionOn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2512
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setHeadLampGroup(I)V

    return-void
.end method

.method protected onLightTopBrightnessSet(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "source"
        }
    .end annotation

    .line 3709
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLightTopBrightnessSet, target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    move v2, v0

    .line 3711
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {p2, p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setDomeLightBrightness(IZ)V

    return-void
.end method

.method protected onLightTopSet(II)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pilot",
            "target"
        }
    .end annotation

    .line 3715
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLightTopSet, pilot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    const-string v7, "isRightDudder"

    packed-switch p1, :pswitch_data_0

    move v0, v5

    goto :goto_3

    :pswitch_0
    const/16 v0, 0x9

    goto :goto_3

    .line 3764
    :pswitch_1
    invoke-static {v7}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 3757
    :pswitch_2
    invoke-static {v7}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_3

    :cond_0
    :goto_0
    move v0, v1

    goto :goto_3

    :pswitch_3
    const/4 v0, 0x6

    goto :goto_3

    :pswitch_4
    const/4 v0, 0x5

    goto :goto_3

    .line 3744
    :pswitch_5
    invoke-static {v7}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 3737
    :pswitch_6
    invoke-static {v7}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move v0, v3

    goto :goto_3

    :cond_2
    :goto_1
    move v0, v4

    goto :goto_3

    .line 3730
    :pswitch_7
    invoke-static {v7}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 3723
    :pswitch_8
    invoke-static {v7}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move v0, v6

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v2

    goto :goto_3

    :pswitch_9
    const/4 v0, 0x4

    :cond_5
    :goto_3
    if-ne v0, v5, :cond_6

    return-void

    .line 3779
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    if-ne p2, v6, :cond_7

    move v2, v6

    :cond_7
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setDomeLightSw(IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method protected onLluEffectPlayDisable(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 5394
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLluEffectPlayDisable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 5403
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluChargingSwitch(Z)V

    goto :goto_0

    .line 5400
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluSleepSwitch(Z)V

    goto :goto_0

    .line 5397
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluWakeWaitSwitch(Z)V

    :goto_0
    return-void
.end method

.method protected onLluEffectPlayEnable(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 5372
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLluEffectPlayEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 5381
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluChargingSwitch(Z)V

    goto :goto_0

    .line 5378
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluSleepSwitch(Z)V

    goto :goto_0

    .line 5375
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluWakeWaitSwitch(Z)V

    :goto_0
    return-void
.end method

.method protected onLluEffectPreview(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 5416
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLluEffectPreview:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 5434
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->FindCar:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluEffectPreview(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    goto :goto_0

    .line 5431
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->AcCharged:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluEffectPreview(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    goto :goto_0

    .line 5428
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->DcCharged:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluEffectPreview(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    goto :goto_0

    .line 5425
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->Sleep:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluEffectPreview(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    goto :goto_0

    .line 5422
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->AwakeWait:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluEffectPreview(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    goto :goto_0

    .line 5419
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getLluSayHiEffect()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluEffectPreview(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    :goto_0
    return-void
.end method

.method protected onLluEffectSet(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 5480
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLluEffectSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    move-object p1, v2

    goto :goto_0

    .line 5493
    :cond_0
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->EffectC:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;

    .line 5494
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->SoundEffect3:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;

    goto :goto_0

    .line 5489
    :cond_1
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->EffectB:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;

    .line 5490
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->SoundEffect2:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;

    goto :goto_0

    .line 5485
    :cond_2
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->EffectA:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;

    .line 5486
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->SoundEffect1:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;

    :goto_0
    if-eqz v2, :cond_3

    .line 5500
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SayHi:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->toLluCmd()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluEffect(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;I)V

    .line 5501
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v3, p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setAvasFriendEffect(Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;)V

    .line 5502
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getLluPreviewStateData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Previewing:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    if-ne p1, v3, :cond_3

    .line 5505
    new-instance p1, Lcom/xiaopeng/carcontrol/speech/-$$Lambda$CarControlSpeechModel$eaY48YghvT23TKelrtzV1ErgRDI;

    invoke-direct {p1, p0, v2}, Lcom/xiaopeng/carcontrol/speech/-$$Lambda$CarControlSpeechModel$eaY48YghvT23TKelrtzV1ErgRDI;-><init>(Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;)V

    const-wide/16 v3, 0x1c2

    invoke-static {v0, p1, v3, v4}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 5511
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getControlLightLanguageSettingPreviewSupport()I

    move-result p1

    if-ne p1, v1, :cond_3

    const/4 p1, 0x0

    .line 5512
    new-instance v0, Lcom/xiaopeng/carcontrol/speech/-$$Lambda$CarControlSpeechModel$gBKKsxiWNaftlF9uObpPWMIWJ-M;

    invoke-direct {v0, p0, v2}, Lcom/xiaopeng/carcontrol/speech/-$$Lambda$CarControlSpeechModel$gBKKsxiWNaftlF9uObpPWMIWJ-M;-><init>(Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;)V

    const-wide/16 v1, 0x32

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method protected onLowVolumeOff()V
    .locals 4

    .line 4870
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onLowVolumeOff"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4871
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    const-string/jumbo v2, "xpCarControl_Avas"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->showAvasCloseConfirmNotify(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method protected onLowVolumeOn()V
    .locals 3

    .line 4865
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onLowVolumeOn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4866
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setLowSpdEnable(Z)V

    return-void
.end method

.method protected onMassageOff(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pilot"
        }
    .end annotation

    .line 3614
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMassageOff, pilot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3615
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopMassager(I)V

    return-void
.end method

.method protected onMassageOn(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pilot",
            "mode"
        }
    .end annotation

    .line 3593
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMassageOn, pilot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "getMassageModes"

    .line 3594
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getArray(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-le p2, v0, :cond_0

    .line 3595
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->startMassager(I)V

    goto :goto_0

    .line 3597
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    add-int/lit8 p1, p1, -0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getArray(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p2, p2, -0x1

    aget-object p2, v1, p2

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->startMassager(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onMassageOn(III)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pilot",
            "mode",
            "intensity"
        }
    .end annotation

    .line 3602
    new-instance p2, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p2, v0, p3}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;-><init>(II)V

    .line 3603
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassageMode(I)I

    move-result v0

    .line 3604
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMassageOn, pilot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", massageMode: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "  ,intensity: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {v1, p1, p3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3605
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    new-array p3, p3, [Ljava/lang/Object;

    const-string v1, "getMassageModes"

    invoke-static {v1, p3}, Lcom/xiaopeng/lib/feature/XpFeature;->getArray(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, v0

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->startMassager(Lcom/xiaopeng/xuimanager/seatmassager/Seat;Ljava/lang/String;)V

    return-void
.end method

.method protected onMassageStrengthSet(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pilot",
            "target"
        }
    .end annotation

    .line 3625
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMassageStrengthSet, pilot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v0, p1, -0x1

    .line 3627
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isMassagerRunning(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 3628
    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onMassageOn(III)V

    goto :goto_0

    .line 3630
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setMassagerIntensity(II)V

    :goto_0
    return-void
.end method

.method protected onMirrorRearClose()V
    .locals 3

    .line 2623
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onMirrorRearClose"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2624
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->controlMirror(Z)V

    return-void
.end method

.method protected onMirrorRearOn()V
    .locals 3

    .line 2628
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onMirrorRearOn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2629
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->controlMirror(Z)V

    return-void
.end method

.method protected onMirrorRearSet()V
    .locals 3

    .line 2639
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onMirrorRearSet"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2640
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object v0

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_MIRROR_CONTROL_PANEL"

    const/16 v2, 0xbc0

    .line 2641
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->show(Ljava/lang/String;I)V

    return-void
.end method

.method protected onMistLightOff()V
    .locals 3

    .line 2646
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onMistLightOff"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2647
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setRearFogLamp(Z)V

    return-void
.end method

.method protected onMistLightOn()V
    .locals 3

    .line 2651
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onMistLightOn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2652
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setRearFogLamp(Z)V

    return-void
.end method

.method protected onModesDrivingConservation(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 2749
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onModesDrivingConservation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    move v2, v0

    .line 2751
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Eco:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)V

    return-void
.end method

.method protected onModesDrivingNormal(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 2755
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onModesDrivingNormal"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    move v2, v0

    .line 2757
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)V

    return-void
.end method

.method protected onModesDrivingSport(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 2743
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onModesDrivingSport"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    move v2, v0

    .line 2745
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Sport:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)V

    return-void
.end method

.method protected onModesSteeringNormal(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 2767
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onModesSteeringNormal"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2769
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1, v2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setSteeringEps(IZ)Ljava/lang/String;

    return-void
.end method

.method protected onModesSteeringSoft(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 2761
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onModesSteeringSoft"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    move v2, v0

    .line 2763
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setSteeringEps(IZ)Ljava/lang/String;

    return-void
.end method

.method protected onModesSteeringSport(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 2773
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onModesSteeringSport"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    move v2, v0

    .line 2775
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setSteeringEps(IZ)Ljava/lang/String;

    return-void
.end method

.method protected onNewSeatBackrestMove(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 4567
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4570
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    .line 4572
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getChangeValue(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 4574
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v3, :cond_a

    const/4 v3, 0x4

    if-eq v0, v3, :cond_7

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    if-eq p1, v6, :cond_2

    if-ne p1, v5, :cond_d

    .line 4596
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatTiltPos()I

    move-result v1

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v3

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v2

    if-ne p1, v6, :cond_3

    move v4, v6

    :cond_3
    invoke-direct {p0, v1, v3, v2, v4}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTargetPos(IZIZ)I

    move-result v1

    .line 4597
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRtSeatTiltPos(I)V

    goto :goto_0

    :cond_4
    if-eq p1, v6, :cond_5

    if-ne p1, v5, :cond_d

    .line 4590
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLtSeatTiltPos()I

    move-result v1

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v3

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v2

    if-ne p1, v6, :cond_6

    move v4, v6

    :cond_6
    invoke-direct {p0, v1, v3, v2, v4}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTargetPos(IZIZ)I

    move-result v1

    .line 4591
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLtSeatTiltPos(I)V

    goto :goto_0

    :cond_7
    if-eq p1, v6, :cond_8

    if-ne p1, v5, :cond_d

    .line 4584
    :cond_8
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatTiltPos()I

    move-result v1

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v3

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v2

    if-ne p1, v6, :cond_9

    move v4, v6

    :cond_9
    invoke-direct {p0, v1, v3, v2, v4}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTargetPos(IZIZ)I

    move-result v1

    .line 4585
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatTiltPos(I)V

    goto :goto_0

    :cond_a
    if-eq p1, v6, :cond_b

    if-ne p1, v5, :cond_d

    .line 4578
    :cond_b
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatTiltPos()I

    move-result v1

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v3

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v2

    if-ne p1, v6, :cond_c

    move v4, v6

    :cond_c
    invoke-direct {p0, v1, v3, v2, v4}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTargetPos(IZIZ)I

    move-result v1

    .line 4579
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatTiltPos(I)V

    .line 4602
    :cond_d
    :goto_0
    sget-object p1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewSeatBackrestMove, pilot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", targetPos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onNewSeatHeadrestMove(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 4606
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4609
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    .line 4611
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getChangeValue(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 4613
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-eq v0, v7, :cond_10

    if-eq v0, v4, :cond_a

    const/4 v3, 0x5

    if-eq v0, v3, :cond_7

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    const/4 v3, 0x7

    if-eq v0, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eq p1, v7, :cond_2

    if-ne p1, v4, :cond_16

    .line 4649
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowMidSeatHeadVerticalPos()I

    move-result v1

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v3

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v2

    if-ne p1, v7, :cond_3

    move v5, v6

    :cond_3
    invoke-direct {p0, v1, v3, v2, v5}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTargetPos(IZIZ)I

    move-result v1

    .line 4650
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowMidSeatHeadVerticalPos(I)V

    goto/16 :goto_2

    :cond_4
    if-eq p1, v7, :cond_5

    if-ne p1, v4, :cond_16

    .line 4642
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatHeadVerticalPos()I

    move-result v1

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v3

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v2

    if-ne p1, v7, :cond_6

    move v5, v6

    :cond_6
    invoke-direct {p0, v1, v3, v2, v5}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTargetPos(IZIZ)I

    move-result v1

    .line 4643
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRtSeatHeadVerticalPos(I)V

    goto/16 :goto_2

    :cond_7
    if-eq p1, v7, :cond_8

    if-ne p1, v4, :cond_16

    .line 4636
    :cond_8
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLtSeatHeadVerticalPos()I

    move-result v1

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v3

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v2

    if-ne p1, v7, :cond_9

    move v5, v6

    :cond_9
    invoke-direct {p0, v1, v3, v2, v5}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTargetPos(IZIZ)I

    move-result v1

    .line 4637
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLtSeatHeadVerticalPos(I)V

    goto/16 :goto_2

    :cond_a
    if-eq p1, v6, :cond_e

    if-ne p1, v3, :cond_b

    goto :goto_0

    :cond_b
    if-eq p1, v7, :cond_c

    if-ne p1, v4, :cond_16

    .line 4629
    :cond_c
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatHeadVerPos()I

    move-result v1

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v3

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v2

    if-ne p1, v7, :cond_d

    move v5, v6

    :cond_d
    invoke-direct {p0, v1, v3, v2, v5}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTargetPos(IZIZ)I

    move-result v1

    .line 4630
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatHeadVerPos(I)V

    goto :goto_2

    .line 4626
    :cond_e
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatHeadHorPos()I

    move-result v1

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v3

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v2

    if-ne p1, v6, :cond_f

    move v5, v6

    :cond_f
    invoke-direct {p0, v1, v3, v2, v5}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTargetPos(IZIZ)I

    move-result v1

    .line 4627
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatHeadHorPos(I)V

    goto :goto_2

    :cond_10
    if-eq p1, v6, :cond_14

    if-ne p1, v3, :cond_11

    goto :goto_1

    :cond_11
    if-eq p1, v7, :cond_12

    if-ne p1, v4, :cond_16

    .line 4620
    :cond_12
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatHeadVerPos()I

    move-result v1

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v3

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v2

    if-ne p1, v7, :cond_13

    move v5, v6

    :cond_13
    invoke-direct {p0, v1, v3, v2, v5}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTargetPos(IZIZ)I

    move-result v1

    .line 4621
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatHeadVerPos(I)V

    goto :goto_2

    .line 4617
    :cond_14
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatHeadHorPos()I

    move-result v1

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v3

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v2

    if-ne p1, v6, :cond_15

    move v5, v6

    :cond_15
    invoke-direct {p0, v1, v3, v2, v5}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTargetPos(IZIZ)I

    move-result v1

    .line 4618
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatHeadHorPos(I)V

    .line 4655
    :cond_16
    :goto_2
    sget-object p1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewSeatHeadrestMove, pilot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", targetPos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onNewSeatMove(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 4540
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4543
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    .line 4545
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getChangeValue(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 4547
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    if-eq p1, v6, :cond_2

    if-ne p1, v5, :cond_7

    .line 4557
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatHorPos()I

    move-result v1

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v3

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v2

    if-ne p1, v6, :cond_3

    move v4, v6

    :cond_3
    invoke-direct {p0, v1, v3, v2, v4}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTargetPos(IZIZ)I

    move-result v1

    .line 4558
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatHorPos(I)V

    goto :goto_0

    :cond_4
    if-eq p1, v6, :cond_5

    if-ne p1, v5, :cond_7

    .line 4551
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatHorPos()I

    move-result v1

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v3

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v2

    if-ne p1, v6, :cond_6

    move v4, v6

    :cond_6
    invoke-direct {p0, v1, v3, v2, v4}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTargetPos(IZIZ)I

    move-result v1

    .line 4552
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatHorPos(I)V

    .line 4563
    :cond_7
    :goto_0
    sget-object p1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewSeatMove, pilot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", targetPos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onOpenUserBook()V
    .locals 2

    .line 3219
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onOpenUserBook not support"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPsnSeatBackrestBack(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 4169
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getChangeValue(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 4171
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatTiltPos()I

    move-result v2

    .line 4172
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSource(Ljava/lang/String;)I

    move-result v3

    .line 4173
    sget-object v4, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPsnSeatBackrestBack:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", source: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v5, 0x53

    const/4 v6, 0x1

    if-lt v2, v5, :cond_1

    if-ne v3, v6, :cond_0

    goto :goto_0

    .line 4195
    :cond_0
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_tilt:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    goto :goto_2

    .line 4175
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4176
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    .line 4178
    :cond_2
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v2

    :goto_1
    const/16 v0, 0x55

    if-le v2, v0, :cond_3

    move v2, v0

    :cond_3
    const/16 v0, 0x14

    if-ge v2, v0, :cond_4

    move v2, v0

    .line 4186
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatTiltPos(I)V

    if-ne v3, v6, :cond_6

    .line 4188
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getKeepTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 4189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPsnSeatBackrestBack, keep: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_6

    .line 4191
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-virtual {p1, v1, v4, v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSeatMenuNotShowKeepTime(ZJ)V

    goto :goto_2

    .line 4198
    :cond_5
    sget-object p1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v0, "onPsnSeatBackrestBack"

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4199
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatStart(III)Z

    :cond_6
    :goto_2
    return-void
.end method

.method protected onPsnSeatBackrestForward(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 4132
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getChangeValue(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 4134
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatTiltPos()I

    move-result v3

    .line 4135
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSource(Ljava/lang/String;)I

    move-result v4

    .line 4136
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPsnSeatBackrestForward:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", source: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v6, 0x16

    if-gt v3, v6, :cond_1

    if-ne v4, v1, :cond_0

    goto :goto_0

    .line 4158
    :cond_0
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_tilt:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    goto :goto_2

    .line 4138
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4139
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_1

    .line 4141
    :cond_2
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v3

    :goto_1
    const/16 v0, 0x55

    if-le v3, v0, :cond_3

    move v3, v0

    :cond_3
    const/16 v0, 0x14

    if-ge v3, v0, :cond_4

    move v3, v0

    .line 4149
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatTiltPos(I)V

    if-ne v4, v1, :cond_6

    .line 4151
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getKeepTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 4152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPsnSeatBackrestForward, keep: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-eqz p1, :cond_6

    .line 4154
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-virtual {p1, v2, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSeatMenuNotShowKeepTime(ZJ)V

    goto :goto_2

    .line 4161
    :cond_5
    sget-object p1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v0, "onPsnSeatBackrestForward"

    invoke-static {p1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4162
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatStart(III)Z

    :cond_6
    :goto_2
    return-void
.end method

.method protected onPsnSeatMoveBack(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 4030
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getChangeValue(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 4032
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatHorzPos()I

    move-result v4

    .line 4033
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSource(Ljava/lang/String;)I

    move-result v5

    .line 4034
    sget-object v6, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPsnSeatMoveBack:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", source: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    rsub-int/lit8 v7, v4, 0x0

    .line 4035
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v1, :cond_1

    if-ne v5, v2, :cond_0

    goto :goto_0

    .line 4053
    :cond_0
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_rear:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    goto :goto_2

    .line 4036
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4037
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v0

    sub-int/2addr v4, v0

    goto :goto_1

    .line 4039
    :cond_2
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v4

    :goto_1
    if-gez v4, :cond_3

    move v4, v3

    .line 4044
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatHorzPos(I)V

    if-ne v5, v2, :cond_5

    .line 4046
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getKeepTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 4047
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPsnSeatMoveForward, keep: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_5

    .line 4049
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {p1, v3, v4, v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSeatMenuNotShowKeepTime(ZJ)V

    goto :goto_2

    .line 4056
    :cond_4
    sget-object p1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v0, "onPsnSeatMoveBack"

    invoke-static {p1, v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4057
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x3

    invoke-virtual {p1, v2, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatStart(III)Z

    :cond_5
    :goto_2
    return-void
.end method

.method protected onPsnSeatMoveDown(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 4098
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getChangeValue(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 4100
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatVerPos()I

    move-result v3

    .line 4101
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSource(Ljava/lang/String;)I

    move-result v4

    .line 4102
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPsnSeatMoveDown:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", source: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    rsub-int/lit8 v6, v3, 0x0

    .line 4103
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v1, :cond_1

    if-ne v4, v7, :cond_0

    goto :goto_0

    .line 4121
    :cond_0
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_lowest:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    goto :goto_2

    .line 4104
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4105
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_1

    .line 4107
    :cond_2
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v3

    :goto_1
    if-gez v3, :cond_3

    move v3, v2

    .line 4112
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatVerPos(I)V

    if-ne v4, v7, :cond_5

    .line 4114
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getKeepTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 4115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPsnSeatMoveDown, keep: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-eqz p1, :cond_5

    .line 4117
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-virtual {p1, v2, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSeatMenuNotShowKeepTime(ZJ)V

    goto :goto_2

    .line 4124
    :cond_4
    sget-object p1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v0, "onPsnSeatMoveDown"

    invoke-static {p1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4125
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x3

    invoke-virtual {p1, v1, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatStart(III)Z

    :cond_5
    :goto_2
    return-void
.end method

.method protected onPsnSeatMoveForward(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 3996
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getChangeValue(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 3998
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatHorzPos()I

    move-result v3

    .line 3999
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSource(Ljava/lang/String;)I

    move-result v4

    .line 4000
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPsnSeatMoveForward:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", source: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    rsub-int/lit8 v6, v3, 0x5a

    .line 4001
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    if-ne v4, v1, :cond_0

    goto :goto_0

    .line 4019
    :cond_0
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_foremost:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    goto :goto_2

    .line 4002
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4003
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_1

    .line 4005
    :cond_2
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v3

    :goto_1
    const/16 v0, 0x5a

    if-le v3, v0, :cond_3

    move v3, v0

    .line 4010
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatHorzPos(I)V

    if-ne v4, v1, :cond_5

    .line 4012
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getKeepTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 4013
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPsnSeatMoveForward, keep: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-eqz p1, :cond_5

    .line 4015
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-virtual {p1, v2, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSeatMenuNotShowKeepTime(ZJ)V

    goto :goto_2

    .line 4022
    :cond_4
    sget-object p1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v0, "onPsnSeatMoveForward"

    invoke-static {p1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4023
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x3

    invoke-virtual {p1, v1, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatStart(III)Z

    :cond_5
    :goto_2
    return-void
.end method

.method protected onPsnSeatMoveUp(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 4064
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getChangeValue(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 4066
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatVerPos()I

    move-result v4

    .line 4067
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSource(Ljava/lang/String;)I

    move-result v5

    .line 4068
    sget-object v6, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPsnSeatMoveUp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", source: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    rsub-int/lit8 v7, v4, 0x64

    .line 4069
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v1, :cond_1

    if-ne v5, v2, :cond_0

    goto :goto_0

    .line 4087
    :cond_0
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_highest:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    goto :goto_2

    .line 4070
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4071
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_1

    .line 4073
    :cond_2
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v4

    :goto_1
    const/16 v0, 0x64

    if-le v4, v0, :cond_3

    move v4, v0

    .line 4078
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatVerPos(I)V

    if-ne v5, v2, :cond_5

    .line 4080
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getKeepTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 4081
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPsnSeatMoveUp, keep: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_5

    .line 4083
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {p1, v3, v4, v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSeatMenuNotShowKeepTime(ZJ)V

    goto :goto_2

    .line 4090
    :cond_4
    sget-object p1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v0, "onPsnSeatMoveUp"

    invoke-static {p1, v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4091
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x3

    invoke-virtual {p1, v1, v2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatStart(III)Z

    :cond_5
    :goto_2
    return-void
.end method

.method public onQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "data",
            "callback"
        }
    .end annotation

    .line 1631
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "control.welcome.mode.soundeffect.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x9b

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "carcontrol.seat.mode.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x9a

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "gui.page.open.state.carcontrol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x99

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "control.swing.current.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x98

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "carcontrol.trunk.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x97

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "control.light.atmosphere.current.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x96

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "control.waist.set.dialog.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x95

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "control.swing.strength.current"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x94

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "control.window.lock.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x93

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "carcontrol.get.new.seat.position"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x92

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "control.as.hoist.mode.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x91

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "control.show.mode.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x90

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "control.seat.easy.entry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x8f

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "control.welcome.mode.soundeffect.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x8e

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "control.lamp.signal.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x8d

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "control.scissor.door.left.open.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x8c

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "control.sliding.door.control.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x8b

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "control.seat.lumber.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x8a

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "control.is.tairpressure.normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0x89

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "control.current.light.top.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x88

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "control.scissor.door.right.close.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x87

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "control.light.atmosphere.color.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0x86

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "carcontrol.get.psn.support.seat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v3, 0x85

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "carcontrol.get.close.trunk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0x84

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "charge.alternating.port.on.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v3, 0x83

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "control.door.lock.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v3, 0x82

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "carcontrol.support.key.park"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v3, 0x81

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "control.steering.assist.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v3, 0x80

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "control.leg.position.get"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v3, 0x7f

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "carcontrol.get.new.seat.backrest.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v3, 0x7e

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "control.massage.strength.current"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v3, 0x7d

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "control.modes.driving.xsport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v3, 0x7c

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "carcontrol.support.energy.recycle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v3, 0x7b

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "control.shortcut.key.setting.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v3, 0x7a

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "control.trailer.mode.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v3, 0x79

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "control.trunk.current.angle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v3, 0x78

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "gui.page.close.carcontrol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v3, 0x77

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "control.xsport.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v3, 0x76

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "control.seat.back.fold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v3, 0x75

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "control.support.light.atmosphere"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v3, 0x74

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "control.electric.curtain.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v3, 0x73

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "control.low.speed.analog.sound.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v3, 0x72

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "control.scissor.door.right.open.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v3, 0x71

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "control.easy.load.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v3, 0x70

    goto/16 :goto_0

    :sswitch_2c
    const-string/jumbo v0, "system.digital.rear.mirror.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v3, 0x6f

    goto/16 :goto_0

    :sswitch_2d
    const-string/jumbo v0, "status.spacecapsule.submode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v3, 0x6e

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "charge.direct.port.off.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v3, 0x6d

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "control.control.steering.mode.adjustable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v3, 0x6c

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "carcontrol.get.new.seat.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v3, 0x6b

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "control.current.light.top.brightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v3, 0x6a

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "control.mirror.rear.set.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v3, 0x69

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "control.first.time.light.geek"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v3, 0x68

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "charge.alternating.port.off.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v3, 0x67

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "control.child.safety.locks.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v3, 0x66

    goto/16 :goto_0

    :sswitch_36
    const-string v0, "control.light.home.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v3, 0x65

    goto/16 :goto_0

    :sswitch_37
    const-string v0, "charge.alternating.port.off.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v3, 0x64

    goto/16 :goto_0

    :sswitch_38
    const-string v0, "carcontrol.mirror.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v3, 0x63

    goto/16 :goto_0

    :sswitch_39
    const-string v0, "carcontrol.get.window.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v3, 0x62

    goto/16 :goto_0

    :sswitch_3a
    const-string v0, "control.modes.driving.new.xsport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v3, 0x61

    goto/16 :goto_0

    :sswitch_3b
    const-string v0, "carcontrol.support.driving.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v3, 0x60

    goto/16 :goto_0

    :sswitch_3c
    const-string v0, "control.seat.zero.gravity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/16 v3, 0x5f

    goto/16 :goto_0

    :sswitch_3d
    const-string v0, "control.as.transport.mode.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/16 v3, 0x5e

    goto/16 :goto_0

    :sswitch_3e
    const-string v0, "control.welcome.mode.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/16 v3, 0x5d

    goto/16 :goto_0

    :sswitch_3f
    const-string v0, "control.waist.position.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/16 v3, 0x5c

    goto/16 :goto_0

    :sswitch_40
    const-string v0, "control.seat.position.contain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto/16 :goto_0

    :cond_40
    const/16 v3, 0x5b

    goto/16 :goto_0

    :sswitch_41
    const-string v0, "control.as.xpilot.mode.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_0

    :cond_41
    const/16 v3, 0x5a

    goto/16 :goto_0

    :sswitch_42
    const-string v0, "control.rearview.mirror.reverse.down.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_0

    :cond_42
    const/16 v3, 0x59

    goto/16 :goto_0

    :sswitch_43
    const-string v0, "control.get.windows.state.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_0

    :cond_43
    const/16 v3, 0x58

    goto/16 :goto_0

    :sswitch_44
    const-string v0, "query.seat.memory.configs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto/16 :goto_0

    :cond_44
    const/16 v3, 0x57

    goto/16 :goto_0

    :sswitch_45
    const-string/jumbo v0, "unity.page.support.carcontrol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_0

    :cond_45
    const/16 v3, 0x56

    goto/16 :goto_0

    :sswitch_46
    const-string v0, "control.easy.load.auto.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_0

    :cond_46
    const/16 v3, 0x55

    goto/16 :goto_0

    :sswitch_47
    const-string v0, "control.psn.welcome.mode.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_0

    :cond_47
    const/16 v3, 0x54

    goto/16 :goto_0

    :sswitch_48
    const-string v0, "carcontrol.support.driving.crosscountry.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_0

    :cond_48
    const/16 v3, 0x53

    goto/16 :goto_0

    :sswitch_49
    const-string v0, "control.seat.habit.current.num"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_0

    :cond_49
    const/16 v3, 0x52

    goto/16 :goto_0

    :sswitch_4a
    const-string v0, "control.intelligent.high.light.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_0

    :cond_4a
    const/16 v3, 0x51

    goto/16 :goto_0

    :sswitch_4b
    const-string v0, "charge.direct.port.on.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_0

    :cond_4b
    const/16 v3, 0x50

    goto/16 :goto_0

    :sswitch_4c
    const-string v0, "control.sliding.door.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto/16 :goto_0

    :cond_4c
    const/16 v3, 0x4f

    goto/16 :goto_0

    :sswitch_4d
    const-string v0, "control.light.height.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_0

    :cond_4d
    const/16 v3, 0x4e

    goto/16 :goto_0

    :sswitch_4e
    const-string v0, "control.massage.running.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto/16 :goto_0

    :cond_4e
    const/16 v3, 0x4d

    goto/16 :goto_0

    :sswitch_4f
    const-string v0, "control.modes.driving.new.espbpf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_0

    :cond_4f
    const/16 v3, 0x4c

    goto/16 :goto_0

    :sswitch_50
    const-string v0, "control.light.height.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_0

    :cond_50
    const/16 v3, 0x4b

    goto/16 :goto_0

    :sswitch_51
    const-string v0, "control.esp.fault.get"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_0

    :cond_51
    const/16 v3, 0x4a

    goto/16 :goto_0

    :sswitch_52
    const-string v0, "control.light.atmosphere.current.color.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto/16 :goto_0

    :cond_52
    const/16 v3, 0x49

    goto/16 :goto_0

    :sswitch_53
    const-string v0, "control.light.atmosphere.double.color.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_0

    :cond_53
    const/16 v3, 0x48

    goto/16 :goto_0

    :sswitch_54
    const-string v0, "carcontrol.support.driving.comfort.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_0

    :cond_54
    const/16 v3, 0x47

    goto/16 :goto_0

    :sswitch_55
    const-string v0, "control.steering.current.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto/16 :goto_0

    :cond_55
    const/16 v3, 0x46

    goto/16 :goto_0

    :sswitch_56
    const-string v0, "control.child.safety.mode.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_0

    :cond_56
    const/16 v3, 0x45

    goto/16 :goto_0

    :sswitch_57
    const-string v0, "control.suspension.welcome.mode.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto/16 :goto_0

    :cond_57
    const/16 v3, 0x44

    goto/16 :goto_0

    :sswitch_58
    const-string v0, "control.car.light.welcome.mode.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto/16 :goto_0

    :cond_58
    const/16 v3, 0x43

    goto/16 :goto_0

    :sswitch_59
    const-string v0, "control.auto.logo.light.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto/16 :goto_0

    :cond_59
    const/16 v3, 0x42

    goto/16 :goto_0

    :sswitch_5a
    const-string v0, "control.narrowroad.assist.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto/16 :goto_0

    :cond_5a
    const/16 v3, 0x41

    goto/16 :goto_0

    :sswitch_5b
    const-string/jumbo v0, "xpu.ngp.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto/16 :goto_0

    :cond_5b
    const/16 v3, 0x40

    goto/16 :goto_0

    :sswitch_5c
    const-string v0, "control.modes.brake.current.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto/16 :goto_0

    :cond_5c
    const/16 v3, 0x3f

    goto/16 :goto_0

    :sswitch_5d
    const-string v0, "carcontrol.get.new.seat.backrest.position"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto/16 :goto_0

    :cond_5d
    const/16 v3, 0x3e

    goto/16 :goto_0

    :sswitch_5e
    const-string v0, "control.suspension.auto.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto/16 :goto_0

    :cond_5e
    const/16 v3, 0x3d

    goto/16 :goto_0

    :sswitch_5f
    const-string v0, "control.narrowroad.assist.settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_0

    :cond_5f
    const/16 v3, 0x3c

    goto/16 :goto_0

    :sswitch_60
    const-string v0, "control.light.language.autoplay.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto/16 :goto_0

    :cond_60
    const/16 v3, 0x3b

    goto/16 :goto_0

    :sswitch_61
    const-string v0, "control.swing.running.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto/16 :goto_0

    :cond_61
    const/16 v3, 0x3a

    goto/16 :goto_0

    :sswitch_62
    const-string v0, "control.modes.driving.new.energy.recycle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_0

    :cond_62
    const/16 v3, 0x39

    goto/16 :goto_0

    :sswitch_63
    const-string v0, "control.xkey.setting.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto/16 :goto_0

    :cond_63
    const/16 v3, 0x38

    goto/16 :goto_0

    :sswitch_64
    const-string v0, "control.xpedal.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto/16 :goto_0

    :cond_64
    const/16 v3, 0x37

    goto/16 :goto_0

    :sswitch_65
    const-string v0, "control.light.language.setting.preview.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto/16 :goto_0

    :cond_65
    const/16 v3, 0x36

    goto/16 :goto_0

    :sswitch_66
    const-string v0, "control.rearview.doorknob.auto.open.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto/16 :goto_0

    :cond_66
    const/16 v3, 0x35

    goto/16 :goto_0

    :sswitch_67
    const-string v0, "charge.alternating.port.on.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto/16 :goto_0

    :cond_67
    const/16 v3, 0x34

    goto/16 :goto_0

    :sswitch_68
    const-string v0, "control.vip.chair.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto/16 :goto_0

    :cond_68
    const/16 v3, 0x33

    goto/16 :goto_0

    :sswitch_69
    const-string v0, "control.energy.recycle.level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto/16 :goto_0

    :cond_69
    const/16 v3, 0x32

    goto/16 :goto_0

    :sswitch_6a
    const-string v0, "charge.direct.port.off.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto/16 :goto_0

    :cond_6a
    const/16 v3, 0x31

    goto/16 :goto_0

    :sswitch_6b
    const-string v0, "control.suspension.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto/16 :goto_0

    :cond_6b
    const/16 v3, 0x30

    goto/16 :goto_0

    :sswitch_6c
    const-string v0, "control.window.init.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto/16 :goto_0

    :cond_6c
    const/16 v3, 0x2f

    goto/16 :goto_0

    :sswitch_6d
    const-string v0, "control.light.top.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto/16 :goto_0

    :cond_6d
    const/16 v3, 0x2e

    goto/16 :goto_0

    :sswitch_6e
    const-string v0, "control.intelligent.high.light.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto/16 :goto_0

    :cond_6e
    const/16 v3, 0x2d

    goto/16 :goto_0

    :sswitch_6f
    const-string v0, "control.suspension.flat.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto/16 :goto_0

    :cond_6f
    const/16 v3, 0x2c

    goto/16 :goto_0

    :sswitch_70
    const-string v0, "control.vpa.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto/16 :goto_0

    :cond_70
    const/16 v3, 0x2b

    goto/16 :goto_0

    :sswitch_71
    const-string v0, "control.suspension.fix.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto/16 :goto_0

    :cond_71
    const/16 v3, 0x2a

    goto/16 :goto_0

    :sswitch_72
    const-string v0, "control.trunk.unlock.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    goto/16 :goto_0

    :cond_72
    const/16 v3, 0x29

    goto/16 :goto_0

    :sswitch_73
    const-string v0, "carcontrol.support.close.mirror"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    goto/16 :goto_0

    :cond_73
    const/16 v3, 0x28

    goto/16 :goto_0

    :sswitch_74
    const-string v0, "control.light.atmosphere.brightness.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto/16 :goto_0

    :cond_74
    const/16 v3, 0x27

    goto/16 :goto_0

    :sswitch_75
    const-string v0, "control.lidar.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto/16 :goto_0

    :cond_75
    const/16 v3, 0x26

    goto/16 :goto_0

    :sswitch_76
    const-string v0, "control.current.suspension.height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    goto/16 :goto_0

    :cond_76
    const/16 v3, 0x25

    goto/16 :goto_0

    :sswitch_77
    const-string v0, "carcontrol.get.open.trunk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto/16 :goto_0

    :cond_77
    const/16 v3, 0x24

    goto/16 :goto_0

    :sswitch_78
    const-string v0, "control.dc.charge.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    goto/16 :goto_0

    :cond_78
    const/16 v3, 0x23

    goto/16 :goto_0

    :sswitch_79
    const-string v0, "control.apa.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto/16 :goto_0

    :cond_79
    const/16 v3, 0x22

    goto/16 :goto_0

    :sswitch_7a
    const-string v0, "control.scissor.door.left.close.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto/16 :goto_0

    :cond_7a
    const/16 v3, 0x21

    goto/16 :goto_0

    :sswitch_7b
    const-string v0, "control.wireless.charging.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto/16 :goto_0

    :cond_7b
    const/16 v3, 0x20

    goto/16 :goto_0

    :sswitch_7c
    const-string v0, "charge.direct.port.on.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto/16 :goto_0

    :cond_7c
    const/16 v3, 0x1f

    goto/16 :goto_0

    :sswitch_7d
    const-string v0, "control.leg.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto/16 :goto_0

    :cond_7d
    const/16 v3, 0x1e

    goto/16 :goto_0

    :sswitch_7e
    const-string v0, "carcontrol.set.speech.wakeup.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto/16 :goto_0

    :cond_7e
    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_7f
    const-string v0, "control.capsule.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    goto/16 :goto_0

    :cond_7f
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_80
    const-string v0, "control.light.atmosphere.current.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto/16 :goto_0

    :cond_80
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_81
    const-string v0, "carcontrol.support.energy.recycle.reason"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    goto/16 :goto_0

    :cond_81
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_82
    const-string v0, "control.modes.driving.new.steeringeps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    goto/16 :goto_0

    :cond_82
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_83
    const-string v0, "carcontrol.get.support.seat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto/16 :goto_0

    :cond_83
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_84
    const-string v0, "control.massage.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    goto/16 :goto_0

    :cond_84
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_85
    const-string v0, "control.wiper.current.level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto/16 :goto_0

    :cond_85
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_86
    const-string v0, "control.sliding.door.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    goto/16 :goto_0

    :cond_86
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_87
    const-string v0, "control.scissor.door.right.running.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    goto/16 :goto_0

    :cond_87
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_88
    const-string v0, "control.new.drive.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto/16 :goto_0

    :cond_88
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_89
    const-string v0, "control.modes.driving.new.asheight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    goto/16 :goto_0

    :cond_89
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_8a
    const-string v0, "carcontrol.extra.trunk.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto/16 :goto_0

    :cond_8a
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_8b
    const-string v0, "control.swing.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto/16 :goto_0

    :cond_8b
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_8c
    const-string v0, "control.leg.height.get"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto/16 :goto_0

    :cond_8c
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_8d
    const-string v0, "control.light.atmosphere.mode.set.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    goto/16 :goto_0

    :cond_8d
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_8e
    const-string v0, "control.driving.racer.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    goto/16 :goto_0

    :cond_8e
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_8f
    const-string v0, "control.available.mileage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    goto/16 :goto_0

    :cond_8f
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_90
    const-string v0, "carcontrol.get.seat.headrest.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    goto/16 :goto_0

    :cond_90
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_91
    const-string v0, "control.back.welcome.mode.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    goto/16 :goto_0

    :cond_91
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_92
    const-string v0, "control.light.atmosphere.color.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    goto/16 :goto_0

    :cond_92
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_93
    const-string v0, "control.tail.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    goto/16 :goto_0

    :cond_93
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_94
    const-string v0, "control.suspension.rigidity.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    goto :goto_0

    :cond_94
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_95
    const-string v0, "carcontrol.get.seat.headrest.position"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto :goto_0

    :cond_95
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_96
    const-string v0, "control.auto.tail.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto :goto_0

    :cond_96
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_97
    const-string v0, "control.scissor.door.left.running.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    goto :goto_0

    :cond_97
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_98
    const-string v0, "gui.page.open.carcontrol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto :goto_0

    :cond_98
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_99
    const-string v0, "control.blanket.light.welcome.mode.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    goto :goto_0

    :cond_99
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_9a
    const-string v0, "control.massage.current.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    goto :goto_0

    :cond_9a
    move v3, v1

    goto :goto_0

    :sswitch_9b
    const-string v0, "control.comfortable.driving.mode.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    goto :goto_0

    :cond_9b
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 1882
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getWelcomeModeSoundEffectStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1778
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSeatModeSupport(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1741
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getNapa2DPageOpenState(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1966
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSwingCurrentStatus(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1787
    :pswitch_4
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTrunkStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1999
    :pswitch_5
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getLightAtmosphereCurrentMode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1948
    :pswitch_6
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportWaistDialog()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1972
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSwingCurrentStrength(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2043
    :pswitch_8
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getWindowLockStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1762
    :pswitch_9
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportNewSeatPosition(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1915
    :pswitch_a
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getAsHoistModeStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2023
    :pswitch_b
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getShowModeStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2076
    :pswitch_c
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onStartSeatEasyEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1879
    :pswitch_d
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportWelcomeModeSoundEffect()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1837
    :pswitch_e
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getControlLampSignalSupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1802
    :pswitch_f
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getControlScissorDoorLeftOpenSupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1825
    :pswitch_10
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSlidingDoorControlStatus(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1945
    :pswitch_11
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportSeatKeySettings()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1672
    :pswitch_12
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isTirePressureNormal()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2005
    :pswitch_13
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getLightTopStatus(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1811
    :pswitch_14
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getControlScissorDoorRightCloseSupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1996
    :pswitch_15
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getLightAtmosphereColorSupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1756
    :pswitch_16
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportPsnSeat()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1642
    :pswitch_17
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportCloseTrunk()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1675
    :pswitch_18
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSupportControlChargePort(II)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2046
    :pswitch_19
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getDoorLockStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1981
    :pswitch_1a
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getKeyParkSupport(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2055
    :pswitch_1b
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSteeringAssistStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1696
    :pswitch_1c
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getDirection(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getLegPosition(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1766
    :pswitch_1d
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportNewSeatBackrest(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1960
    :pswitch_1e
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMassageCurrentStrength(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1990
    :pswitch_1f
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onModesDrivingXsport(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1660
    :pswitch_20
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSupportEnergyRecycle()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1873
    :pswitch_21
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportDoorKeySetting(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1933
    :pswitch_22
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTrailerModeStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2067
    :pswitch_23
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getCurrentTrunkAngle()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1744
    :pswitch_24
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->closeNapa2DPageUI(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2014
    :pswitch_25
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getXSportSupport(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2079
    :pswitch_26
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onStartSeatFold(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1669
    :pswitch_27
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSupportAtmosphere()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1828
    :pswitch_28
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getControlElectricCurtainSupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1793
    :pswitch_29
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getControlLowSpeedAnalogSoundSupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1805
    :pswitch_2a
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getControlScissorDoorRightOpenSupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2032
    :pswitch_2b
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getEasyLoadSupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2085
    :pswitch_2c
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getImsModeStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2017
    :pswitch_2d
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSleepMode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1678
    :pswitch_2e
    invoke-virtual {p0, v1, v1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSupportControlChargePort(II)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1732
    :pswitch_2f
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSteeringModeAdjustable()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1759
    :pswitch_30
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportNewSeat(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2002
    :pswitch_31
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getLightTopBrightness()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1687
    :pswitch_32
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSupportControlMirror()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2011
    :pswitch_33
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getFirsTimeLightGeek(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1699
    :pswitch_34
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getStatusChargePortControl(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1924
    :pswitch_35
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getChildSafetyLocksStatus(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2049
    :pswitch_36
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getLightHomeStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1681
    :pswitch_37
    invoke-virtual {p0, v2, v2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSupportControlChargePort(II)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1636
    :pswitch_38
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMirrorStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1645
    :pswitch_39
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getWindowStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2088
    :pswitch_3a
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setXSportDrivingMode(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1666
    :pswitch_3b
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSupportDrivingMode()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2073
    :pswitch_3c
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onStartSeatZeroGravity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1912
    :pswitch_3d
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getAsTransportModeStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1876
    :pswitch_3e
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportWelcomeMode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1753
    :pswitch_3f
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportWaistPosition(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2082
    :pswitch_40
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onStartSeatStow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1909
    :pswitch_41
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getAsXPilotModeStatus(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1897
    :pswitch_42
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportMirrorReverseMode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1831
    :pswitch_43
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getControlWindowsStateSupport()[F

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2070
    :pswitch_44
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSeatMemoryConfigs()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1747
    :pswitch_45
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getUnityPageOpenState(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2035
    :pswitch_46
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getEasyLoadAutoSupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1885
    :pswitch_47
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportPsnWelcomeMode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1651
    :pswitch_48
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSupportDrivingCrossCountryMode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2039
    :pswitch_49
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getCurrentSeatHabitNum(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1867
    :pswitch_4a
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getIhbStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1684
    :pswitch_4b
    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSupportControlChargePort(II)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1711
    :pswitch_4c
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getLightHeightSupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1957
    :pswitch_4d
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMassageRunningMode(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2100
    :pswitch_4e
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setEspBpfMode(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1714
    :pswitch_4f
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getLightHeightStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1654
    :pswitch_50
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getEspFault()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1726
    :pswitch_51
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getAtmosphereCurrentColorMode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1723
    :pswitch_52
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getAtmosphereDoubleColorStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1648
    :pswitch_53
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSupportDrivingComfortMode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1735
    :pswitch_54
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSteeringCurrentMode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1921
    :pswitch_55
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportChildSafetyMode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1978
    :pswitch_56
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportSuspensionWelcomeMode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1891
    :pswitch_57
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getCarLightWelcomeSupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_58
    const-string p2, "isSupportRearLogoLight"

    .line 2052
    invoke-static {p2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2058
    :pswitch_59
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getNarrowroadAssistStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1843
    :pswitch_5a
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getNgpStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2064
    :pswitch_5b
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getCurrentBrakeMode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1769
    :pswitch_5c
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportNewSeatBackrestPosition(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1942
    :pswitch_5d
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportSuspensionAuto()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2061
    :pswitch_5e
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getNarrowroadAssistSettings()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1861
    :pswitch_5f
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getControlLightLanguageAutoPlayState()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1969
    :pswitch_60
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSwingRunningMode(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2091
    :pswitch_61
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getState(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->toEnergyRecycleGradeFromVui(I)I

    move-result p2

    invoke-direct {p0, p2, v2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setEnergyRecycleGrade(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1870
    :pswitch_62
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getControlXkeySettingSupport(Ljava/lang/Integer;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1796
    :pswitch_63
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getControlXpedalStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1858
    :pswitch_64
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getControlLightLanguageSettingPreviewSupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1903
    :pswitch_65
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportDoorKnobAutoOpen()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1705
    :pswitch_66
    invoke-virtual {p0, v2, v2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getStatusChargePortControl(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1846
    :pswitch_67
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getVipChairStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1657
    :pswitch_68
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getEnerygyRecycleLevel()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1702
    :pswitch_69
    invoke-virtual {p0, v1, v1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getStatusChargePortControl(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1906
    :pswitch_6a
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSuspensionSupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1900
    :pswitch_6b
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getCarWindowCanControl(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2008
    :pswitch_6c
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getLightTopSupport(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1864
    :pswitch_6d
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getIhbSupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1939
    :pswitch_6e
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSuspensionFlatStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1987
    :pswitch_6f
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getVpaStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1936
    :pswitch_70
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSuspensionFixStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1781
    :pswitch_71
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSupportUnlockTrunk()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1633
    :pswitch_72
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->isSupportCloseMirror()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1717
    :pswitch_73
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getAtmosphereBrightnessStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1840
    :pswitch_74
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getControlLidarSupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1918
    :pswitch_75
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getCurrentSuspensionHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1639
    :pswitch_76
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportOpenTrunk()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1852
    :pswitch_77
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getInDcCharge()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1984
    :pswitch_78
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getApaStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1808
    :pswitch_79
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getControlScissorDoorLeftCloseSupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1894
    :pswitch_7a
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportCwc(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1708
    :pswitch_7b
    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getStatusChargePortControl(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1693
    :pswitch_7c
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getDirection(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportLeg(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1790
    :pswitch_7d
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getDoorKeyValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1849
    :pswitch_7e
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getCapsuleCurrentMode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1729
    :pswitch_7f
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getAtmosphereCurrentStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1799
    :pswitch_80
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getControlSupportEnergyRecycleReason()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2094
    :pswitch_81
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setSteeringMode(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1663
    :pswitch_82
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportSeat()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1951
    :pswitch_83
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportMassage(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1750
    :pswitch_84
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getWiperInterval()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1820
    :pswitch_85
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSlideDoorSupport()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1822
    :pswitch_86
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSlideDoorStatus(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1817
    :pswitch_87
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getControlScissorDoorRightRunningSupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1927
    :pswitch_88
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getNewDrivingMode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2097
    :pswitch_89
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2, v2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->setAsHeight(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1784
    :pswitch_8a
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getExtraTrunkStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1963
    :pswitch_8b
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportSwing()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1690
    :pswitch_8c
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getLegHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1993
    :pswitch_8d
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getLightAtmosphereModeSupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1930
    :pswitch_8e
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getDrivingRacerSupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1855
    :pswitch_8f
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getAvailableMileage()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1772
    :pswitch_90
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportSeatHeadrest(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1975
    :pswitch_91
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportBackWelcomeMode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1720
    :pswitch_92
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getAtmosphereColorStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2026
    :pswitch_93
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getArsStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 2020
    :pswitch_94
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSuspensionRigiditySupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1775
    :pswitch_95
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSupportSeatHeadrestPosition(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 2029
    :pswitch_96
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getArsWorkMode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1814
    :pswitch_97
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getControlScissorDoorLeftRunningSupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1738
    :pswitch_98
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getGuiPageOpenState(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1888
    :pswitch_99
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getBlanketLightWelcomeSupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1954
    :pswitch_9a
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMassageCurrentStatus(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1834
    :pswitch_9b
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getControlComfortableDrivingModeSupport()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->reply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e6ec07c -> :sswitch_9b
        -0x7bd2f385 -> :sswitch_9a
        -0x7b558e9c -> :sswitch_99
        -0x7a79595f -> :sswitch_98
        -0x79409aea -> :sswitch_97
        -0x78a26dfe -> :sswitch_96
        -0x78615be9 -> :sswitch_95
        -0x73127b9c -> :sswitch_94
        -0x72013fc1 -> :sswitch_93
        -0x7119cf80 -> :sswitch_92
        -0x6f7cc11a -> :sswitch_91
        -0x6b9da0df -> :sswitch_90
        -0x6abd93ac -> :sswitch_8f
        -0x6923c916 -> :sswitch_8e
        -0x6547bb65 -> :sswitch_8d
        -0x640aed60 -> :sswitch_8c
        -0x62d095f2 -> :sswitch_8b
        -0x62be9e71 -> :sswitch_8a
        -0x5e653da3 -> :sswitch_89
        -0x5e3fe2ba -> :sswitch_88
        -0x5c6533ef -> :sswitch_87
        -0x5c3542c0 -> :sswitch_86
        -0x5ab47ae5 -> :sswitch_85
        -0x5a8ba425 -> :sswitch_84
        -0x585daf5f -> :sswitch_83
        -0x581d11ed -> :sswitch_82
        -0x554daedf -> :sswitch_81
        -0x54fd9f16 -> :sswitch_80
        -0x5454664b -> :sswitch_7f
        -0x542e513a -> :sswitch_7e
        -0x53ccc322 -> :sswitch_7d
        -0x53012961 -> :sswitch_7c
        -0x4ece17af -> :sswitch_7b
        -0x4b9ff631 -> :sswitch_7a
        -0x47f46f81 -> :sswitch_79
        -0x478f5a6d -> :sswitch_78
        -0x471f7bd3 -> :sswitch_77
        -0x461e7e2e -> :sswitch_76
        -0x455e45f8 -> :sswitch_75
        -0x443c2594 -> :sswitch_74
        -0x43f30207 -> :sswitch_73
        -0x41b33570 -> :sswitch_72
        -0x41769b35 -> :sswitch_71
        -0x3dee27f6 -> :sswitch_70
        -0x3dd3e4d9 -> :sswitch_6f
        -0x3d92c8cd -> :sswitch_6e
        -0x3cdf8ef3 -> :sswitch_6d
        -0x3aec3f60 -> :sswitch_6c
        -0x39daa111 -> :sswitch_6b
        -0x38c562ad -> :sswitch_6a
        -0x38a07c8c -> :sswitch_69
        -0x385a1a23 -> :sswitch_68
        -0x379486bb -> :sswitch_67
        -0x36ffcf8c -> :sswitch_66
        -0x359cd902 -> :sswitch_65
        -0x3552a56c -> :sswitch_64
        -0x34c7b2e5 -> :sswitch_63
        -0x2e79b34f -> :sswitch_62
        -0x2d5a3e6d -> :sswitch_61
        -0x2bc5080d -> :sswitch_60
        -0x290818ba -> :sswitch_5f
        -0x28731c90 -> :sswitch_5e
        -0x27a4ba02 -> :sswitch_5d
        -0x23fcfe36 -> :sswitch_5c
        -0x23a69606 -> :sswitch_5b
        -0x2336982b -> :sswitch_5a
        -0x22494efe -> :sswitch_59
        -0x21306f8d -> :sswitch_58
        -0x1f4b3590 -> :sswitch_57
        -0x1ec95903 -> :sswitch_56
        -0x1bd3ea7c -> :sswitch_55
        -0x19c93b30 -> :sswitch_54
        -0x191ed129 -> :sswitch_53
        -0x14c341ba -> :sswitch_52
        -0x14ba52b3 -> :sswitch_51
        -0x1102fa50 -> :sswitch_50
        -0x106f2f66 -> :sswitch_4f
        -0xd5f181a -> :sswitch_4e
        -0xcd5fe2f -> :sswitch_4d
        -0xb505f9f -> :sswitch_4c
        -0xa9db13e -> :sswitch_4b
        -0xa5363f2 -> :sswitch_4a
        -0x94883e1 -> :sswitch_49
        -0x7546030 -> :sswitch_48
        -0x6b5ffbc -> :sswitch_47
        -0x3a970a3 -> :sswitch_46
        -0x20df732 -> :sswitch_45
        -0x15c9599 -> :sswitch_44
        0x606d5e -> :sswitch_43
        0x27418aa -> :sswitch_42
        0x3c3745a -> :sswitch_41
        0x3c5b007 -> :sswitch_40
        0x7b35269 -> :sswitch_3f
        0xa26b981 -> :sswitch_3e
        0xa62ae0d -> :sswitch_3d
        0xc1fb000 -> :sswitch_3c
        0xfc42cee -> :sswitch_3b
        0xffd1580 -> :sswitch_3a
        0x13620773 -> :sswitch_39
        0x15360adc -> :sswitch_38
        0x156defb4 -> :sswitch_37
        0x17b55cb8 -> :sswitch_36
        0x19413871 -> :sswitch_35
        0x19624f6d -> :sswitch_34
        0x1a18408e -> :sswitch_33
        0x1ce41db7 -> :sswitch_32
        0x1dc5fea8 -> :sswitch_31
        0x1fffb7d1 -> :sswitch_30
        0x20ab88f9 -> :sswitch_2f
        0x229f5e8e -> :sswitch_2e
        0x2388f7d8 -> :sswitch_2d
        0x253fbe15 -> :sswitch_2c
        0x257132e2 -> :sswitch_2b
        0x259dd45a -> :sswitch_2a
        0x284d8e44 -> :sswitch_29
        0x29207113 -> :sswitch_28
        0x29c4bcaa -> :sswitch_27
        0x2aaf04b0 -> :sswitch_26
        0x2bb0328e -> :sswitch_25
        0x2ce441cb -> :sswitch_24
        0x31486b53 -> :sswitch_23
        0x33616051 -> :sswitch_22
        0x376cd1eb -> :sswitch_21
        0x39014db1 -> :sswitch_20
        0x39285872 -> :sswitch_1f
        0x393e3e40 -> :sswitch_1e
        0x3c26645a -> :sswitch_1d
        0x3cbc6962 -> :sswitch_1c
        0x3d68d00b -> :sswitch_1b
        0x41dd759d -> :sswitch_1a
        0x4685a446 -> :sswitch_19
        0x478a00dc -> :sswitch_18
        0x4f827ec1 -> :sswitch_17
        0x4fceb464 -> :sswitch_16
        0x50663101 -> :sswitch_15
        0x514ef38a -> :sswitch_14
        0x526e65c9 -> :sswitch_13
        0x53453e87 -> :sswitch_12
        0x54b1f7e4 -> :sswitch_11
        0x57d4af12 -> :sswitch_10
        0x629e6175 -> :sswitch_f
        0x652b0b4e -> :sswitch_e
        0x681aa9f3 -> :sswitch_d
        0x6aa9847e -> :sswitch_c
        0x6b82f19d -> :sswitch_b
        0x6c904c87 -> :sswitch_a
        0x6fac6167 -> :sswitch_9
        0x6fd6b148 -> :sswitch_8
        0x72b4796d -> :sswitch_7
        0x7323d6d4 -> :sswitch_6
        0x73c7a89b -> :sswitch_5
        0x74e29831 -> :sswitch_4
        0x76622ee8 -> :sswitch_3
        0x7b4e1a1e -> :sswitch_2
        0x7e670428 -> :sswitch_1
        0x7f25d14e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_86
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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

.method protected onSayHiDisable()V
    .locals 2

    .line 5533
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onSayHiDisable"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5534
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setSayHiEnable(Z)V

    .line 5535
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setAvasSayHiSw(Z)V

    return-void
.end method

.method protected onSayHiEnable()V
    .locals 2

    .line 5523
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onSayHiEnable"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5525
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setSayHiEnable(Z)V

    .line 5526
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setAvasSayHiSw(Z)V

    return-void
.end method

.method protected onSeatAdjust(Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatValue"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3387
    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;->getzValue()I

    move-result p1

    .line 3388
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter meditation mode, Tilt need move to = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3389
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->enterMeditationState(I)V

    :cond_0
    return-void
.end method

.method protected onSeatBackrestBack(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "isSupportSeatCtrl"

    .line 3025
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isSupportMsmD"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3026
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatStart(III)Z

    goto/16 :goto_4

    .line 3030
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatTiltPos()I

    move-result v0

    .line 3031
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSource(Ljava/lang/String;)I

    move-result v1

    .line 3032
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSeatBackrestBack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v3, 0x1

    const/16 v5, 0x55

    if-lt v0, v5, :cond_2

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 3059
    :cond_1
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_tilt:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    goto :goto_4

    .line 3034
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getChangeValue(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object v6

    const/16 v7, 0x14

    if-eqz v6, :cond_4

    .line 3036
    invoke-virtual {v6}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3037
    invoke-virtual {v6}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_1

    .line 3039
    :cond_3
    invoke-virtual {v6}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v0

    goto :goto_1

    :cond_4
    add-int/2addr v0, v7

    :goto_1
    if-le v0, v5, :cond_5

    goto :goto_2

    :cond_5
    move v5, v0

    :goto_2
    if-ge v5, v7, :cond_6

    goto :goto_3

    :cond_6
    move v7, v5

    .line 3050
    :goto_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v7}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatTiltPos(I)V

    if-ne v1, v3, :cond_7

    .line 3052
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getKeepTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 3053
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSeatBackrestBack, keep: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_7

    .line 3055
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {p1, v3, v4, v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSeatMenuNotShowKeepTime(ZJ)V

    :cond_7
    :goto_4
    return-void
.end method

.method protected onSeatBackrestForemost()V
    .locals 4

    .line 3117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatTiltPos()I

    move-result v0

    .line 3118
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSeatBackrestForemost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x14

    rsub-int/lit8 v0, v0, 0x14

    .line 3120
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 3121
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatTiltPos(I)V

    goto :goto_0

    .line 3123
    :cond_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_tilt:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    :goto_0
    return-void
.end method

.method protected onSeatBackrestForward(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "isSupportSeatCtrl"

    .line 3065
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "isSupportMsmD"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3066
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatStart(III)Z

    goto/16 :goto_3

    .line 3070
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatTiltPos()I

    move-result v0

    .line 3071
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSource(Ljava/lang/String;)I

    move-result v2

    .line 3073
    sget-object v3, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSeatBackrestForward:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v4, 0x14

    if-gt v0, v4, :cond_2

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 3100
    :cond_1
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_tilt:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    goto :goto_3

    .line 3075
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getChangeValue(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 3077
    invoke-virtual {v6}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3078
    invoke-virtual {v6}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v6

    sub-int/2addr v0, v6

    goto :goto_1

    .line 3080
    :cond_3
    invoke-virtual {v6}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v0

    goto :goto_1

    :cond_4
    sub-int/2addr v0, v4

    :goto_1
    const/16 v6, 0x55

    if-le v0, v6, :cond_5

    move v0, v6

    :cond_5
    if-ge v0, v4, :cond_6

    goto :goto_2

    :cond_6
    move v4, v0

    .line 3091
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatTiltPos(I)V

    if-ne v2, v1, :cond_7

    .line 3093
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getKeepTime(Ljava/lang/String;)J

    move-result-wide v6

    .line 3094
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSeatBackrestForward, keep: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v2, 0x0

    cmp-long p1, v6, v2

    if-eqz p1, :cond_7

    .line 3096
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-virtual {p1, v1, v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSeatMenuNotShowKeepTime(ZJ)V

    :cond_7
    :goto_3
    return-void
.end method

.method protected onSeatBackrestRear()V
    .locals 4

    .line 3106
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatTiltPos()I

    move-result v0

    .line 3107
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSeatBackrestRear:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x55

    rsub-int/lit8 v0, v0, 0x55

    .line 3109
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 3110
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatTiltPos(I)V

    goto :goto_0

    .line 3112
    :cond_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_tilt:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    :goto_0
    return-void
.end method

.method protected onSeatLumberControl(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pilot",
            "mode"
        }
    .end annotation

    .line 3799
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeatLumberControl pilot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    :cond_0
    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_5

    :cond_1
    const/16 v1, 0xbc0

    if-ne p1, v0, :cond_3

    .line 3802
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object p1

    const-string v3, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_SEAT_BUTTON_SETTING_PANEL"

    invoke-virtual {p1, v3, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->show(Ljava/lang/String;I)V

    .line 3803
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-ne p2, v0, :cond_2

    move v2, v0

    :cond_2
    invoke-virtual {p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDrvLumbControlSw(Z)V

    goto :goto_0

    .line 3805
    :cond_3
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object p1

    const-string v3, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_PSN_SEAT_BUTTON_SETTING_PANEL"

    invoke-virtual {p1, v3, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->show(Ljava/lang/String;I)V

    .line 3806
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-ne p2, v0, :cond_4

    move v2, v0

    :cond_4
    invoke-virtual {p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnLumbControlSw(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onSeatModeSet(Ljava/lang/String;)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 4659
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4662
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getPilot(Ljava/lang/String;)I

    move-result v1

    .line 4663
    invoke-direct/range {p0 .. p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getTarget(Ljava/lang/String;)I

    move-result v8

    .line 4664
    invoke-direct/range {p0 .. p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getMode(Ljava/lang/String;)I

    move-result v2

    .line 4665
    sget-object v3, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSeatModeSet, pilot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", target:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_11

    if-eq v2, v5, :cond_d

    const/4 v7, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x5

    if-eq v2, v4, :cond_b

    if-eq v2, v3, :cond_5

    if-eq v2, v10, :cond_1

    goto/16 :goto_0

    :cond_1
    if-ne v8, v6, :cond_2

    .line 4705
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object v2

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v4, "xpCarControl_Service"

    invoke-virtual/range {v2 .. v8}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->createSeatSpeechNotification(Landroid/content/Context;Ljava/lang/String;IZZI)V

    goto/16 :goto_0

    :cond_2
    if-eq v1, v10, :cond_3

    if-ne v1, v9, :cond_15

    .line 4708
    :cond_3
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-ne v8, v6, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {v1, v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowSeatStow(I)V

    goto/16 :goto_0

    :cond_5
    if-ne v8, v6, :cond_7

    .line 4694
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object v2

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v5, 0x9

    const/4 v9, 0x1

    if-ne v1, v10, :cond_6

    move v7, v6

    :cond_6
    const-string/jumbo v4, "xpCarControl_Service"

    move v6, v9

    invoke-virtual/range {v2 .. v8}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->createSeatSpeechNotification(Landroid/content/Context;Ljava/lang/String;IZZI)V

    goto/16 :goto_0

    :cond_7
    if-ne v1, v10, :cond_9

    .line 4697
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-ne v8, v6, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {v1, v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLtSeatFol(I)V

    goto/16 :goto_0

    :cond_9
    if-ne v1, v9, :cond_15

    .line 4699
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-ne v8, v6, :cond_a

    move v5, v6

    :cond_a
    invoke-virtual {v1, v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRtSeatFol(I)V

    goto/16 :goto_0

    :cond_b
    if-ne v1, v4, :cond_c

    .line 4684
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v7, v2, v7

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v8, v2, v6

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v2, v2, v5

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v4, v5, v4

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v11, v5, v3

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v12, v3, v10

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v13, v3, v9

    move-object v6, v1

    move v9, v2

    move v10, v4

    invoke-virtual/range {v6 .. v13}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatAllPositions(IIIIIII)V

    goto :goto_0

    :cond_c
    if-ne v1, v3, :cond_15

    .line 4687
    iget-object v14, v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v15, v1, v7

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v16, v1, v6

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v17, v1, v5

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v18, v1, v4

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v19, v1, v3

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v20, v1, v10

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v21, v1, v9

    invoke-virtual/range {v14 .. v21}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatAllPositions(IIIIIII)V

    goto :goto_0

    :cond_d
    if-ne v1, v4, :cond_f

    .line 4677
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-ne v8, v6, :cond_e

    move v4, v6

    :cond_e
    invoke-virtual {v1, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowLtSeatEZ(I)V

    goto :goto_0

    :cond_f
    if-ne v1, v3, :cond_15

    .line 4679
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-ne v8, v6, :cond_10

    move v4, v6

    :cond_10
    invoke-virtual {v1, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowRtSeatEZ(I)V

    goto :goto_0

    :cond_11
    if-ne v1, v4, :cond_13

    .line 4670
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-ne v8, v6, :cond_12

    move v5, v6

    :cond_12
    invoke-virtual {v1, v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowLtSeatZeroGrav(I)V

    goto :goto_0

    :cond_13
    if-ne v1, v3, :cond_15

    .line 4672
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-ne v8, v6, :cond_14

    move v5, v6

    :cond_14
    invoke-virtual {v1, v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowRtSeatZeroGrav(I)V

    :cond_15
    :goto_0
    return-void
.end method

.method protected onSeatMoveBack(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "isSupportSeatCtrl"

    .line 2931
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "isSupportMsmD"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2932
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x3

    invoke-virtual {p1, v2, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatStart(III)Z

    goto/16 :goto_2

    .line 2936
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatHorzPos()I

    move-result v0

    .line 2937
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSource(Ljava/lang/String;)I

    move-result v3

    .line 2938
    sget-object v4, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSeatMoveBack:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", source: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    rsub-int/lit8 v5, v0, 0x0

    .line 2939
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v1, :cond_2

    if-ne v3, v2, :cond_1

    goto :goto_0

    .line 2962
    :cond_1
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_rear:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    goto :goto_2

    .line 2940
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getChangeValue(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2942
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2943
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 2945
    :cond_3
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v0

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x10

    :goto_1
    if-gez v0, :cond_5

    move v0, v6

    .line 2953
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatHorzPos(I)V

    if-ne v3, v2, :cond_6

    .line 2955
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getKeepTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 2956
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSeatMoveBack, keep: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-eqz p1, :cond_6

    .line 2958
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-virtual {p1, v2, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSeatMenuNotShowKeepTime(ZJ)V

    :cond_6
    :goto_2
    return-void
.end method

.method protected onSeatMoveDown(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "isSupportSeatCtrl"

    .line 2874
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const-string v0, "isSupportMsmD"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2875
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x3

    invoke-virtual {p1, v1, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatStart(III)Z

    goto/16 :goto_2

    .line 2879
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatVerPos()I

    move-result v0

    .line 2880
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSource(Ljava/lang/String;)I

    move-result v2

    .line 2881
    sget-object v3, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSeatMoveDown:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    rsub-int/lit8 v4, v0, 0x0

    .line 2882
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v6, 0x1

    if-ge v4, v1, :cond_2

    if-ne v2, v6, :cond_1

    goto :goto_0

    .line 2905
    :cond_1
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_lowest:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    goto :goto_2

    .line 2883
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getChangeValue(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2885
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2886
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 2888
    :cond_3
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v0

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x14

    :goto_1
    if-gez v0, :cond_5

    move v0, v5

    .line 2896
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatVerPos(I)V

    if-ne v2, v6, :cond_6

    .line 2898
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getKeepTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 2899
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeatMoveUp, keep: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_6

    .line 2901
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p1, v6, v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSeatMenuNotShowKeepTime(ZJ)V

    :cond_6
    :goto_2
    return-void
.end method

.method protected onSeatMoveForemost()V
    .locals 4

    .line 3015
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatHorzPos()I

    move-result v0

    .line 3016
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSeatMoveForemost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x5a

    rsub-int/lit8 v0, v0, 0x5a

    .line 3017
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 3018
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatHorzPos(I)V

    goto :goto_0

    .line 3020
    :cond_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_foremost:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    :goto_0
    return-void
.end method

.method protected onSeatMoveForward(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "isSupportSeatCtrl"

    .line 2968
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "isSupportMsmD"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2969
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x3

    invoke-virtual {p1, v1, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatStart(III)Z

    goto/16 :goto_2

    .line 2973
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatHorzPos()I

    move-result v0

    .line 2974
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSource(Ljava/lang/String;)I

    move-result v2

    .line 2975
    sget-object v3, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSeatMoveForward:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    rsub-int/lit8 v4, v0, 0x5a

    .line 2976
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v6, 0x2

    if-ge v4, v6, :cond_2

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 2999
    :cond_1
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_foremost:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    goto :goto_2

    .line 2977
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getChangeValue(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2979
    invoke-virtual {v4}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2980
    invoke-virtual {v4}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 2982
    :cond_3
    invoke-virtual {v4}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v0

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x10

    :goto_1
    const/16 v4, 0x5a

    if-le v0, v4, :cond_5

    move v0, v4

    .line 2990
    :cond_5
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v4, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatHorzPos(I)V

    if-ne v2, v1, :cond_6

    .line 2992
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getKeepTime(Ljava/lang/String;)J

    move-result-wide v6

    .line 2993
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSeatMoveForward, keep: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v2, 0x0

    cmp-long p1, v6, v2

    if-eqz p1, :cond_6

    .line 2995
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-virtual {p1, v1, v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSeatMenuNotShowKeepTime(ZJ)V

    :cond_6
    :goto_2
    return-void
.end method

.method protected onSeatMoveHighest()V
    .locals 4

    .line 2911
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatVerPos()I

    move-result v0

    .line 2912
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSeatMoveHighest:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x64

    rsub-int/lit8 v0, v0, 0x64

    .line 2913
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 2914
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatVerPos(I)V

    goto :goto_0

    .line 2916
    :cond_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_highest:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    :goto_0
    return-void
.end method

.method protected onSeatMoveLowest()V
    .locals 4

    .line 2921
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatVerPos()I

    move-result v0

    .line 2922
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSeatMoveLowest:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    rsub-int/lit8 v0, v0, 0x0

    .line 2923
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 2924
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatVerPos(I)V

    goto :goto_0

    .line 2926
    :cond_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_lowest:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    :goto_0
    return-void
.end method

.method protected onSeatMoveRear()V
    .locals 4

    .line 3005
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatHorzPos()I

    move-result v0

    .line 3006
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSeatMoveRear:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    rsub-int/lit8 v0, v0, 0x0

    .line 3007
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 3008
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatHorzPos(I)V

    goto :goto_0

    .line 3010
    :cond_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_rear:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    :goto_0
    return-void
.end method

.method protected onSeatMoveUp(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "isSupportSeatCtrl"

    .line 2837
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "isSupportMsmD"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2838
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x3

    invoke-virtual {p1, v1, v2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatStart(III)Z

    goto/16 :goto_2

    .line 2842
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatVerPos()I

    move-result v0

    .line 2843
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getSource(Ljava/lang/String;)I

    move-result v3

    .line 2844
    sget-object v4, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSeatMoveUp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", source: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    rsub-int/lit8 v5, v0, 0x64

    .line 2845
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v1, :cond_2

    if-ne v3, v2, :cond_1

    goto :goto_0

    .line 2868
    :cond_1
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->speech_seat_control_highest:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->speak(I)V

    goto :goto_2

    .line 2846
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getChangeValue(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2848
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2849
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 2851
    :cond_3
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->getValue()I

    move-result v0

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x14

    :goto_1
    const/16 v1, 0x64

    if-le v0, v1, :cond_5

    move v0, v1

    .line 2859
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDSeatVerPos(I)V

    if-ne v3, v2, :cond_6

    .line 2861
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getKeepTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 2862
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSeatMoveUp, keep: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-eqz p1, :cond_6

    .line 2864
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-virtual {p1, v2, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSeatMenuNotShowKeepTime(ZJ)V

    :cond_6
    :goto_2
    return-void
.end method

.method protected onSeatRecovery(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "position"

    const/4 v1, 0x0

    .line 3186
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3187
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3188
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3191
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPilot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    const/4 p1, 0x1

    if-eq v1, p1, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    goto :goto_1

    .line 3204
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getCurrentSelectedRRHabit()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreRRSeatPos(IZ)Z

    goto :goto_1

    .line 3201
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getCurrentSelectedRLHabit()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreRLSeatPos(IZ)Z

    goto :goto_1

    .line 3198
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restorePsnSeatPos()Z

    goto :goto_1

    .line 3195
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreDrvSeatPos()Z

    :goto_1
    return-void
.end method

.method protected onSeatRestore()V
    .locals 3

    .line 3179
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onSeatRestore"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3180
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreDrvSeatPos()Z

    return-void
.end method

.method protected onSetReverseMirrorModeOff(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const-string v0, "getCduMirrorReverseMode"

    .line 5780
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, ", currentMode="

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 5781
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetReverseMirrorModeOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->isMirrorAutoDown()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5782
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->setMirrorAutoDown(Z)V

    goto/16 :goto_0

    .line 5784
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->getReverseMirrorMode()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    move-result-object v0

    .line 5785
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetReverseMirrorModeOff:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 5798
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Both:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    if-ne v0, p1, :cond_2

    .line 5799
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Left:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->toBcmMirrorCmd()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->setReverseMirrorMode(I)V

    goto :goto_0

    .line 5800
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Right:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    if-ne v0, p1, :cond_6

    .line 5801
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->toBcmMirrorCmd()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->setReverseMirrorMode(I)V

    goto :goto_0

    .line 5791
    :cond_3
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Both:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    if-ne v0, p1, :cond_4

    .line 5792
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Right:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->toBcmMirrorCmd()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->setReverseMirrorMode(I)V

    goto :goto_0

    .line 5793
    :cond_4
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Left:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    if-ne v0, p1, :cond_6

    .line 5794
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->toBcmMirrorCmd()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->setReverseMirrorMode(I)V

    goto :goto_0

    .line 5788
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->toBcmMirrorCmd()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->setReverseMirrorMode(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method protected onSetReverseMirrorModeOn(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const-string v0, "getCduMirrorReverseMode"

    .line 5744
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ", currentMode="

    const-string v3, "onSetReverseMirrorModeOn:"

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 5745
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->isMirrorAutoDown()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5746
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-interface {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->setMirrorAutoDown(Z)V

    goto/16 :goto_0

    .line 5748
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->getReverseMirrorMode()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    move-result-object v0

    .line 5749
    sget-object v4, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 5762
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    if-ne v0, p1, :cond_2

    .line 5763
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Right:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->toBcmMirrorCmd()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->setReverseMirrorMode(I)V

    goto :goto_0

    .line 5764
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Left:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    if-ne v0, p1, :cond_6

    .line 5765
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Both:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->toBcmMirrorCmd()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->setReverseMirrorMode(I)V

    goto :goto_0

    .line 5755
    :cond_3
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    if-ne v0, p1, :cond_4

    .line 5756
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Left:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->toBcmMirrorCmd()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->setReverseMirrorMode(I)V

    goto :goto_0

    .line 5757
    :cond_4
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Right:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    if-ne v0, p1, :cond_6

    .line 5758
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Both:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->toBcmMirrorCmd()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->setReverseMirrorMode(I)V

    goto :goto_0

    .line 5752
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Both:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->toBcmMirrorCmd()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->setReverseMirrorMode(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method protected onSuspensionAutoOff(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 3577
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onSuspensionAutoOff"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3579
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1, v2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAsLocationSw(ZZ)V

    return-void
.end method

.method protected onSuspensionAutoOn(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 3571
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onSuspensionAutoOn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    move v2, v0

    .line 3573
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAsLocationSw(ZZ)V

    return-void
.end method

.method protected onSuspensionRigiditySet(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3791
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setCdcMode(I)V

    goto :goto_0

    .line 3788
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setCdcMode(I)V

    goto :goto_0

    .line 3785
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setCdcMode(I)V

    :goto_0
    return-void
.end method

.method protected onSuspensionWelcomeModeSet(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 3676
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuspensionWelcomeModeSet, target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3677
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAirSuspensionWelcome(Z)V

    return-void
.end method

.method protected onSwingOff(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pilot"
        }
    .end annotation

    .line 3651
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwingOff, pilot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3652
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopRhythm(I)V

    return-void
.end method

.method protected onSwingOn(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pilot",
            "mode"
        }
    .end annotation

    .line 3641
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwingOn, pilot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3642
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->startRhythm(IIZ)V

    return-void
.end method

.method protected onSwingStrengthSet(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pilot",
            "target"
        }
    .end annotation

    .line 3662
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwingStrengthSet, pilot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3663
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRhythmRunning(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3664
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRhythmMode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->onSwingOn(II)V

    .line 3667
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRhythmIntensity(II)V

    return-void
.end method

.method protected onTirePressureShow()V
    .locals 3

    .line 3373
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onTirePressureShow"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3374
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.carcontrol.intent.action.SHOW_CAR_CONTROL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "category_index"

    const/4 v2, 0x4

    .line 3375
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 3376
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3377
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/App;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onTrunkClose()V
    .locals 0

    return-void
.end method

.method protected onTrunkOpen()V
    .locals 0

    return-void
.end method

.method protected onTrunkUnlock()V
    .locals 3

    .line 3297
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onTrunkUnlock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3298
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->openRearTrunk()V

    return-void
.end method

.method protected onWelcomeModeOff()V
    .locals 2

    .line 5637
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onWelcomeModeOff"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5638
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setWelcomeMode(Z)V

    return-void
.end method

.method protected onWelcomeModeOn()V
    .locals 2

    .line 5629
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onWelcomeModeOn"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5630
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setWelcomeMode(Z)V

    return-void
.end method

.method protected onWindowsControl(III)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "mode",
            "percent"
        }
    .end annotation

    .line 2674
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowsControl: pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", percent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2676
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowLockActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2677
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->win_lock_is_active:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    :cond_0
    if-ltz p3, :cond_5

    const/16 v0, 0x64

    if-le p3, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    if-nez p2, :cond_2

    rsub-int/lit8 p3, p3, 0x64

    :cond_2
    const-string p2, "isRightDudder"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2729
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setRLWinPos(F)V

    .line 2730
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setRRWinPos(F)V

    goto :goto_0

    .line 2724
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setFLWinPos(F)V

    .line 2725
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setFRWinPos(F)V

    goto :goto_0

    .line 2721
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setAllWinPos(F)V

    goto :goto_0

    .line 2716
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setFRWinPos(F)V

    .line 2717
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setRRWinPos(F)V

    goto :goto_0

    .line 2711
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setFLWinPos(F)V

    .line 2712
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setRLWinPos(F)V

    goto :goto_0

    .line 2707
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setRRWinPos(F)V

    goto :goto_0

    .line 2703
    :pswitch_6
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setRLWinPos(F)V

    goto :goto_0

    .line 2695
    :pswitch_7
    invoke-static {p2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2696
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setFLWinPos(F)V

    goto :goto_0

    .line 2698
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setFRWinPos(F)V

    goto :goto_0

    .line 2688
    :pswitch_8
    invoke-static {p2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2689
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setFRWinPos(F)V

    goto :goto_0

    .line 2691
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setFLWinPos(F)V

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method protected onWindowsVentilateOff()V
    .locals 3

    .line 2662
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onWindowsVentilateOff"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2663
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setAllWinPos(F)V

    return-void
.end method

.method protected onWindowsVentilateOn()V
    .locals 3

    .line 2656
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onWindowsVentilateOn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2657
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlWindowVent()V

    return-void
.end method

.method protected onWiperHigh()V
    .locals 3

    .line 3276
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onWiperHigh"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3277
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->Fast:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setWiperInterval(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;)V

    return-void
.end method

.method protected onWiperMedium()V
    .locals 3

    .line 3281
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onWiperMedium"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3282
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->Medium:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setWiperInterval(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;)V

    return-void
.end method

.method protected onWiperSlow()V
    .locals 3

    .line 3271
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onWiperSlow"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3272
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->Slow:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setWiperInterval(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;)V

    return-void
.end method

.method protected onWiperSpeedDown()V
    .locals 4

    .line 3262
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getWiperIntervalValue()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    move-result-object v0

    .line 3263
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWiperSpeedDown: current level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    .line 3264
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->ordinal()I

    move-result v1

    if-lez v1, :cond_0

    .line 3265
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->ordinal()I

    move-result v0

    .line 3266
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->values()[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setWiperInterval(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;)V

    :cond_0
    return-void
.end method

.method protected onWiperSpeedUp()V
    .locals 4

    .line 3253
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getWiperIntervalValue()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    move-result-object v0

    .line 3254
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWiperSpeedUp: current level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    .line 3255
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->ordinal()I

    move-result v1

    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->values()[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 3256
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->ordinal()I

    move-result v0

    .line 3257
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->values()[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setWiperInterval(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;)V

    :cond_0
    return-void
.end method

.method protected onWiperSuperhigh()V
    .locals 3

    .line 3286
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    const-string v1, "onWiperSuperhigh"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3287
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->Ultra:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setWiperInterval(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;)V

    return-void
.end method

.method protected onXkeySetting(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 5577
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXkeySetting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 5579
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 5590
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->AutoPark:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setXKeyForCustomerValue(Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;)V

    goto :goto_0

    .line 5587
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->SwitchMedia:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setXKeyForCustomerValue(Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;)V

    goto :goto_0

    .line 5584
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->ShowOff:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setXKeyForCustomerValue(Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;)V

    goto :goto_0

    .line 5581
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->UnlockTrunk:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setXKeyForCustomerValue(Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onsCwcSwOff(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "pilot"
        }
    .end annotation

    .line 5718
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onsCwcSwOff, source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pilot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eq p2, v0, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    goto :goto_1

    .line 5731
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setCwcRRSwEnable(Z)V

    goto :goto_1

    .line 5728
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setCwcRLSwEnable(Z)V

    goto :goto_1

    .line 5725
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setCwcFRSwEnable(Z)V

    goto :goto_1

    .line 5722
    :cond_4
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p2, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setCwcSwEnable(ZZ)V

    :goto_1
    return-void
.end method

.method protected onsCwcSwOn(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "pilot"
        }
    .end annotation

    .line 5693
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onsCwcSwOn, source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pilot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eq p2, v0, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    goto :goto_1

    .line 5706
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setCwcRRSwEnable(Z)V

    goto :goto_1

    .line 5703
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setCwcRLSwEnable(Z)V

    goto :goto_1

    .line 5700
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setCwcFRSwEnable(Z)V

    goto :goto_1

    .line 5697
    :cond_4
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p2, v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setCwcSwEnable(ZZ)V

    :goto_1
    return-void
.end method

.method protected seatCheckDoorClose()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected setLluSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOpen"
        }
    .end annotation

    .line 5260
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLluSw:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5261
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluMultiSwEnable(Z)V

    return-void
.end method
