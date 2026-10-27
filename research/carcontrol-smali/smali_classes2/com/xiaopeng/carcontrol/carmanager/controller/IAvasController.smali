.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;
.super Ljava/lang/Object;
.source "IAvasController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;",
        ">;"
    }
.end annotation


# static fields
.field public static final AVAS_LOW_SPD_VOLUME_MAX:I = 0x64

.field public static final AVAS_LOW_SPD_VOLUME_MIN:I = 0x1

.field public static final AVAS_SOUND_EFFECT_1:I = 0x1

.field public static final AVAS_SOUND_EFFECT_2:I = 0x2

.field public static final AVAS_SOUND_EFFECT_3:I = 0x3

.field public static final AVAS_SOUND_EFFECT_4:I = 0x4

.field public static final BOOT_SOUND_DISABLE:I = 0x0

.field public static final BOOT_SOUND_EFFECT_A:I = 0x1

.field public static final BOOT_SOUND_EFFECT_B:I = 0x2

.field public static final BOOT_SOUND_EFFECT_C:I = 0x3

.field public static final BOOT_SOUND_EFFECT_D:I = 0x4


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

.method public abstract getBootSoundResource()[Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
.end method

.method public abstract getFriendSoundType()I
.end method

.method public abstract getLowSpdSoundType()I
.end method

.method public abstract getLowSpdSoundVolume()I
.end method

.method public abstract isAvasAcChargingEnable()Z
.end method

.method public abstract isAvasDcChargingEnable()Z
.end method

.method public abstract isAvasDisconnectChargingEnable()Z
.end method

.method public abstract isAvasExternalEnabled()Z
.end method

.method public abstract isAvasSleepEnable()Z
.end method

.method public abstract isAvasTakePhotoEnable()Z
.end method

.method public abstract isAvasWakeWaitEnable()Z
.end method

.method public abstract isAvasWakeWaitFullChargeEnable()Z
.end method

.method public abstract isLowSpdSoundEnabled()Z
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

.method public abstract setBootSoundEffect(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "needSave"
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

.method public abstract setFriendSoundType(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setLockAvasNewSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLockAvasSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLowSpdSoundEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLowSpdSoundType(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setLowSpdSoundType(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setLowSpdSoundVolume(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public abstract setUnLockAvasNewSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method
