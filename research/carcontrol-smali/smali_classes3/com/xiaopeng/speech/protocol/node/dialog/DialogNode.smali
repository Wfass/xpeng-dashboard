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

    return-void
.end method


# virtual methods
.method protected onDialogActive(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 48
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 49
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogActiveReason;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogActiveReason;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 51
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 52
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onDialogActive(Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogActiveReason;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDialogContinue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 118
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 119
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onDialogContinue()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDialogEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 92
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 94
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 95
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onDialogEnd(Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDialogError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 72
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 73
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onDialogError()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDialogExit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 81
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 83
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 84
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onDialogExit(Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDialogPrepare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 60
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 62
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 63
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onDialogPrepare(Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDialogStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 38
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 40
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 41
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onDialogStart(Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDialogState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 177
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 178
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 180
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 181
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onDialogSoundAreaStatusChanged(Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDialogStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 158
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 159
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onDialogStatusChanged(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDialogSwitchStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 188
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 189
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 191
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 192
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onDialogSwitchStatusChanged(Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDialogWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 103
    new-instance v0, Lcom/xiaopeng/speech/jarvisproto/DMWait;

    invoke-direct {v0}, Lcom/xiaopeng/speech/jarvisproto/DMWait;-><init>()V

    .line 104
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/DMWait;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/DMWait;

    move-result-object v0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 108
    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_1

    .line 109
    aget-object v1, p1, p2

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onDialogWait(Lcom/xiaopeng/speech/jarvisproto/DMWait;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onSoundAreaStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 166
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 167
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 169
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 170
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onSoundAreaStatusChanged(Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVadBegin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 138
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 139
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onVadBegin()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVadEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 148
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 149
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onVadEnd()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWakeupResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 128
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 129
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogListener;->onWakeupResult()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
