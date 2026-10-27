.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/avas/IAvasViewModel;
.super Ljava/lang/Object;
.source "IAvasViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# static fields
.field public static final AVAS_LOW_SPD_VOLUME_MAX:I = 0x64

.field public static final AVAS_LOW_SPD_VOLUME_MIN:I = 0x1

.field public static final SETTING_KEY_LOW_SPD_SW:Ljava/lang/String; = "xp_low_speed_sound"

.field public static final SETTING_LOW_SPD_ON:I = 0x1


# virtual methods
.method public abstract getAvasExternalVolume()I
.end method

.method public abstract getAvasSayHiSw()Z
.end method

.method public abstract getAvasSpeakerSw()Z
.end method

.method public abstract getBootEffectBeforeSw()I
.end method

.method public abstract getBootSoundEffect()I
.end method

.method public abstract getBootSoundPreviewPath(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract getFriendEffect()I
.end method

.method public abstract getLowSpdEffect()I
.end method

.method public abstract getLowSpdVolume()I
.end method

.method public abstract isAvasAcChargingEnable()Z
.end method

.method public abstract isAvasDcChargingEnable()Z
.end method

.method public abstract isAvasDisconnectChargingEnable()Z
.end method

.method public abstract isAvasExternalSwEnabled()Z
.end method

.method public abstract isAvasSleepEnable()Z
.end method

.method public abstract isAvasTakePhotoEnable()Z
.end method

.method public abstract isAvasWakeWaitEnable()Z
.end method

.method public abstract isAvasWakeWaitFullChargeEnable()Z
.end method

.method public abstract isLowSpdEnabled()Z
.end method

.method public abstract setAvasAcChargingSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAvasDcChargingSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAvasDisconnectChargingSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAvasExternalSound(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setAvasExternalSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAvasExternalVolume(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public abstract setAvasSayHiSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAvasSleepSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAvasSpeakerSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAvasTakePhotoSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAvasWakeWaitFullChargeSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAvasWakeWaitSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setBootEffectBeforeSw(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setBootSoundEffect(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setExternalSoundModeCmd(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setFriendEffect(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setLowSpdEffect(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setLowSpdEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLowSpdVolume(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method
