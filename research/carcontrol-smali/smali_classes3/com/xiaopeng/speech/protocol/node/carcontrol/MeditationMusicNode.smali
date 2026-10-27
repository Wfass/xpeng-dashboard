.class public Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "MeditationMusicNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    return-void
.end method


# virtual methods
.method protected onNext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 21
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 23
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 24
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicListener;->onNext()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPause(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 31
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 33
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 34
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicListener;->onPause()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPrev(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 12
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 14
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 15
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicListener;->onPrev()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 43
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 44
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicListener;->onResume()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
