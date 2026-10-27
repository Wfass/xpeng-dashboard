.class public Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "DialogNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method protected onDialogActive(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.dm.active"
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 49
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogActiveReason;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogActiveReason;

    move-result-object v1

    .line 50
    .local v1, "activeReason":Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogActiveReason;
    if-eqz v0, :cond_0

    .line 51
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 52
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onDialogActive(Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogActiveReason;)V

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onDialogContinue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "sys.dialog.continue"
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 118
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 119
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onDialogContinue()V

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onDialogEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.dm.end"
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;

    move-result-object v1

    .line 93
    .local v1, "endReason":Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;
    if-eqz v0, :cond_0

    .line 94
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 95
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onDialogEnd(Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;)V

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onDialogError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "sys.dialog.error"
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 73
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onDialogError()V

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onDialogExit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.dm.exit"
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;

    move-result-object v1

    .line 82
    .local v1, "endReason":Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;
    if-eqz v0, :cond_0

    .line 83
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 84
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onDialogExit(Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;)V

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onDialogPrepare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.dm.prepare"
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;

    move-result-object v1

    .line 61
    .local v1, "activeReason":Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;
    if-eqz v0, :cond_0

    .line 62
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 63
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onDialogPrepare(Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;)V

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onDialogStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.dm.start"
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 38
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;

    move-result-object v1

    .line 39
    .local v1, "wakeupReason":Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;
    if-eqz v0, :cond_0

    .line 40
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 41
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onDialogStart(Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;)V

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onDialogState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.dialog.sound.area.status"
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 178
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;

    move-result-object v1

    .line 179
    .local v1, "state":Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;
    if-eqz v0, :cond_0

    .line 180
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 181
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onDialogSoundAreaStatusChanged(Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;)V

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onDialogStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "sys.dialog.status.changed"
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 157
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 158
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 159
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onDialogStatusChanged(Ljava/lang/String;)V

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onDialogSwitchStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.speech.switch.status"
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 189
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;

    move-result-object v1

    .line 190
    .local v1, "state":Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;
    if-eqz v0, :cond_0

    .line 191
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 192
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onDialogSwitchStatusChanged(Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;)V

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onDialogWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.dm.wait"
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 103
    .local v0, "listenerList":[Ljava/lang/Object;
    new-instance v1, Lcom/xiaopeng/speech/jarvisproto/DMWait;

    invoke-direct {v1}, Lcom/xiaopeng/speech/jarvisproto/DMWait;-><init>()V

    .line 104
    .local v1, "waitReason":Lcom/xiaopeng/speech/jarvisproto/DMWait;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/DMWait;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/DMWait;

    move-result-object v1

    .line 107
    :cond_0
    if-eqz v0, :cond_1

    .line 108
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 109
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onDialogWait(Lcom/xiaopeng/speech/jarvisproto/DMWait;)V

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected onSoundAreaStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.sound.area.status"
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 167
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;

    move-result-object v1

    .line 168
    .local v1, "soundAreaStatus":Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;
    if-eqz v0, :cond_0

    .line 169
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 170
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onSoundAreaStatusChanged(Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;)V

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onVadBegin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "sys.vad.begin"
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 137
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 139
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onVadBegin()V

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVadEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "sys.vad.end"
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 147
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 148
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 149
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onVadEnd()V

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWakeupResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "sys.wakeup.result"
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 127
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 128
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 129
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onWakeupResult()V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
