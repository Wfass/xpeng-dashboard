.class public interface abstract Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;
.super Ljava/lang/Object;
.source "ComboListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/INodeListener;


# virtual methods
.method public enterUserMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .line 104
    return-void
.end method

.method public enterUserModeWithExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .line 108
    return-void
.end method

.method public exitUserModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .line 110
    return-void
.end method

.method public onCancel()V
    .locals 0

    .line 116
    return-void
.end method

.method public onDataModeBioTts()V
    .locals 0

    .line 55
    return-void
.end method

.method public onDataModeFridgeTts()V
    .locals 0

    .line 67
    return-void
.end method

.method public onDataModeInvisibleTts()V
    .locals 0

    .line 40
    return-void
.end method

.method public onDataModeMeditationTts()V
    .locals 0

    .line 45
    return-void
.end method

.method public onDataModeVentilateTts()V
    .locals 0

    .line 61
    return-void
.end method

.method public onDataModeWaitTts()V
    .locals 0

    .line 89
    return-void
.end method

.method public onExtra()V
    .locals 0

    .line 118
    return-void
.end method

.method public onFastCloseModeInvisible()V
    .locals 0

    .line 50
    return-void
.end method

.method public onModeBio()V
    .locals 0

    .line 11
    return-void
.end method

.method public onModeBioOff()V
    .locals 0

    .line 72
    return-void
.end method

.method public onModeFridge()V
    .locals 0

    .line 35
    return-void
.end method

.method public onModeFridgeOff()V
    .locals 0

    .line 84
    return-void
.end method

.method public onModeInvisible()V
    .locals 0

    .line 23
    return-void
.end method

.method public onModeInvisibleOff()V
    .locals 0

    .line 29
    return-void
.end method

.method public onModeVentilate()V
    .locals 0

    .line 17
    return-void
.end method

.method public onModeVentilateOff()V
    .locals 0

    .line 78
    return-void
.end method

.method public onModeWait()V
    .locals 0

    .line 95
    return-void
.end method

.method public onModeWaitOff()V
    .locals 0

    .line 100
    return-void
.end method

.method public onSubmit()V
    .locals 0

    .line 114
    return-void
.end method
