.class public abstract Lcom/xiaopeng/speech/protocol/node/charge/AbsChargeListener;
.super Ljava/lang/Object;
.source "AbsChargeListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeMileageMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "standard"    # Ljava/lang/String;

    .line 106
    return-void
.end method

.method public onChargeTrunkPower(Z)V
    .locals 0
    .param p1, "isOpen"    # Z

    .line 111
    return-void
.end method

.method public onModeFull()V
    .locals 0

    .line 71
    return-void
.end method

.method public onModePercent(I)V
    .locals 0
    .param p1, "target"    # I

    .line 66
    return-void
.end method

.method public onModePercentSupport(I)V
    .locals 0
    .param p1, "target"    # I

    .line 61
    return-void
.end method

.method public onModeSmartClose()V
    .locals 0

    .line 91
    return-void
.end method

.method public onModeSmartCloseSupport()V
    .locals 0

    .line 86
    return-void
.end method

.method public onModeSmartOff()V
    .locals 0

    .line 101
    return-void
.end method

.method public onModeSmartOffSupport()V
    .locals 0

    .line 96
    return-void
.end method

.method public onModeSmartOn()V
    .locals 0

    .line 81
    return-void
.end method

.method public onModeSmartOnSupport()V
    .locals 0

    .line 76
    return-void
.end method

.method public onPortOpen()V
    .locals 0

    .line 16
    return-void
.end method

.method public onPortOpenSupport()V
    .locals 0

    .line 11
    return-void
.end method

.method public onRestart()V
    .locals 0

    .line 36
    return-void
.end method

.method public onRestartSupport()V
    .locals 0

    .line 31
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 26
    return-void
.end method

.method public onStartSupport()V
    .locals 0

    .line 21
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 46
    return-void
.end method

.method public onStopSupport()V
    .locals 0

    .line 41
    return-void
.end method

.method public onUiClose()V
    .locals 0

    .line 56
    return-void
.end method

.method public onUiOpen()V
    .locals 0

    .line 51
    return-void
.end method

.method public setDischargeLimit(I)V
    .locals 0
    .param p1, "target"    # I

    .line 116
    return-void
.end method
