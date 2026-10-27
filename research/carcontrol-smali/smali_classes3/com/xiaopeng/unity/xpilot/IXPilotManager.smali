.class public interface abstract Lcom/xiaopeng/unity/xpilot/IXPilotManager;
.super Ljava/lang/Object;
.source "IXPilotManager.java"


# virtual methods
.method public abstract checkAllSafeExamResult()V
.end method

.method public abstract getAlcState()I
.end method

.method public abstract getAutoParkSafeExamResult()Z
.end method

.method public abstract getAutoParkState()I
.end method

.method public abstract getBsdState()I
.end method

.method public abstract getCrossBarrierState()I
.end method

.method public abstract getDDAWStatus()I
.end method

.method public abstract getDomesticIslaMode()I
.end method

.method public abstract getDowState()I
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

.method public abstract getDsmTiredDistractionManualSw()I
.end method

.method public abstract getDsmTiredDistractionSensitivity()I
.end method

.method public abstract getDsmTiredDistractionSw()I
.end method

.method public abstract getEnhancedParkState()I
.end method

.method public abstract getFcwSensitivity()I
.end method

.method public abstract getFcwState()I
.end method

.method public abstract getFreeNgpSafeExamResult()Z
.end method

.method public abstract getIslaConfirmMode()I
.end method

.method public abstract getKeyParkState()I
.end method

.method public abstract getLccSafeExamResult()Z
.end method

.method public abstract getLccState()I
.end method

.method public abstract getLdwState()I
.end method

.method public abstract getLssSensitivity()I
.end method

.method public abstract getLssState()I
.end method

.method public abstract getMemParkSafeExamResultV2()Z
.end method

.method public abstract getMemParkState()I
.end method

.method public abstract getNedcState()I
.end method

.method public abstract getNgpActivateModeState()I
.end method

.method public abstract getNgpAflFunctionVisibility()Z
.end method

.method public abstract getNgpAflState()I
.end method

.method public abstract getNgpCustomPreferenMode()I
.end method

.method public abstract getNgpCustomSpeedKph()I
.end method

.method public abstract getNgpCustomSpeedMode()I
.end method

.method public abstract getNgpCustomSpeedPercent()I
.end method

.method public abstract getNgpFreeNgpState()I
.end method

.method public abstract getNgpNewAflState()Z
.end method

.method public abstract getNgpOvertakeMode()I
.end method

.method public abstract getNgpRemindMode()I
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

.method public abstract getNgpState()I
.end method

.method public abstract getNgpTipsMode()I
.end method

.method public abstract getNgpTruckOffsetState()I
.end method

.method public abstract getNgpVoiceChangeLane()I
.end method

.method public abstract getOverseasElkState()I
.end method

.method public abstract getOverseasIslaMode()I
.end method

.method public abstract getOverseasLkaState()I
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

.method public abstract getRaebState()I
.end method

.method public abstract getRctaState()I
.end method

.method public abstract getRcwState()I
.end method

.method public abstract getSoundSw()I
.end method

.method public abstract getSsaSw()I
.end method

.method public abstract getStudyUrl(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskId"
        }
    .end annotation
.end method

.method public abstract getTrafficLightState()I
.end method

.method public abstract getVoiceSw()I
.end method

.method public abstract getWogState()I
.end method

.method public abstract getXpilotUserExperiencePlanState()Z
.end method

.method public abstract getXpuXpilotState()I
.end method

.method public abstract isCameraOverTemp()Z
.end method

.method public abstract isPGear()Z
.end method

.method public abstract requestFreengpUidResult()V
.end method

.method public abstract requestSafeExamResult(JZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskId",
            "loop"
        }
    .end annotation
.end method

.method public abstract requestSafeExamUrl(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskId"
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

.method public abstract setAutoParkEnableWithSource(ZI)V
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

.method public abstract setCrossBarrierEnable(Z)V
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

.method public abstract setDomesticIslaMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
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

.method public abstract setEnhancedParkSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setFcwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
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

.method public abstract setIslaConfirmMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
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

.method public abstract setLccEnableWithSource(ZI)V
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

.method public abstract setLdwEnable(Z)V
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

.method public abstract setMemParkEnableWithSource(ZI)V
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

.method public abstract setNedcEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
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

.method public abstract setNgpCustomPreferenMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
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

.method public abstract setNgpEnableWithSource(ZI)V
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
            "mode"
        }
    .end annotation
.end method

.method public abstract setNgpTruckOffsetEnable(Z)V
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

.method public abstract setRaeb(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setRctaEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
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

.method public abstract setSoundSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setSsaEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setTrafficLightEnable(Z)V
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
            "mode"
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

.method public abstract shouldSkipSafeExam()Z
.end method

.method public abstract stopCheckSafeExamResult()V
.end method
