.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/xpu/IXpuViewModel;
.super Ljava/lang/Object;
.source "IXpuViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# static fields
.field public static final LSS_SEN_ST_HIGH:I = 0x2

.field public static final LSS_SEN_ST_LOW:I = 0x0

.field public static final LSS_SEN_ST_MEDIUM:I = 0x1

.field public static final LSS_SEN_ST_TTM:I = 0x3


# virtual methods
.method public abstract getAsLockScenario()I
.end method

.method public abstract getAsTargetMaxHeightRequest()I
.end method

.method public abstract getAsTargetMinHeightRequest()I
.end method

.method public abstract getCngpSafeExamResult()Z
.end method

.method public abstract getLccCrossBarriersSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getLccTrafficLightSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getLssSensitivity()I
.end method

.method public abstract getMapUserExperiencePlanState()Z
.end method

.method public abstract getNedcState()Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;
.end method

.method public abstract getNgpActivateModeState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getNgpCustomSpeedKph()I
.end method

.method public abstract getNgpCustomSpeedMode()I
.end method

.method public abstract getNgpCustomSpeedPercent()I
.end method

.method public abstract getNgpFreeNgpState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
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

.method public abstract getRaebState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getSimpleSasMode()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;
.end method

.method public abstract getSoundSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getTurnAssistantSw()Z
.end method

.method public abstract getVoiceSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getXngpSafeExamResult()Z
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

.method public abstract isNgpMode()Z
.end method

.method public abstract isXpuNedcActivated()Z
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

.method public abstract setRaebEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setSimpleSasMode(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "islaMode"
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
