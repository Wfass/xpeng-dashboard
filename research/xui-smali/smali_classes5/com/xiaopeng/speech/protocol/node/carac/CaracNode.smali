.class public Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "CaracNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method protected closeIntelligentPsn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.intelligent.psn.off"
    .end annotation

    .line 1108
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1109
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1111
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->closeIntelligentPsn()V

    .line 1110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1114
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onAcOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.ac.off"
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 59
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 60
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onAcOff()V

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onAcOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.ac.on"
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 48
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 49
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 50
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onAcOn()V

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onAqsOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.aqs.off"
    .end annotation

    .line 987
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 988
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 989
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 990
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onAqsOff()V

    .line 989
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 993
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onAqsOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.aqs.on"
    .end annotation

    .line 977
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 978
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 979
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 980
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onAqsOn()V

    .line 979
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 983
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onAutoOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.auto.off"
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onAutoOff()V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onAutoOffSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 78
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 79
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 80
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onAutoOffSupport()V

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onAutoOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.auto.on"
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 68
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 69
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 70
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onAutoOn()V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onBlowFootOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.blow.foot.on"
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 98
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 99
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 100
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onBlowFootOn()V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onBlowHeadOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.blow.head.on"
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 118
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 119
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 120
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onBlowHeadOn()V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onDataTempTTS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 510
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 511
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 512
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 513
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onDataTempTTS()V

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onDataWindTTS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 520
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 521
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 522
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 523
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onDataWindTTS()V

    .line 522
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onDemistFootOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.demist.foot.on"
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 178
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 179
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 180
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onDemistFootOn()V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onDemistFootOnSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 168
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 169
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 170
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onDemistFootOnSupport()V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onDemistFrontOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.defrost.demist.front.off"
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 128
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 129
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 130
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onDemistFrontOff()V

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onDemistFrontOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.defrost.demist.front.on"
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 138
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 140
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onDemistFrontOn()V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onDemistRearOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.defrost.demist.rear.off"
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 148
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 149
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 150
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onDemistRearOff()V

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onDemistRearOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.defrost.demist.rear.on"
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 158
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 159
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 160
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onDemistRearOn()V

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onExitFastFridge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.exit.fast.fridge"
    .end annotation

    .line 831
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 832
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 833
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 834
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onExitFastFridge()V

    .line 833
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 837
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onExitFreshAir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.exit.fresh.air"
    .end annotation

    .line 841
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 842
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 843
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 844
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onExitFreshAir()V

    .line 843
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 847
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onHeadFootOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.blow.head.foot.on"
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 108
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 109
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 110
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onHeadFootOn()V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onHeadWindowFootOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.blow.head.window.foot.on"
    .end annotation

    .line 1307
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1308
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1309
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1310
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onHeadWindowFootOn()V

    .line 1309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1313
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onHeadWindowOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.blow.head.window.off"
    .end annotation

    .line 1317
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1318
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1319
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1320
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onHeadWindowOff()V

    .line 1319
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1323
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onHeadWindowOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.blow.head.window.on"
    .end annotation

    .line 1297
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1298
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1299
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1300
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onHeadWindowOn()V

    .line 1299
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1303
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onHeatingOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.heating.off"
    .end annotation

    .line 1027
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1028
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1029
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1030
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onHeatingOff()V

    .line 1029
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1033
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onHeatingOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.heating.on"
    .end annotation

    .line 1017
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1018
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1019
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1020
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onHeatingOn()V

    .line 1019
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1023
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onHvacOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.hvac.off"
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 28
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 29
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 30
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onHvacOff()V

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onHvacOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.hvac.on"
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 38
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 39
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 40
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onHvacOn()V

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onHvacPanelOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://card.ac.panel"
    .end annotation

    .line 1087
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1088
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1089
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1090
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onAcPanelOn()V

    .line 1089
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1093
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onInnerOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.inner.off"
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 188
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 189
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 190
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onInnerOff()V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onInnerOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.inner.on"
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 198
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 199
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 200
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onInnerOn()V

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLeftRearSeatHeatDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.left.rear.seat.heat.down"
    .end annotation

    .line 1275
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 1276
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 1277
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1278
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 1279
    aget-object v4, v1, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v4, v2, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearSeatHeatDown(ILcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 1278
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1282
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method protected onLeftRearSeatHeatSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.left.rear.seat.heat.set"
    .end annotation

    .line 1231
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 1232
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 1233
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1234
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 1235
    aget-object v4, v1, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v4, v2, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearSeatHeatSet(ILcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 1234
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1238
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method protected onLeftRearSeatHeatUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.left.rear.seat.heat.up"
    .end annotation

    .line 1253
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 1254
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 1255
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1256
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 1257
    aget-object v4, v1, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v4, v2, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearSeatHeatUp(ILcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 1256
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1260
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method protected onLeftRearSeatHeatingClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.left.rear.seat.heat.close"
    .end annotation

    .line 1211
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1212
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1213
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1214
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearSeatHeatingOpenClose(II)V

    .line 1213
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1217
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onLeftRearSeatHeatingOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.left.rear.seat.heat.open"
    .end annotation

    .line 1191
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1192
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1193
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1194
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v1, v1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearSeatHeatingOpenClose(II)V

    .line 1193
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1197
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onMirrorOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.wind.mirror.off"
    .end annotation

    .line 1137
    const/4 v0, 0x0

    move v1, v0

    .line 1139
    .local v1, "pilotValue":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1140
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "pilot"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1141
    .local v3, "pilot":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    .line 1144
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "pilot":Ljava/lang/String;
    goto :goto_0

    .line 1142
    :catch_0
    move-exception v2

    .line 1143
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "CaracNode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMirrorOff string data error, data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1145
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 1146
    .local v2, "listenerList":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1147
    nop

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1148
    aget-object v3, v2, v0

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onMirrorOff(I)V

    .line 1147
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1151
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected onMirrorOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.wind.mirror.on"
    .end annotation

    .line 1119
    const/4 v0, 0x0

    move v1, v0

    .line 1121
    .local v1, "pilotValue":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1122
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "pilot"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1123
    .local v3, "pilot":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    .line 1126
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "pilot":Ljava/lang/String;
    goto :goto_0

    .line 1124
    :catch_0
    move-exception v2

    .line 1125
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "CaracNode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMirrorOn string data error, data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1127
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 1128
    .local v2, "listenerList":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1129
    nop

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1130
    aget-object v3, v2, v0

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onMirrorOn(I)V

    .line 1129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1133
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected onModesEcoOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.modes.eco.off"
    .end annotation

    .line 1007
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1008
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1009
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1010
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onModesEcoOff()V

    .line 1009
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1013
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onModesEcoOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.modes.eco.on"
    .end annotation

    .line 997
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 998
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 999
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1000
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onModesEcoOn()V

    .line 999
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1003
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onNatureOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.nature.off"
    .end annotation

    .line 1047
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1048
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1049
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1050
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onNatureOff()V

    .line 1049
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1053
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onNatureOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.nature.on"
    .end annotation

    .line 1037
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1038
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1039
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1040
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onNatureOn()V

    .line 1039
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1043
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onOpenFastFridge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.open.fast.fridge"
    .end annotation

    .line 811
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 812
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 813
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 814
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onOpenFastFridge()V

    .line 813
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 817
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onOpenFreshAir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.open.fresh.air"
    .end annotation

    .line 821
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 822
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 823
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 824
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onOpenFreshAir()V

    .line 823
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 827
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPsnTempSynOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.temp.passenger.dual.off"
    .end annotation

    .line 1077
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1078
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1079
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1080
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onPsnTempSynOff()V

    .line 1079
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1083
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPsnTempSynOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.temp.passenger.dual.syn"
    .end annotation

    .line 1067
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1068
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1069
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1070
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onPsnTempSynOn()V

    .line 1069
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1073
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPurifierClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.purifier.close"
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 365
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 366
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 367
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onPurifierClose()V

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPurifierCloseSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 355
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 356
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 357
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onPurifierCloseSupport()V

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPurifierOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.purifier.open"
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 345
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 346
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 347
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onPurifierOpen()V

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPurifierOpenSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 335
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 336
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 337
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onPurifierOpenSupport()V

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPurifierPm25(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 375
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 376
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 377
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onPurifierPm25()V

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRearHeatOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.mirror.rear.heat.off"
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 242
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 243
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 244
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearHeatOff()V

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRearHeatOffSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 252
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 253
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 254
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearHeatOffSupport()V

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRearHeatOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.mirror.rear.heat.on"
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 262
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 263
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 264
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearHeatOn()V

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRearHeatOnSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 272
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 273
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 274
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearHeatOnSupport()V

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRightRearSeatHeatDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.right.rear.seat.heat.down"
    .end annotation

    .line 1286
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 1287
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 1288
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1289
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 1290
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearSeatHeatDown(ILcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 1289
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1293
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onRightRearSeatHeatSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.right.rear.seat.heat.set"
    .end annotation

    .line 1242
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 1243
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 1244
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1245
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 1246
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearSeatHeatSet(ILcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 1245
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1249
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onRightRearSeatHeatUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.right.rear.seat.heat.up"
    .end annotation

    .line 1264
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 1265
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 1266
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1267
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 1268
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearSeatHeatUp(ILcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 1267
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1271
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onRightRearSeatHeatingClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.right.rear.seat.heat.close"
    .end annotation

    .line 1221
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1222
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1223
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1224
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v3}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearSeatHeatingOpenClose(II)V

    .line 1223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1227
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRightRearSeatHeatingOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.right.rear.seat.heat.open"
    .end annotation

    .line 1201
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1202
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1203
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1204
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearSeatHeatingOpenClose(II)V

    .line 1203
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1207
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatHeatDriverSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.seat.heat.drive.set"
    .end annotation

    .line 767
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 768
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 769
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 770
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 771
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatHeatDriverSet(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 770
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 774
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatHeatPassengerDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.seat.heat.passenger.down"
    .end annotation

    .line 800
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 801
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 802
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 803
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 804
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatHeatPassengerDown(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 803
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 807
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatHeatPassengerSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.seat.heat.passenger.set"
    .end annotation

    .line 778
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 779
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 780
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 781
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 782
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatHeatPassengerSet(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 781
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 785
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatHeatPassengerUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.seat.heat.passenger.up"
    .end annotation

    .line 789
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 790
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 791
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 792
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 793
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatHeatPassengerUp(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 792
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 796
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatHeatingClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.seat.heating.close"
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 624
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 625
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 626
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatHeatingClose()V

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 629
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatHeatingDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.seat.heating.down"
    .end annotation

    .line 684
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 685
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 686
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 687
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatHeatingDown()V

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 690
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatHeatingMax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.seat.heating.max"
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 654
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 655
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 656
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatHeatingMax()V

    .line 655
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 659
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatHeatingMin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.seat.heating.min"
    .end annotation

    .line 663
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 664
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 665
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 666
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatHeatingMin()V

    .line 665
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 669
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatHeatingOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.seat.heating.open"
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 614
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 615
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 616
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatHeatingOpen()V

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 619
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatHeatingUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.seat.heating.up"
    .end annotation

    .line 673
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 674
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 675
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 676
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 677
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatHeatingUp(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 676
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 680
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatPsnHeatingClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.seat.psn.heat.close"
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 644
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 645
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 646
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatPsnHeatingClose()V

    .line 645
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 649
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatPsnHeatingOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.seat.psn.heat.open"
    .end annotation

    .line 633
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 634
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 635
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 636
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatPsnHeatingOpen()V

    .line 635
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatVentilateDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.seat.ventilate.down"
    .end annotation

    .line 735
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 736
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 737
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 738
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatVentilateDown()V

    .line 737
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 741
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatVentilateDriverSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.seat.ventilate.driver.set"
    .end annotation

    .line 756
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 757
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 758
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 759
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 760
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatVentilateDriverSet(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 759
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 763
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatVentilateMax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.seat.ventilate.max"
    .end annotation

    .line 715
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 716
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 717
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 718
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatVentilateMax()V

    .line 717
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 721
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatVentilateMin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.seat.ventilate.min"
    .end annotation

    .line 725
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 726
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 727
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 728
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatVentilateMin()V

    .line 727
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 731
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatVentilateOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.seat.ventilate.off"
    .end annotation

    .line 705
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 706
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 707
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 708
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatVentilateOff()V

    .line 707
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 711
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatVentilateOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.seat.ventilate.on"
    .end annotation

    .line 694
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 695
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/SpeechParam;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/SpeechParam;

    move-result-object v1

    .line 696
    .local v1, "param":Lcom/xiaopeng/speech/protocol/bean/SpeechParam;
    if-eqz v0, :cond_0

    .line 697
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 698
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatVentilateOn(Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V

    .line 697
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 701
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatVentilateUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.seat.ventilate.up"
    .end annotation

    .line 745
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 746
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 747
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 748
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 749
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatVentilateUp(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 748
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 752
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.temp.down"
    .end annotation

    .line 291
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 292
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 293
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 294
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 295
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempDown(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempDownHalfSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 282
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 283
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 284
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempDownHalfSupport()V

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempDriveMax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.temp.driver.max"
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 584
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 585
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 586
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempDriveMax()V

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 589
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempDriveMin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.temp.driver.min"
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 574
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 575
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 576
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempDriveMin()V

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 579
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempDriverDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.temp.driver.down"
    .end annotation

    .line 415
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 416
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 417
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 418
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 419
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempDriverDown(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 418
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempDriverDownSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 406
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 407
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 408
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempDriverDownSupport()V

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempDriverSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.temp.driver.set"
    .end annotation

    .line 426
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 427
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 428
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 429
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 430
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempDriverSet(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 429
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 433
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempDriverUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.temp.driver.up"
    .end annotation

    .line 394
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 395
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 396
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 397
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 398
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempDriverUp(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 397
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempDriverUpSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 385
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 386
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 387
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempDriverUpSupport()V

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempDualOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.temp.dual.off"
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 501
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 502
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 503
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempDualOff()V

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempDualSyn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.temp.dual.syn"
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 491
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 492
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 493
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempDualSyn()V

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 496
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempMax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.temp.max"
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 564
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 565
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 566
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempMax()V

    .line 565
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempMin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.temp.min"
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 553
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/SpeechParam;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/SpeechParam;

    move-result-object v1

    .line 554
    .local v1, "param":Lcom/xiaopeng/speech/protocol/bean/SpeechParam;
    if-eqz v0, :cond_0

    .line 555
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 556
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempMin(Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V

    .line 555
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 559
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempPassengerDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.temp.passenger.down"
    .end annotation

    .line 468
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 469
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 470
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 471
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 472
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempPassengerDown(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 475
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempPassengerDownSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 459
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 460
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 461
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempPassengerDownSupport()V

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempPassengerMax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.temp.passenger.max"
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 604
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 605
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 606
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempPassengerMax()V

    .line 605
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 609
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempPassengerMin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.temp.passenger.min"
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 594
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 595
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 596
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempPassengerMin()V

    .line 595
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 599
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempPassengerSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.temp.passenger.set"
    .end annotation

    .line 479
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 480
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 481
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 482
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 483
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempPassengerSet(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 482
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 486
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempPassengerUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.temp.passenger.up"
    .end annotation

    .line 447
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 448
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 449
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 450
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 451
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempPassengerUp(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 450
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 454
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempPassengerUpSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 438
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 439
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 440
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempPassengerUpSupport()V

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.temp.set"
    .end annotation

    .line 313
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 314
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 315
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 316
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 317
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempSet(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.temp.up"
    .end annotation

    .line 302
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 303
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 304
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 305
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 306
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempUp(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onTempUpHalfSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 325
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 326
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 327
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempUpHalfSupport()V

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindAutoSweepOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.wind.auto.sweep.off"
    .end annotation

    .line 967
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 968
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 969
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 970
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindAutoSweepOff()V

    .line 969
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 973
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindAutoSweepOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.wind.auto.sweep.on"
    .end annotation

    .line 957
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 958
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 959
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 960
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindAutoSweepOn()V

    .line 959
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 963
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.wind.down"
    .end annotation

    .line 207
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 208
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 209
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 210
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 211
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindDown(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindEvad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.wind.evade"
    .end annotation

    .line 894
    const/4 v0, 0x0

    .line 895
    .local v0, "pilotValue":I
    const/4 v1, 0x7

    .line 897
    .local v1, "directionValue":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 898
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "pilot"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 899
    .local v3, "pilot":Ljava/lang/String;
    const-string v4, "direction"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 900
    .local v4, "direction":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    .line 901
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v5

    .line 904
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "pilot":Ljava/lang/String;
    .end local v4    # "direction":Ljava/lang/String;
    goto :goto_0

    .line 902
    :catch_0
    move-exception v2

    .line 903
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "CaracNode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWindEvad string data error, data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 905
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 906
    .local v2, "listenerList":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 907
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 908
    aget-object v4, v2, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v4, v0, v1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindEvad(II)V

    .line 907
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 911
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindFree(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.wind.free"
    .end annotation

    .line 936
    const/4 v0, 0x0

    .line 937
    .local v0, "pilotValue":I
    const/4 v1, 0x7

    .line 939
    .local v1, "directionValue":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 940
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "pilot"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 941
    .local v3, "pilot":Ljava/lang/String;
    const-string v4, "direction"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 942
    .local v4, "direction":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    .line 943
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v5

    .line 946
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "pilot":Ljava/lang/String;
    .end local v4    # "direction":Ljava/lang/String;
    goto :goto_0

    .line 944
    :catch_0
    move-exception v2

    .line 945
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "CaracNode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWindFree string data error, data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 947
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 948
    .local v2, "listenerList":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 949
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 950
    aget-object v4, v2, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v4, v0, v1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindFree(II)V

    .line 949
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 953
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindFront(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.wind.front"
    .end annotation

    .line 915
    const/4 v0, 0x0

    .line 916
    .local v0, "pilotValue":I
    const/4 v1, 0x7

    .line 918
    .local v1, "directionValue":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 919
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "pilot"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 920
    .local v3, "pilot":Ljava/lang/String;
    const-string v4, "direction"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 921
    .local v4, "direction":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    .line 922
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v5

    .line 925
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "pilot":Ljava/lang/String;
    .end local v4    # "direction":Ljava/lang/String;
    goto :goto_0

    .line 923
    :catch_0
    move-exception v2

    .line 924
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "CaracNode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWindFront string data error, data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 926
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 927
    .local v2, "listenerList":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 928
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 929
    aget-object v4, v2, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v4, v0, v1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindFront(II)V

    .line 928
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 932
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindMax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.wind.max"
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 531
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/SpeechParam;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/SpeechParam;

    move-result-object v1

    .line 532
    .local v1, "param":Lcom/xiaopeng/speech/protocol/bean/SpeechParam;
    if-eqz v0, :cond_0

    .line 533
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 534
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindMax(Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V

    .line 533
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 537
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindMin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.wind.min"
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 542
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/SpeechParam;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/SpeechParam;

    move-result-object v1

    .line 543
    .local v1, "param":Lcom/xiaopeng/speech/protocol/bean/SpeechParam;
    if-eqz v0, :cond_0

    .line 544
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 545
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindMin(Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V

    .line 544
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 548
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindOutletOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.wind.outlet.off"
    .end annotation

    .line 1173
    const/4 v0, 0x0

    move v1, v0

    .line 1175
    .local v1, "pilotValue":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1176
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "pilot"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1177
    .local v3, "pilot":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    .line 1180
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "pilot":Ljava/lang/String;
    goto :goto_0

    .line 1178
    :catch_0
    move-exception v2

    .line 1179
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "CaracNode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWindOutletOff string data error, data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1181
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 1182
    .local v2, "listenerList":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1183
    nop

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1184
    aget-object v3, v2, v0

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindOutletOff(I)V

    .line 1183
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1187
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindOutletOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.wind.outlet.on"
    .end annotation

    .line 1155
    const/4 v0, 0x0

    move v1, v0

    .line 1157
    .local v1, "pilotValue":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1158
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "pilot"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1159
    .local v3, "pilot":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    .line 1162
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "pilot":Ljava/lang/String;
    goto :goto_0

    .line 1160
    :catch_0
    move-exception v2

    .line 1161
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "CaracNode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nWindOutletOn string data error, data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1163
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 1164
    .local v2, "listenerList":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1165
    nop

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1166
    aget-object v3, v2, v0

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindOutletOn(I)V

    .line 1165
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1169
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.wind.set"
    .end annotation

    .line 229
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 230
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 231
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 232
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 233
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindSet(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindUnidirectionSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.wind.direction.set"
    .end annotation

    .line 851
    const/4 v0, 0x0

    .line 852
    .local v0, "pilotValue":I
    const/4 v1, 0x7

    .line 854
    .local v1, "directionValue":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 855
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "pilot"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 856
    .local v3, "pilot":Ljava/lang/String;
    const-string v4, "direction"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 857
    .local v4, "direction":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    .line 858
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v5

    .line 861
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "pilot":Ljava/lang/String;
    .end local v4    # "direction":Ljava/lang/String;
    goto :goto_0

    .line 859
    :catch_0
    move-exception v2

    .line 860
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "CaracNode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWindUnidirectionSet string data error, data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 862
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 863
    .local v2, "listenerList":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 864
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 865
    aget-object v4, v2, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v4, v0, v1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindUnidirectionSet(II)V

    .line 864
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 868
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindUnindirection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.wind.unidirection"
    .end annotation

    .line 873
    const/4 v0, 0x0

    .line 874
    .local v0, "pilotValue":I
    const/4 v1, 0x7

    .line 876
    .local v1, "directionValue":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 877
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "pilot"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 878
    .local v3, "pilot":Ljava/lang/String;
    const-string v4, "direction"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 879
    .local v4, "direction":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    .line 880
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v5

    .line 883
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "pilot":Ljava/lang/String;
    .end local v4    # "direction":Ljava/lang/String;
    goto :goto_0

    .line 881
    :catch_0
    move-exception v2

    .line 882
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "CaracNode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWindUnindirection string data error, data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 884
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 885
    .local v2, "listenerList":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 886
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 887
    aget-object v4, v2, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v4, v0, v1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindUnidirection(II)V

    .line 886
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 890
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.wind.up"
    .end annotation

    .line 218
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object v0

    .line 219
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 220
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 221
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 222
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindUp(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindowOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.blow.window.on"
    .end annotation

    .line 1057
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1058
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1059
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1060
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindowOn()V

    .line 1059
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1063
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected openIntelligentPsn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.intelligent.psn.on"
    .end annotation

    .line 1097
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1098
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1099
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1100
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->openIntelligentPsn()V

    .line 1099
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1103
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
