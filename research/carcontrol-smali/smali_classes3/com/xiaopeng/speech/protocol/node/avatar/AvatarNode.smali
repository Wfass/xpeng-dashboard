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

    return-void
.end method


# virtual methods
.method protected onAvatarExpression(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 103
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 104
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onAvatarExpression(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAvatarStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 193
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 194
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 196
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 197
    check-cast v2, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onAvatarStatusChanged(Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method onAvatarWakerupDisable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 183
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 185
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 186
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onAvatarWakerupDisable(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method onAvatarWakerupEnable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 175
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 176
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onAvatarWakerupEnable(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onListening(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 41
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/DMListening;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/DMListening;

    move-result-object p1

    .line 42
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 44
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 45
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onListening(Lcom/xiaopeng/speech/jarvisproto/DMListening;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPersonalExit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 93
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 94
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onPersonalRunExit()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPersonalRunning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 84
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 85
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onPersonalRun()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSilence(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 30
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 31
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/DMRecognized;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/DMRecognized;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 33
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 34
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onSilence(Lcom/xiaopeng/speech/jarvisproto/DMRecognized;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSpeaking(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 54
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 55
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onSpeaking()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onStandby(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 64
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 65
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onStandby()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onUnderstanding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 74
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 75
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onUnderstanding()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWidgetCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 154
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 155
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onWidgetCard(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWidgetCustom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 114
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 115
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onWidgetCustom(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWidgetList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 132
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 134
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 135
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onWidgetList(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWidgetMedia(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 142
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 144
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 145
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onWidgetMedia(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWidgetSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 164
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 165
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onWidgetSearch(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWidgetText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 124
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 125
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;->onWidgetText(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
