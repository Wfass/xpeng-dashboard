.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;
.super Ljava/lang/Object;
.source "ILluController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;",
        ">;"
    }
.end annotation


# static fields
.field public static final LIGHT_EFFECT_ACCHARGE:I = 0x6

.field public static final LIGHT_EFFECT_AWAKE:I = 0x2

.field public static final LIGHT_EFFECT_DCCHARGE:I = 0x7

.field public static final LIGHT_EFFECT_FINDCAR:I = 0x1

.field public static final LIGHT_EFFECT_LOCKING:I = 0x14

.field public static final LIGHT_EFFECT_SAYHI:I = 0xa

.field public static final LIGHT_EFFECT_SLEEP:I = 0x5

.field public static final LIGHT_EFFECT_TAKEPHOTO:I = 0x9

.field public static final LLU_EFFECT_AC_CHARGE:Ljava/lang/String; = "android_ac"

.field public static final LLU_EFFECT_AWAKE:Ljava/lang/String; = "android_unlock_01"

.field public static final LLU_EFFECT_AWAKE2:Ljava/lang/String; = "android_unlock_02"

.field public static final LLU_EFFECT_AWAKE3:Ljava/lang/String; = "android_unlock_03"

.field public static final LLU_EFFECT_CLOSE:I = 0x0

.field public static final LLU_EFFECT_DANCE:Ljava/lang/String; = "WeddingMarch"

.field public static final LLU_EFFECT_DC_CHARGE:Ljava/lang/String; = "android_dc"

.field public static final LLU_EFFECT_FIND_CAR:Ljava/lang/String; = "android_findcar"

.field public static final LLU_EFFECT_FULL_CHARGED:Ljava/lang/String; = "fullcharged"

.field public static final LLU_EFFECT_LOCKING:Ljava/lang/String; = "android_locking_01"

.field public static final LLU_EFFECT_LOCKING2:Ljava/lang/String; = "android_locking_02"

.field public static final LLU_EFFECT_LOCKING3:Ljava/lang/String; = "android_locking_03"

.field public static final LLU_EFFECT_MODE_A:I = 0x1

.field public static final LLU_EFFECT_MODE_B:I = 0x2

.field public static final LLU_EFFECT_MODE_C:I = 0x3

.field public static final LLU_EFFECT_SAYHI:Ljava/lang/String; = "android_sayhi_01"

.field public static final LLU_EFFECT_SAYHI2:Ljava/lang/String; = "android_sayhi_02"

.field public static final LLU_EFFECT_SAYHI3:Ljava/lang/String; = "android_sayhi_03"

.field public static final LLU_EFFECT_SLEEP:Ljava/lang/String; = "android_lock_01"

.field public static final LLU_EFFECT_SLEEP2:Ljava/lang/String; = "android_lock_02"

.field public static final LLU_EFFECT_SLEEP3:Ljava/lang/String; = "android_lock_03"

.field public static final LLU_EFFECT_TAKE_PHOTO:Ljava/lang/String; = "takephoto"

.field public static final LLU_MODE_1:I = 0x1

.field public static final LLU_MODE_2:I = 0x2

.field public static final LLU_MODE_3:I = 0x3

.field public static final LLU_SYNC_DANCE_SHOW:Ljava/lang/String; = "e28s-test"

.field public static final LLU_SYNC_DANCE_SHOW_01:Ljava/lang/String; = "remote_show_01"

.field public static final LLU_SYNC_DANCE_SHOW_02:Ljava/lang/String; = "remote_show_02"

.field public static final LLU_SYNC_DANCE_SHOW_03:Ljava/lang/String; = "remote_show_03"


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

.method public abstract getRunningLluEffectName()Ljava/lang/String;
.end method

.method public abstract isLightDanceAvailable()I
.end method

.method public abstract isLluChargingEnable()Z
.end method

.method public abstract isLluEnabled()Z
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

.method public abstract setLluChargingSwitch(ZZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "sendCmd",
            "needSave"
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

.method public abstract setLluEffectPreview(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effect",
            "filename"
        }
    .end annotation
.end method

.method public abstract setLluEffectPreview(Ljava/lang/String;Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "effect",
            "filename",
            "times"
        }
    .end annotation
.end method

.method public abstract setLluEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLluEnable(ZZ)V
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

.method public abstract setLluSleepSwitch(ZZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "sendCmd",
            "needSave"
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

.method public abstract setLluWakeWaitSwitch(ZZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "sendCmd",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setPause(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pause"
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
