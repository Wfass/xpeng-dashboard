.class public Lcom/xiaopeng/speech/protocol/node/speech/AbsSpeechDialogListener;
.super Ljava/lang/Object;
.source "AbsSpeechDialogListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseSceneGuideWindow(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 28
    return-void
.end method

.method public onCloseSpeechSceneSetting()V
    .locals 0

    .line 38
    return-void
.end method

.method public onCloseSuperDialogue()V
    .locals 0

    .line 49
    return-void
.end method

.method public onCloseWindow(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 13
    return-void
.end method

.method public onContinueDialogueClose()V
    .locals 0

    .line 99
    return-void
.end method

.method public onContinueDialogueOpen()V
    .locals 0

    .line 94
    return-void
.end method

.method public onGlobalSpeechExit()V
    .locals 0

    .line 59
    return-void
.end method

.method public onOpenSceneGuideWindow(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 23
    return-void
.end method

.method public onOpenSpeechSceneSetting()V
    .locals 0

    .line 33
    return-void
.end method

.method public onOpenSuperDialogue()V
    .locals 0

    .line 44
    return-void
.end method

.method public onOpenWindow(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 18
    return-void
.end method

.method public onRefreshUi(IZ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "state"    # Z

    .line 54
    return-void
.end method

.method public onScriptQuit()V
    .locals 0

    .line 64
    return-void
.end method

.method public onScriptWidget(Ljava/lang/String;)V
    .locals 0
    .param p1, "widget"    # Ljava/lang/String;

    .line 69
    return-void
.end method

.method public onSoundAreaClose(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 89
    return-void
.end method

.method public onSoundAreaOpen(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setScreenOn(I)V
    .locals 0
    .param p1, "display_location"    # I

    .line 74
    return-void
.end method

.method public showChildwatchLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 79
    return-void
.end method
