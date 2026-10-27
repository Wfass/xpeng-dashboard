.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;
.super Ljava/lang/Object;
.source "IScuController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController$Callback;",
        ">;"
    }
.end annotation


# static fields
.field public static final AUTO_PARK_WARNING_SOUND:I = 0x0

.field public static final AUTO_PARK_WARNING_TTS:I = 0x1

.field public static final AUTO_PILOT_TTS_OFF:I = 0x0

.field public static final AUTO_PILOT_TTS_ON:I = 0x1

.field public static final DSM_ST_FAULT:I = 0x4

.field public static final DSM_ST_NORMAL:I = 0x1

.field public static final DSM_ST_OFF:I = 0x0

.field public static final DSM_ST_SEN_HIGH:I = 0x3

.field public static final DSM_ST_SEN_LOW:I = 0x2

.field public static final DSM_ST_SEN_MIDDLE:I = 0x1

.field public static final DSM_ST_STARTING:I = 0x6

.field public static final KEY_AUTO_PILOT_TTS:Ljava/lang/String; = "AutoPilotTts"

.field public static final MEMORY_PARK_OFF:I = 0x1

.field public static final MEMORY_PARK_ON:I = 0x2

.field public static final NGP_CHANGE_LANE_OFF:I = 0x0

.field public static final NGP_CHANGE_LANE_RADICAL:I = 0x2

.field public static final NGP_CHANGE_LANE_SENSITIVE:I = 0x1

.field public static final NGP_CHANGE_LANE_STANDARD:I = 0x1

.field public static final NGP_CMD_OFF:I = 0x2

.field public static final NGP_CMD_ON:I = 0x1

.field public static final NGP_FEATURE_OFF:I = 0x0

.field public static final NGP_FEATURE_ON:I = 0x1

.field public static final NGP_MODE_STATUS_DRIVER_MODE:I = 0x1

.field public static final NGP_MODE_STATUS_NGP_MODE:I = 0x5

.field public static final NGP_REMIND_MODE:Ljava/lang/String; = "ngp_broadcast_type"

.field public static final NGP_REMIND_SOUND:I = 0x0

.field public static final NGP_REMIND_SOUND_CAR:I = 0x1

.field public static final NGP_REMIND_TTS:I = 0x1

.field public static final NGP_REMIND_TTS_CAR:I = 0x0

.field public static final NGP_VOICE_CHANGE_LANE:Ljava/lang/String; = "ngp_voice_lc"

.field public static final REAR_MIRROR_FOLD_STATE:I = 0x1

.field public static final REAR_MIRROR_NO_OPERATION:I = 0x0

.field public static final REAR_MIRROR_UNFOLD_STATE:I = 0x2

.field public static final SCU_ACC_ACTIVE:I = 0x3

.field public static final SCU_ACC_BRAKE_ONLY:I = 0x4

.field public static final SCU_ACC_OFF:I = 0x0

.field public static final SCU_ACC_OVERRIDE:I = 0x5

.field public static final SCU_ACC_PASSIVE:I = 0x1

.field public static final SCU_ACC_PERMANENT_FAILURE:I = 0x9

.field public static final SCU_ACC_STANDACTIVE:I = 0x6

.field public static final SCU_ACC_STANDBY:I = 0x2

.field public static final SCU_ACC_STANDWAIT:I = 0x7

.field public static final SCU_ACC_TEMPORARY_FAILURE:I = 0x8

.field public static final SCU_ALC_SW_ACTIVE:I = 0x1

.field public static final SCU_ALC_SW_CANCEL:I = 0x4

.field public static final SCU_ALC_SW_FAILURE:I = 0x7

.field public static final SCU_ALC_SW_FINISH:I = 0x5

.field public static final SCU_ALC_SW_INACTIVE:I = 0x0

.field public static final SCU_ALC_SW_OFF:I = 0x6

.field public static final SCU_ALC_SW_WAIT:I = 0x2

.field public static final SCU_ALC_SW_WAIT_TIMEOUT:I = 0x3

.field public static final SCU_BUTTON_OFF:I = 0x0

.field public static final SCU_BUTTON_ON:I = 0x1

.field public static final SCU_COMMONFB_SW_ACTIVE:I = 0x3

.field public static final SCU_COMMONFB_SW_NO_FAULT:I = 0x6

.field public static final SCU_COMMONFB_SW_OFF:I = 0x0

.field public static final SCU_COMMONFB_SW_PASSIVE:I = 0x1

.field public static final SCU_COMMONFB_SW_PERMANENT_FAIL:I = 0x5

.field public static final SCU_COMMONFB_SW_STANDBY:I = 0x2

.field public static final SCU_COMMONFB_SW_TEMPORARY_FAIL:I = 0x4

.field public static final SCU_FCWAEB_BLINDNESS:I = 0x7

.field public static final SCU_FCWAEB_INITIALIZATION_ST:I = 0x8

.field public static final SCU_FCWAEB_NO_FAULT:I = 0x5

.field public static final SCU_FCWAEB_OFF_BY_RADAR_EMISSION_OFF:I = 0x9

.field public static final SCU_FCW_SW_OFF:I = 0x0

.field public static final SCU_FCW_SW_ON:I = 0x1

.field public static final SCU_FCW_SW_PERMANENT_BLOCK:I = 0x4

.field public static final SCU_FCW_SW_PERMANENT_FAIL:I = 0x3

.field public static final SCU_FCW_SW_TEMPORARY_FAIL:I = 0x2

.field public static final SCU_IHB_SW_ACTIVE:I = 0x3

.field public static final SCU_IHB_SW_OFF:I = 0x0

.field public static final SCU_IHB_SW_PASSIVE:I = 0x1

.field public static final SCU_IHB_SW_PERMANENT_FAIL:I = 0x5

.field public static final SCU_IHB_SW_STANDBY:I = 0x2

.field public static final SCU_IHB_SW_TEMPORARY_FAIL:I = 0x4

.field public static final SCU_ISLA_CONFIRM_MODE_AUTO:I = 0x1

.field public static final SCU_ISLA_CONFIRM_MODE_USER:I = 0x2

.field public static final SCU_ISLA_DRIVER_CONFIRM_FAIL:I = 0x0

.field public static final SCU_ISLA_DRIVER_CONFIRM_NO:I = 0x1

.field public static final SCU_ISLA_DRIVER_CONFIRM_OK:I = 0x2

.field public static final SCU_ISLA_SPD_RANGE_HI:I = 0x2

.field public static final SCU_ISLA_SPD_RANGE_LO:I = 0x1

.field public static final SCU_ISLA_ST_ACTIVE:I = 0x3

.field public static final SCU_ISLA_ST_OFF:I = 0x0

.field public static final SCU_ISLA_ST_PERM_FAIL:I = 0x2

.field public static final SCU_ISLA_ST_TEMP_FAIL:I = 0x1

.field public static final SCU_ISLA_SW_ISLA:I = 0x2

.field public static final SCU_ISLA_SW_OFF:I = 0x0

.field public static final SCU_ISLA_SW_SLA:I = 0x1

.field public static final SCU_ISLC_SW_ACTIVE:I = 0x3

.field public static final SCU_ISLC_SW_NO_FAULT:I = 0x8

.field public static final SCU_ISLC_SW_OFF:I = 0x0

.field public static final SCU_ISLC_SW_OVERRIDE:I = 0x5

.field public static final SCU_ISLC_SW_PASSIVE:I = 0x1

.field public static final SCU_ISLC_SW_PERMANENT_FAIL:I = 0x7

.field public static final SCU_ISLC_SW_STANDBY:I = 0x2

.field public static final SCU_ISLC_SW_STANDWAIT:I = 0x4

.field public static final SCU_ISLC_SW_TEMPORARY_FAIL:I = 0x6

.field public static final SCU_LCC_SW_ACTIVE:I = 0x3

.field public static final SCU_LCC_SW_OFF:I = 0x0

.field public static final SCU_LCC_SW_PASSIVE:I = 0x1

.field public static final SCU_LCC_SW_PERMANENT_FAIL:I = 0x5

.field public static final SCU_LCC_SW_STANDBY:I = 0x2

.field public static final SCU_LCC_SW_TEMPORARY_FAIL:I = 0x4

.field public static final SCU_LDW_BUTTON_ON:I = 0x1

.field public static final SCU_LKA_BUTTON_ON:I = 0x2

.field public static final SCU_LKA_STATE_OFF_BY_TRAILER_MODE:I = 0xa

.field public static final SCU_LKA_ST_ACTIVE:I = 0x7

.field public static final SCU_LKA_ST_OFF:I = 0x4

.field public static final SCU_LKA_ST_PASSIVE:I = 0x5

.field public static final SCU_LKA_ST_PERMANENT_FAIL:I = 0x9

.field public static final SCU_LKA_ST_STANDBY:I = 0x6

.field public static final SCU_LKA_ST_TEMPORARY_FAIL:I = 0x8

.field public static final SCU_LSS_ALL:I = 0x3

.field public static final SCU_LSS_LDW:I = 0x1

.field public static final SCU_LSS_LKA:I = 0x2

.field public static final SCU_LSS_OFF:I = 0x0

.field public static final SCU_OPERATION_TIP24:I = 0x18

.field public static final SCU_OPERATION_TIP3:I = 0x3

.field public static final SCU_OPERATION_TIP8:I = 0x8

.field public static final SCU_OTA_TAG_0:I = 0x0

.field public static final SCU_OTA_TAG_1:I = 0x1

.field public static final SCU_OTA_TAG_2:I = 0x2

.field public static final SCU_OTA_TAG_3:I = 0x3

.field public static final SCU_PARK_CTRL_TYPE_DOUBLE:I = 0x1

.field public static final SCU_PARK_CTRL_TYPE_LONG_PRESS:I = 0x2

.field public static final SCU_PARK_SOUND_TYPE_EFFECT:I = 0x1

.field public static final SCU_PARK_SOUND_TYPE_VOICE:I = 0x2

.field public static final SCU_RESPONSE_BLINDNESS:I = 0xb

.field public static final SCU_RESPONSE_FAIL:I = 0x2

.field public static final SCU_RESPONSE_INIT:I = 0x8

.field public static final SCU_RESPONSE_NO_FAULT:I = 0x5

.field public static final SCU_RESPONSE_OFF:I = 0x0

.field public static final SCU_RESPONSE_OFF_MRR:I = 0xa

.field public static final SCU_RESPONSE_OFF_TTM:I = 0x9

.field public static final SCU_RESPONSE_ON:I = 0x1

.field public static final SCU_RESPONSE_PERMANENT_ERROR:I = 0x4

.field public static final SCU_RESPONSE_TEMP_ERROR:I = 0x3

.field public static final SCU_RESPONSE_UNAVAILABLE:I = 0x6

.field public static final SCU_SLIF_ST_ACTIVE:I = 0x3

.field public static final SCU_SLIF_ST_OFF:I = 0x0

.field public static final SCU_SLIF_ST_OVERRIDE:I = 0x5

.field public static final SCU_SLIF_ST_PASSIVE:I = 0x1

.field public static final SCU_SLIF_ST_PERMANENT_FAIL:I = 0x7

.field public static final SCU_SLIF_ST_STANDBY:I = 0x2

.field public static final SCU_SLIF_ST_STANDWAIT:I = 0x4

.field public static final SCU_SLIF_ST_TEMPORARY_FAIL:I = 0x6

.field public static final SCU_SW_FAIL:I = 0x2

.field public static final SCU_SW_OFF:I = 0x0

.field public static final SCU_SW_ON:I = 0x1

.field public static final SCU_UNABLE_TO_ACTIVATE_ALC:I = 0x8

.field public static final SCU_UNABLE_TO_ACTIVATE_LCC:I = 0x6

.field public static final SDC_DOOR_OBSTACLE_DETECTION_DANGER:I = 0x1

.field public static final SDC_DOOR_OBSTACLE_DETECTION_SAFETY:I = 0x2

.field public static final SDC_DOOR_OBSTACLE_DETECTION_UNKNOWN:I = 0x3

.field public static final SDC_RADAR_DISPLAY_LEVEL_1:I = 0x1

.field public static final SDC_RADAR_DISPLAY_LEVEL_2:I = 0x2

.field public static final SDC_TIPS_DISABLE:I = 0x0

.field public static final SDC_TIPS_ENABLE:I = 0x1

.field public static final SDC_TTS_ENABLE:I = 0x1

.field public static final SPECIAL_SAS_CONTROL:I = 0x3

.field public static final SPECIAL_SAS_CONTROL_FAIL:I = 0x5

.field public static final SPECIAL_SAS_DISPLAY:I = 0x1

.field public static final SPECIAL_SAS_FAIL:I = 0x4

.field public static final SPECIAL_SAS_OFF:I = 0x0

.field public static final SPECIAL_SAS_WARNING:I = 0x2

.field public static final SYS_AUTO_PARK_REVERSING_HOLD:Ljava/lang/String; = "persist.sys.auto_park_hold"

.field public static final SYS_AUTO_PARK_WARNING:Ljava/lang/String; = "persist.sys.auto_park_warning"

.field public static final SYS_WELCOME_OUT_OF_GARAGE:Ljava/lang/String; = "persist.sys.welcome_out_of_garage"

.field public static final TIRD_DISTRACTION_OFF:I = 0x0

.field public static final TIRD_DISTRACTION_ON:I = 0x1

.field public static final TIRD_DISTRACTION_RETURN_FROM_EXCEPTION:I = -0x1

.field public static final VPA_ST_DISABLE:I = 0x2

.field public static final VPA_ST_ENABLE:I = 0x1

.field public static final VPA_ST_INIT:I = 0x0

.field public static final VPA_ST_NOT_ACTIVATED:I = 0x3

.field public static final VPA_ST_OFF_MRR:I = 0x5

.field public static final VPA_ST_OFF_TTM:I = 0x4

.field public static final XPILOT_ST_INIT:I = 0x0

.field public static final XPILOT_ST_NOT_ACTIVATED:I = 0x3

.field public static final XPILOT_ST_OFF:I = 0x2

.field public static final XPILOT_ST_ON:I = 0x1

.field public static final XPU_SCU_LSS_ALARM_ENABLED:I = 0x1

.field public static final XPU_SCU_LSS_ALL_ENABLED:I = 0x3

.field public static final XPU_SCU_LSS_BREAK_DOWN:I = 0x4

.field public static final XPU_SCU_LSS_CLOSED:I = 0x0

.field public static final XPU_SCU_LSS_DEVIATION_ENABLED:I = 0x2

.field public static final XP_TTS_BROADCAST_TYPE:Ljava/lang/String; = "tts_broadcast_type"

.field public static final XP_TTS_BROADCAST_TYPE_CONCISE:I = 0x1

.field public static final XP_TTS_BROADCAST_TYPE_DETAIL:I


# virtual methods
.method public abstract getAccState()I
.end method

.method public abstract getAccStateForMirror()I
.end method

.method public abstract getAlcState()I
.end method

.method public abstract getApaSafeExamResult(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract getAutoParkSw()I
.end method

.method public abstract getBsdState()I
.end method

.method public abstract getDDAWStatus()I
.end method

.method public abstract getDowState()I
.end method

.method public abstract getDrivingSafeExamResult(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract getDrivingWithLidarSafeExamResult(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract getDsmSwStatus()I
.end method

.method public abstract getDsmTiredDistractionManualSw()Z
.end method

.method public abstract getDsmTiredDistractionSensitivity()I
.end method

.method public abstract getDsmTiredDistractionStatus()I
.end method

.method public abstract getElkState()I
.end method

.method public abstract getFcwSensitivity()I
.end method

.method public abstract getFcwState()I
.end method

.method public abstract getFreeNgpSafeExamResult(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract getFreeNgpUidResult(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract getIhbState()I
.end method

.method public abstract getImageRetentionState()Z
.end method

.method public abstract getIslaConfirmMode()I
.end method

.method public abstract getIslaSpdRange()I
.end method

.method public abstract getIslaState()I
.end method

.method public abstract getKeyParkSw()I
.end method

.method public abstract getLccSafeExamResult(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract getLccState()I
.end method

.method public abstract getLccWorkSt()I
.end method

.method public abstract getLdwState()I
.end method

.method public abstract getLkaState()I
.end method

.method public abstract getLssMode()I
.end method

.method public abstract getMemParkExamResult(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract getMemParkSafeExamResultV2(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract getMemoryParkSw()I
.end method

.method public abstract getNgpModeStatus()I
.end method

.method public abstract getNgpRemindMode()I
.end method

.method public abstract getNgpSafeExamResult(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract getNgpSafeExamResultV2(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract getNgpState()I
.end method

.method public abstract getNgpTipsMode()I
.end method

.method public abstract getNgpTruckOffsetSw()I
.end method

.method public abstract getNgpVoiceChangeLane()I
.end method

.method public abstract getNgpWithLidarSafeExamResultV2(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract getOverseasElkMode()I
.end method

.method public abstract getOverseasLkaMode()I
.end method

.method public abstract getParkSoundEffect()I
.end method

.method public abstract getParkingSafeExamResult(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract getParkingWithLidarSafeExamResult(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract getPhoneParkSw()I
.end method

.method public abstract getRctaState()I
.end method

.method public abstract getRcwState()I
.end method

.method public abstract getRemoteCameraSw()Z
.end method

.method public abstract getScuRearMirrorControlState()I
.end method

.method public abstract getSdcLeftRadarDisLevel()I
.end method

.method public abstract getSdcRightRadarDisLevel()I
.end method

.method public abstract getSlaState()I
.end method

.method public abstract getSuperLccExamResult(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract getSuperVpaExamResult(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract getTtsBroadcastType()I
.end method

.method public abstract getWogState()Z
.end method

.method public abstract getXpuXpilotState()I
.end method

.method public abstract isAutoPilotNeedTts()Z
.end method

.method public abstract isFirstOpenXngpSw()Z
.end method

.method public abstract isLccVideoWatched()Z
.end method

.method public abstract isMemParkVideoWatched()Z
.end method

.method public abstract isXpuXpilotActivated()Z
.end method

.method public abstract setAlcState(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAlcState(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setApaSafeExamResult(Ljava/lang/String;Z)V
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

.method public abstract setAutoParkSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAutoPilotNeedTts(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setBsdState(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setDDAWSwitchStatus(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setDistractionSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setDowSw(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSp"
        }
    .end annotation
.end method

.method public abstract setDrivingSafeExamResult(Ljava/lang/String;Z)V
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

.method public abstract setDrivingWithLidarSafeExamResult(Ljava/lang/String;Z)V
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

.method public abstract setDsmSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setDsmTiredDistractionManualSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setDsmTiredDistractionSensitivity(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract setDsmTiredDistractionStatus(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setFcwSensitivity(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setFcwState(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setFirstOpenXngpSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setFreeNgpSafeExamResult(Ljava/lang/String;Z)V
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

.method public abstract setFreeNgpUidResult(Ljava/lang/String;Z)V
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

.method public abstract setIhbState(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setImageRetentionEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setIslaConfirmMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setIslaSpdRange(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation
.end method

.method public abstract setKeyParkSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLccSafeExamResult(Ljava/lang/String;Z)V
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

.method public abstract setLccState(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLccState(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setLccVideoWatched(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "watched"
        }
    .end annotation
.end method

.method public abstract setLdwState(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLssMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setMemParkSafeExamResult(Ljava/lang/String;Z)V
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

.method public abstract setMemParkSafeExamResultV2(Ljava/lang/String;Z)V
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

.method public abstract setMemParkVideoWatched(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "watched"
        }
    .end annotation
.end method

.method public abstract setMemoryParkSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setNgpEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setNgpRemindMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setNgpSafeExamResult(Ljava/lang/String;Z)V
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

.method public abstract setNgpSafeExamResultV2(Ljava/lang/String;Z)V
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

.method public abstract setNgpTipsMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract setNgpTruckOffsetSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setNgpVoiceChangeLane(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setNgpWithLidarSafeExamResultV2(Ljava/lang/String;Z)V
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

.method public abstract setOverseasElkMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setOverseasLkaMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setParkSoundEffect(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setParkingSafeExamResult(Ljava/lang/String;Z)V
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

.method public abstract setParkingWithLidarSafeExamResult(Ljava/lang/String;Z)V
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

.method public abstract setPhoneParkSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setRctaState(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setRcwState(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setRemoteCameraSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setScuOtaTagStatus(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation
.end method

.method public abstract setSpecialSasMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setSuperLccSafeExamResult(Ljava/lang/String;Z)V
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

.method public abstract setSuperVpaSafeExamResult(Ljava/lang/String;Z)V
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

.method public abstract setTtsBroadcastType(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setWogSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method
