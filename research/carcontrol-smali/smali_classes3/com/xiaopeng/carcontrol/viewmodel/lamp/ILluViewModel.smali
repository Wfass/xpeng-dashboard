.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILluViewModel;
.super Ljava/lang/Object;
.source "ILluViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# virtual methods
.method public abstract getLluAwakeMode()I
.end method

.method public abstract getLluChargingSw()Z
.end method

.method public abstract getLluEffect(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectName"
        }
    .end annotation
.end method

.method public abstract getLluSleepMode()I
.end method

.method public abstract getLluSleepSw()Z
.end method

.method public abstract getLluSpeedLimitCfg()I
.end method

.method public abstract getLluWakeWaitSw()Z
.end method

.method public abstract getRunningLluEffect()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;
.end method

.method public abstract isLLuSwEnabled()Z
.end method

.method public abstract isLightDanceAvailable()I
.end method

.method public abstract isLluChargingEnable()Z
.end method

.method public abstract isLluLockUnlockEleEnabled()Z
.end method

.method public abstract isLluPhotoEnable()Z
.end method

.method public abstract isLluShowOffEnable()Z
.end method

.method public abstract isLluSleepEnable()Z
.end method

.method public abstract isLluWakeWaitEnable()Z
.end method

.method public abstract isSayHiEnabled()Z
.end method

.method public abstract playLluEffect(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pause"
        }
    .end annotation
.end method

.method public abstract setLangLightMusicEffect(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectName"
        }
    .end annotation
.end method

.method public abstract setLluAwakeMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setLluChargingSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLluDancePreview(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filename"
        }
    .end annotation
.end method

.method public abstract setLluEffect(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectName",
            "effectMode"
        }
    .end annotation
.end method

.method public abstract setLluEffectPreview(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation
.end method

.method public abstract setLluLockUnlockEleSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLluMultiSwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLluPhotoSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLluShowOffSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLluSleepMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setLluSleepSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLluSpeedLimitCfg(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation
.end method

.method public abstract setLluSwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLluWakeWaitSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setSayHiEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract stopLluEffectPreview()V
.end method
