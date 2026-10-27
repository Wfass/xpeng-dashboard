.class public Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "AvatarNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method protected onAvatarExpression(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.avatar.expression"
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 104
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onAvatarExpression(Ljava/lang/String;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onAvatarStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.speech.avatar.status"
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 194
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;

    move-result-object v1

    .line 195
    .local v1, "state":Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;
    if-eqz v0, :cond_0

    .line 196
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 197
    .local v4, "o":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v5, v1}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onAvatarStatusChanged(Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;)V

    .line 196
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method

.method onAvatarWakerupDisable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.avatar.wakeup.disable"
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 184
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 185
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 186
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onAvatarWakerupDisable(Ljava/lang/String;)V

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method onAvatarWakerupEnable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.avatar.wakeup.enable"
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 174
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 175
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 176
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onAvatarWakerupEnable(Ljava/lang/String;)V

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onListening(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.dm.listening"
    .end annotation

    .line 41
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/DMListening;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/DMListening;

    move-result-object v0

    .line 42
    .local v0, "dmListening":Lcom/xiaopeng/speech/jarvisproto/DMListening;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 43
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 44
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 45
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onListening(Lcom/xiaopeng/speech/jarvisproto/DMListening;)V

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onPersonalExit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.dm.personal.exit"
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 93
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 94
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onPersonalRunExit()V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPersonalRunning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.dm.personal.run"
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 84
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 85
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onPersonalRun()V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSilence(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.dm.recognized"
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 31
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/DMRecognized;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/DMRecognized;

    move-result-object v1

    .line 32
    .local v1, "dmRecognized":Lcom/xiaopeng/speech/jarvisproto/DMRecognized;
    if-eqz v0, :cond_0

    .line 33
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 34
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onSilence(Lcom/xiaopeng/speech/jarvisproto/DMRecognized;)V

    .line 33
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onSpeaking(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.dm.speaking"
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onSpeaking()V

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onStandby(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 64
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 65
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onStandby()V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onUnderstanding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.dm.understanding"
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 73
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 75
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onUnderstanding()V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWidgetCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.widget.card"
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 153
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 154
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 155
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onWidgetCard(Ljava/lang/String;)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWidgetCustom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.widget.custom"
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 113
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 115
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onWidgetCustom(Ljava/lang/String;)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWidgetList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.widget.list"
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 133
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 134
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 135
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onWidgetList(Ljava/lang/String;)V

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWidgetMedia(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.widget.media"
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 143
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 144
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 145
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onWidgetMedia(Ljava/lang/String;)V

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWidgetSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.widget.search"
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 163
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 164
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 165
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onWidgetSearch(Ljava/lang/String;)V

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWidgetText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.widget.text"
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 123
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 124
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 125
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onWidgetText(Ljava/lang/String;)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
