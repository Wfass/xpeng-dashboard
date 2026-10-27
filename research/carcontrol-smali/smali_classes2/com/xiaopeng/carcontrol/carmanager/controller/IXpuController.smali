.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;
.super Ljava/lang/Object;
.source "IXpuController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;",
        ">;"
    }
.end annotation


# static fields
.field public static final AS_LOCK_SCENARIO_CAM_CALIB_REQUEST:I = 0x1

.field public static final AS_LOCK_SCENARIO_LIDAR_CALIB_REQUEST:I = 0x2

.field public static final AS_LOCK_SCENARIO_MRR_CALIB_REQUEST:I = 0x3

.field public static final AS_LOCK_SCENARIO_NO_REQUEST:I = 0x0

.field public static final AS_TAR_LVL_NO_REQUEST:I = 0x0

.field public static final LSS_SEN_ST_HIGH:I = 0x2

.field public static final LSS_SEN_ST_LOW:I = 0x1

.field public static final LSS_SEN_ST_MEDIUM:I = 0x0

.field public static final LSS_SEN_ST_TTM:I = 0x3

.field public static final NEDC_OFF:I = 0x0

.field public static final NEDC_ON:I = 0x1

.field public static final NEDC_STATE_OFF:I = 0x0

.field public static final NEDC_STATE_ON:I = 0x1

.field public static final SETTING_KEY_NEDC_SW:Ljava/lang/String; = "xp_carcontrol_nedc_sw"

.field public static final XPU_CNGP_MODE:I = 0x8

.field public static final XPU_ISLC_DRIVER_SET_AUTOMATIC:I = 0x3

.field public static final XPU_ISLC_DRIVER_SET_ERROR:I = 0x0

.field public static final XPU_ISLC_DRIVER_SET_MANUAL:I = 0x2

.field public static final XPU_ISLC_DRIVER_SET_OFF:I = 0x1

.field public static final XPU_L2_TO_L4_MODE:I = 0x7

.field public static final XPU_L4_TO_L2_MODE:I = 0x9

.field public static final XPU_NGP_MODE_INDX_LCC_MODE:I = 0x3

.field public static final XPU_NGP_MODE_INDX_LCC_MODE_2:I = 0x4

.field public static final XPU_NGP_MODE_INDX_NGP_MODE:I = 0x5

.field public static final XPU_NGP_MODE_INDX_NGP_MODE_2:I = 0x6

.field public static final XPU_NGP_OVERTAKE_MODE_CONSERVATIVE:I = 0x1

.field public static final XPU_NGP_OVERTAKE_MODE_NORMAL:I = 0x0

.field public static final XPU_SIMPLE_SAS_SW_AUTOMATIC:I = 0x3

.field public static final XPU_SIMPLE_SAS_SW_MANUAL:I = 0x2

.field public static final XPU_SIMPLE_SAS_SW_OFF:I = 0x1

.field public static final XPU_SLWF_SLIF_OFF:I = 0x0

.field public static final XPU_SLWF_SLIF_ON:I = 0x1

.field public static final XPU_STATUS_FAILURE:I = 0x2

.field public static final XPU_STATUS_START_UP_FAILURE:I = 0x5

.field public static final XPU_STATUS_START_UP_IN_PROGRESS:I = 0x3

.field public static final XPU_STATUS_TURN_OFF_IN_PROGRESS:I = 0x4


# virtual methods
.method public abstract getAsLockScenario()I
.end method

.method public abstract getAsTargetMaxHeightRequest()I
.end method

.method public abstract getAsTargetMinHeightRequest()I
.end method

.method public abstract getBodyFaultIndicationSw()Z
.end method

.method public abstract getCngpModeStatus()I
.end method

.method public abstract getCngpSafeExamResult(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract getDrivingRiskWarningSw()Z
.end method

.method public abstract getGreenLightRemindStateSw()Z
.end method

.method public abstract getIntelligentOverspeedRemindStateSw()Z
.end method

.method public abstract getLccCrossBarriersSw()I
.end method

.method public abstract getLccTrafficLightSw()I
.end method

.method public abstract getLssSensitivity()I
.end method

.method public abstract getMapUserExperiencePlanState()Z
.end method

.method public abstract getNedcSwitchStatus()I
.end method

.method public abstract getNgpActivateModeState()Z
.end method

.method public abstract getNgpAflFunctionVisibility()Z
.end method

.method public abstract getNgpAflState()I
.end method

.method public abstract getNgpCustomSpeedKph()I
.end method

.method public abstract getNgpCustomSpeedMode()I
.end method

.method public abstract getNgpCustomSpeedPercent()I
.end method

.method public abstract getNgpFreeNgpState()Z
.end method

.method public abstract getNgpNewAflState()Z
.end method

.method public abstract getNgpOvertakeMode()I
.end method

.method public abstract getNgpPreferLaneCfg()I
.end method

.method public abstract getNraCacheState()I
.end method

.method public abstract getNraState()I
.end method

.method public abstract getNraSw()Z
.end method

.method public abstract getRaebState()I
.end method

.method public abstract getSimpleSasSw()I
.end method

.method public abstract getSoundSw()Z
.end method

.method public abstract getStartRemindStateSw()Z
.end method

.method public abstract getTurnAssistantSw()Z
.end method

.method public abstract getVoiceSw()Z
.end method

.method public abstract getXngpSafeExamResult(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract getXpilotUserExperiencePlanState()Z
.end method

.method public abstract getXpilotUserExperienceTitle()Ljava/lang/String;
.end method

.method public abstract getXpuBrakeFunctionMode()I
.end method

.method public abstract getXpuConnected()Z
.end method

.method public abstract isCameraOverTemp()Z
.end method

.method public abstract setBodyFaultIndicationSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCngpSafeExamResult(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "result"
        }
    .end annotation
.end method

.method public abstract setDrivingRiskWarningSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setGreenLightRemindStateSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setIntelligentOverspeedRemindStateSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLccCrossBarriersSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLccTrafficLightSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLssSensitivity(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setMapUserExperiencePlanState(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setMrrEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setNedcSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active"
        }
    .end annotation
.end method

.method public abstract setNgpActivateModeEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setNgpAflEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setNgpCustomSpeedKph(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setNgpCustomSpeedMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setNgpCustomSpeedPercent(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setNgpFreeNgpEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setNgpNewAflEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setNgpOvertakeMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setNgpPreferLaneCfg(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setNraState(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract setNraSwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setRaebState(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setSimpleSasSw(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setSoundSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setStartRemindStateSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setTurnAssistantEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setVoiceSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setXngpSafeExamResult(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "result"
        }
    .end annotation
.end method

.method public abstract setXpilotUserExperiencePlanState(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setXpuAdasOneShotActive(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract updateMapPrivacyStateToCarService(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract updateXpilotPrivacyStateToCarService(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method
