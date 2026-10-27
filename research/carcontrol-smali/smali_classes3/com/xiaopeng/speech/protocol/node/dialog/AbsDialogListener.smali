.class public abstract Lcom/xiaopeng/speech/protocol/node/dialog/AbsDialogListener;
.super Ljava/lang/Object;
.source "AbsDialogListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogActive(Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogActiveReason;)V
    .locals 0

    return-void
.end method

.method public onDialogContinue()V
    .locals 0

    return-void
.end method

.method public onDialogEnd(Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;)V
    .locals 0

    return-void
.end method

.method public onDialogError()V
    .locals 0

    return-void
.end method

.method public onDialogExit(Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;)V
    .locals 0

    return-void
.end method

.method public onDialogStart(Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;)V
    .locals 0

    return-void
.end method

.method public onDialogStatusChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDialogWait(Lcom/xiaopeng/speech/jarvisproto/DMWait;)V
    .locals 0

    return-void
.end method

.method public onResourceUpdateded()V
    .locals 0

    return-void
.end method

.method public onUploadResult()V
    .locals 0

    return-void
.end method

.method public onVadBegin()V
    .locals 0

    return-void
.end method

.method public onVadEnd()V
    .locals 0

    return-void
.end method

.method public onWakeupResult()V
    .locals 0

    return-void
.end method
