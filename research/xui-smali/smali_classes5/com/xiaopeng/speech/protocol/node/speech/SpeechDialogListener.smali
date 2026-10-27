.class public interface abstract Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;
.super Ljava/lang/Object;
.source "SpeechDialogListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/INodeListener;


# virtual methods
.method public closeDefaultWakeup(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 107
    return-void
.end method

.method public closeFastSpeech(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 86
    return-void
.end method

.method public closeFullTimeSpeech(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 94
    return-void
.end method

.method public closeMultiSpeech(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 90
    return-void
.end method

.method public dialogTurnMultiple(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 111
    return-void
.end method

.method public dialogTurnSingle(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 109
    return-void
.end method

.method public injectTriggerWords(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 100
    return-void
.end method

.method public abstract onCloseSceneGuideWindow(Ljava/lang/String;)V
.end method

.method public abstract onCloseSpeechSceneSetting()V
.end method

.method public onCloseSuperDialogue()V
    .locals 0

    .line 56
    return-void
.end method

.method public abstract onCloseWindow(Ljava/lang/String;)V
.end method

.method public onContinueDialogueClose()V
    .locals 0

    .line 103
    return-void
.end method

.method public onContinueDialogueOpen()V
    .locals 0

    .line 102
    return-void
.end method

.method public onGlobalSpeechExit()V
    .locals 0

    .line 66
    return-void
.end method

.method public abstract onOpenSceneGuideWindow(Ljava/lang/String;)V
.end method

.method public abstract onOpenSpeechSceneSetting()V
.end method

.method public onOpenSuperDialogue()V
    .locals 0

    .line 52
    return-void
.end method

.method public abstract onOpenWindow(Ljava/lang/String;)V
.end method

.method public onRefreshUi(IZ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "state"    # Z

    .line 64
    return-void
.end method

.method public onScriptQuit()V
    .locals 0

    .line 70
    return-void
.end method

.method public onScriptWidget(Ljava/lang/String;)V
    .locals 0
    .param p1, "widget"    # Ljava/lang/String;

    .line 68
    return-void
.end method

.method public onSoundAreaClose(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 82
    return-void
.end method

.method public onSoundAreaOpen(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 80
    return-void
.end method

.method public openDefaultWakeup(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 105
    return-void
.end method

.method public openFastSpeech(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 84
    return-void
.end method

.method public openFullTimeSpeech(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 92
    return-void
.end method

.method public openMultiSpeech(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setScreenOn(I)V
    .locals 0
    .param p1, "display_location"    # I

    .line 72
    return-void
.end method

.method public showChildwatchLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 78
    return-void
.end method

.method public ttsPositionScreen(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 113
    return-void
.end method

.method public ttsPositionSeat(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 115
    return-void
.end method
