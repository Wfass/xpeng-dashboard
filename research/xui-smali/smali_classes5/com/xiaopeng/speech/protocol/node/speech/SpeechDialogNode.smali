.class public Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "SpeechDialogNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method protected closeDefaultWakeup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://default.wakeup.off"
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 319
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 320
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 321
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->closeDefaultWakeup(Ljava/lang/String;)V

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected closeFastSpeech(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://fast.speech.off"
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 229
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 230
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 231
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->closeFastSpeech(Ljava/lang/String;)V

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected closeFullTimeSpeech(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://fulltime.speech.off"
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 269
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 270
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 271
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->closeFullTimeSpeech(Ljava/lang/String;)V

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected closeMultiSpeech(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://multi.speech.off"
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 249
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 250
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 251
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->closeMultiSpeech(Ljava/lang/String;)V

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected dialogTurnMultiple(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://dialog.turn.multiple"
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 339
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 340
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 341
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->dialogTurnMultiple(Ljava/lang/String;)V

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected dialogTurnSingle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://dialog.turn.single"
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 329
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 330
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 331
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->dialogTurnSingle(Ljava/lang/String;)V

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected injectTriggerWords(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://inject.trigger.words"
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 279
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 280
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 281
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->injectTriggerWords(Ljava/lang/String;)V

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onCloseSceneGuideWindow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "ai.dismiss.scene.guide.window"
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 54
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 55
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->onCloseSceneGuideWindow(Ljava/lang/String;)V

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onCloseSpeechSceneSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://speech.continuous.disable"
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 76
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 77
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 78
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->onCloseSpeechSceneSetting()V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onCloseSuperDialogue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.listentime.accompany.close"
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 99
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 101
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->onCloseSuperDialogue()V

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onCloseWindow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "ai.dismiss.speech.window"
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 23
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 24
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 25
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->onCloseWindow(Ljava/lang/String;)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onContinueDialogueClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://speech.continue.dialogue.off"
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 299
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 300
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 301
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->onContinueDialogueClose()V

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onContinueDialogueOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://speech.continue.dialogue.on"
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 289
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 290
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 291
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->onContinueDialogueOpen()V

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onGlobalSpeechExit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://global.speech.exit"
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 131
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 132
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->onGlobalSpeechExit()V

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onOpenSceneGuideWindow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "ai.show.scene.guide.window"
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 43
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 44
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 45
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->onOpenSceneGuideWindow(Ljava/lang/String;)V

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onOpenSpeechSceneSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://speech.continuous.enable"
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 66
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 67
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->onOpenSpeechSceneSetting()V

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onOpenSuperDialogue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.listentime.accompany.open"
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 89
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 90
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->onOpenSuperDialogue()V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onOpenWindow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "ai.show.speech.window"
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 33
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 34
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 35
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->onOpenWindow(Ljava/lang/String;)V

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRefreshUi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://refresh.carspeechservice.ui"
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "listenerList":[Ljava/lang/Object;
    const/4 v1, -0x1

    .line 110
    .local v1, "type":I
    const/4 v2, 0x0

    move v3, v2

    .line 112
    .local v3, "state":Z
    :try_start_0
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->isJson(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    .local v4, "json":Lorg/json/JSONObject;
    const-string v5, "type"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    move v1, v5

    .line 115
    const-string v5, "state"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    .line 119
    .end local v4    # "json":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 117
    :catch_0
    move-exception v4

    .line 120
    :goto_0
    if-eqz v0, :cond_1

    .line 121
    nop

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 122
    aget-object v4, v0, v2

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v4, v1, v3}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->onRefreshUi(IZ)V

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 126
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected onScriptQuit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://script.quit"
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 180
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 181
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 182
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->onScriptQuit()V

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onScriptWidget(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://script.widget"
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 160
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 161
    const-string v1, ""

    .line 163
    .local v1, "widget":Ljava/lang/String;
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 165
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "widget"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 169
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 167
    :catch_0
    move-exception v2

    .line 168
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 170
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 171
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->onScriptWidget(Ljava/lang/String;)V

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 174
    .end local v1    # "widget":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected onSoundAreaClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://sound.area.close"
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 209
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 210
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 211
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->onSoundAreaClose(Ljava/lang/String;)V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSoundAreaOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://sound.area.open"
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 199
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 200
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 201
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->onSoundAreaOpen(Ljava/lang/String;)V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected openDefaultWakeup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://default.wakeup.on"
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 309
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 310
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 311
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->openDefaultWakeup(Ljava/lang/String;)V

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected openFastSpeech(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://fast.speech.on"
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 219
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 220
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 221
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->openFastSpeech(Ljava/lang/String;)V

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected openFullTimeSpeech(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://fulltime.speech.on"
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 259
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 260
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 261
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->openFullTimeSpeech(Ljava/lang/String;)V

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected openMultiSpeech(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://multi.speech.on"
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 239
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 240
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 241
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->openMultiSpeech(Ljava/lang/String;)V

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected setScreenOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://set.screen.on"
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 141
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 142
    const/4 v1, -0x1

    .line 144
    .local v1, "display_location":I
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 146
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "display_location"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 150
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 148
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 151
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 152
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->setScreenOn(I)V

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 155
    .end local v1    # "display_location":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected showChildwatchLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://show.childwatch.location"
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 189
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 190
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 191
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->showChildwatchLocation(Ljava/lang/String;)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected ttsPositionScreen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://tts.mode.screen"
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 349
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 350
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 351
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->ttsPositionScreen(Ljava/lang/String;)V

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected ttsPositionSeat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://tts.mode.seat"
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 359
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 360
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 361
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogListener;->ttsPositionSeat(Ljava/lang/String;)V

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
