.class public interface abstract Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;
.super Ljava/lang/Object;
.source "DialogListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/INodeListener;


# virtual methods
.method public onDialogActive(Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogActiveReason;)V
    .locals 0

    return-void
.end method

.method public abstract onDialogContinue()V
.end method

.method public abstract onDialogEnd(Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;)V
.end method

.method public abstract onDialogError()V
.end method

.method public onDialogExit(Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;)V
    .locals 0

    return-void
.end method

.method public onDialogPrepare(Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;)V
    .locals 0

    return-void
.end method

.method public onDialogSoundAreaStatusChanged(Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;)V
    .locals 0

    return-void
.end method

.method public abstract onDialogStart(Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;)V
.end method

.method public onDialogStatusChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDialogSwitchStatusChanged(Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;)V
    .locals 0

    return-void
.end method

.method public abstract onDialogWait(Lcom/xiaopeng/speech/jarvisproto/DMWait;)V
.end method

.method public onSoundAreaStatusChanged(Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;)V
    .locals 0

    return-void
.end method

.method public abstract onVadBegin()V
.end method

.method public abstract onVadEnd()V
.end method

.method public abstract onWakeupResult()V
.end method
