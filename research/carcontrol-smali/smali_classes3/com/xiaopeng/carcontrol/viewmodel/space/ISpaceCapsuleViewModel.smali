.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/space/ISpaceCapsuleViewModel;
.super Ljava/lang/Object;
.source "ISpaceCapsuleViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# virtual methods
.method public abstract getCapsuleSingleVipSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;
.end method

.method public abstract getCapsuleVipSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;
.end method

.method public abstract getDrvVipSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;
.end method

.method public abstract getPsnVipSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;
.end method

.method public abstract getRearSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;
.end method

.method public abstract getRlSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;
.end method

.method public abstract getRrSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;
.end method

.method public abstract getSleepSecSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;
.end method

.method public abstract getSpaceCapsuleSleepMusic()Ljava/lang/String;
.end method

.method public abstract isFirstEnterSpaceCapsule()Z
.end method

.method public abstract isSpaceCapsuleSleepBgmOpen()Z
.end method

.method public abstract onModeStart(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isVipMode",
            "mIsVoiceSource"
        }
    .end annotation
.end method

.method public abstract setCapsuleSingleVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation
.end method

.method public abstract setCapsuleVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation
.end method

.method public abstract setDrvVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation
.end method

.method public abstract setNotFirstEnterSpaceCapsule()V
.end method

.method public abstract setPsnVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation
.end method

.method public abstract setRearSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation
.end method

.method public abstract setRlSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation
.end method

.method public abstract setRrSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation
.end method

.method public abstract setSpaceCapsuleSleepBgmOpen(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOpen"
        }
    .end annotation
.end method

.method public abstract setSpaceCapsuleSleepMusic(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation
.end method

.method public abstract setSpeechStart()V
.end method

.method public abstract setSpeechStop()V
.end method

.method public abstract setVipSleepSecSeatControl(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation
.end method

.method public abstract stopCapsuleSeatMove()V
.end method

.method public abstract stopDrvSeatMove()V
.end method

.method public abstract stopPsnSeatMove()V
.end method

.method public abstract stopRearSeatMove()V
.end method

.method public abstract stopRlSeatMove()V
.end method

.method public abstract stopRrSeatMove()V
.end method
