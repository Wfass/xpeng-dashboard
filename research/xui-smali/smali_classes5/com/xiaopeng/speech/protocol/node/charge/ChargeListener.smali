.class public interface abstract Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;
.super Ljava/lang/Object;
.source "ChargeListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/INodeListener;


# virtual methods
.method public onChangeMileageMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "standard"    # Ljava/lang/String;

    .line 156
    return-void
.end method

.method public onChargeTrunkPower(Z)V
    .locals 0
    .param p1, "isOpen"    # Z

    .line 163
    return-void
.end method

.method public abstract onModeFull()V
.end method

.method public abstract onModePercent(I)V
.end method

.method public abstract onModePercentSupport(I)V
.end method

.method public abstract onModeSmartClose()V
.end method

.method public abstract onModeSmartCloseSupport()V
.end method

.method public abstract onModeSmartOff()V
.end method

.method public abstract onModeSmartOffSupport()V
.end method

.method public abstract onModeSmartOn()V
.end method

.method public abstract onModeSmartOnSupport()V
.end method

.method public abstract onPortOpen()V
.end method

.method public abstract onPortOpenSupport()V
.end method

.method public abstract onRestart()V
.end method

.method public abstract onRestartSupport()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStartSupport()V
.end method

.method public abstract onStop()V
.end method

.method public abstract onStopSupport()V
.end method

.method public abstract onUiClose()V
.end method

.method public abstract onUiOpen()V
.end method

.method public setDischargeLimit(I)V
    .locals 0
    .param p1, "target"    # I

    .line 170
    return-void
.end method
