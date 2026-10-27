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

    .line 9
    return-void
.end method


# virtual methods
.method protected onNext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "meditation.music.control.next"
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 22
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 23
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 24
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicListener;->onNext()V

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPause(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "meditation.music.control.pause"
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 32
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 33
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 34
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicListener;->onPause()V

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPrev(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "meditation.music.control.prev"
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 13
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 14
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 15
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicListener;->onPrev()V

    .line 14
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "meditation.music.control.resume"
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 43
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 44
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicListener;->onResume()V

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
