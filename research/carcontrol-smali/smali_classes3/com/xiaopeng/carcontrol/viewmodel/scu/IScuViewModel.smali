.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;
.super Ljava/lang/Object;
.source "IScuViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# static fields
.field public static final MRR_CLOSE_REASON_TELESCOPE:I = 0x1

.field public static final NGP_XPILOT_ST_INIT:I = 0x0

.field public static final NGP_XPILOT_ST_NOT_ACTIVATED:I = 0x3

.field public static final NGP_XPILOT_ST_OFF:I = 0x2

.field public static final NGP_XPILOT_ST_ON:I = 0x1

.field public static final SDC_DOOR_OBSTACLE_DANGER:I = 0x1

.field public static final SDC_DOOR_OBSTACLE_SAFETY:I = 0x2

.field public static final SDC_DOOR_OBSTACLE_UNKNOWN:I = 0x3


# virtual methods
.method public abstract clearRestoreState()V
.end method

.method public abstract closeMrrByUser(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation
.end method

.method public abstract dismissCloseMrrDialog()V
.end method

.method public abstract getAccStateForMirror()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getAlcState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getApaSafeExamResult()Z
.end method

.method public abstract getAutoParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getBsdState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getDDAWStatus()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getDowState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getDrivingSafeExamResult(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lidar"
        }
    .end annotation
.end method

.method public abstract getDsmState()Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmState;
.end method

.method public abstract getDsmTiredDistractionManualStatus()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getDsmTiredDistractionSensitivity()I
.end method

.method public abstract getDsmTiredDistractionSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getFcwSensitivity()Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;
.end method

.method public abstract getFcwState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getFreeNgpSafeExamResult()Z
.end method

.method public abstract getIhbState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getImageRetentionState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getIslaConfirmMode()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getIslaSpdRange()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;
.end method

.method public abstract getIslaState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getKeyParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getLccSafeExamResult()Z
.end method

.method public abstract getLccState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getLccWorkSt()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getLdwState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getLssMode()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;
.end method

.method public abstract getMemParkSafeExamResult()Z
.end method

.method public abstract getMemParkSafeExamResultV2()Z
.end method

.method public abstract getMemoryParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getNgpAflFunctionVisibility()Z
.end method

.method public abstract getNgpAflState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getNgpMode()I
.end method

.method public abstract getNgpNewAflState()Z
.end method

.method public abstract getNgpRemindMode()I
.end method

.method public abstract getNgpSafeExamResult()Z
.end method

.method public abstract getNgpSafeExamResultV2(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lidar"
        }
    .end annotation
.end method

.method public abstract getNgpState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getNgpTipsMode()I
.end method

.method public abstract getNgpTruckOffsetSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getNgpVoiceChangeLane()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getOverseasElkMode()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;
.end method

.method public abstract getOverseasIslaMode()I
.end method

.method public abstract getOverseasLkaMode()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;
.end method

.method public abstract getParkSoundEffect()I
.end method

.method public abstract getParkingSafeExamResult(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lidar"
        }
    .end annotation
.end method

.method public abstract getPhoneParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getRctaState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getRcwState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getSdcLeftRadarDisLevel()I
.end method

.method public abstract getSdcRightRadarDisLevel()I
.end method

.method public abstract getSlaState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getWogState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getXpuXpilotState()I
.end method

.method public abstract isCngpRunning()Z
.end method

.method public abstract isMemParkVideoWatched()Z
.end method

.method public abstract isNgpRunning()Z
.end method

.method public abstract isXpuXpilotActivated()Z
.end method

.method public abstract moveToExhibitionPos()V
.end method

.method public abstract openMrrByUser(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation
.end method

.method public abstract setAlcEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
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

.method public abstract setAutoParkSw(ZI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "source"
        }
    .end annotation
.end method

.method public abstract setBsdEnable(Z)V
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

.method public abstract setDowEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
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
            "on"
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

.method public abstract setDsmTiredDistractionSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setFcwEnable()V
.end method

.method public abstract setFcwSensitivity(Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setIhbEnable(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "showToast"
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

.method public abstract setIslaSpdRange(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spdRange"
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

.method public abstract setLccEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLccEnable(ZI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "source"
        }
    .end annotation
.end method

.method public abstract setLdwEnable()V
.end method

.method public abstract setLssMode(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lssMode"
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

.method public abstract setMemoryParkSw(ZI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "source"
        }
    .end annotation
.end method

.method public abstract setNgpAflEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
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

.method public abstract setNgpEnable(ZI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "source"
        }
    .end annotation
.end method

.method public abstract setNgpNewAflEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
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

.method public abstract setOverseasElkMode(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elkMode"
        }
    .end annotation
.end method

.method public abstract setOverseasIslaMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setOverseasLkaMode(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lkaMode"
        }
    .end annotation
.end method

.method public abstract setParkSoundEffect(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "soundEffect"
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

.method public abstract setRctaEnable()V
.end method

.method public abstract setRcwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setWogSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract showCloseMrrDialog()V
.end method
