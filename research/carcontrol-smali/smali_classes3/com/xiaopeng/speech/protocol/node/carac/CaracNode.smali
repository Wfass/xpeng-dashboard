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

    return-void
.end method


# virtual methods
.method protected closeIntelligentPsn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1108
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1110
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1111
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->closeIntelligentPsn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAcOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 59
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 60
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onAcOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAcOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 47
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 49
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 50
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onAcOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAqsOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 987
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 989
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 990
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onAqsOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAqsOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 977
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 979
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 980
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onAqsOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAutoOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 89
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 90
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onAutoOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAutoOffSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 79
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 80
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onAutoOffSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAutoOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 69
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 70
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onAutoOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onBlowFootOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 99
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 100
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onBlowFootOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onBlowHeadOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 119
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 120
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onBlowHeadOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDataTempTTS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 510
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 512
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 513
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onDataTempTTS()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDataWindTTS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 520
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 522
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 523
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onDataWindTTS()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDemistFootOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 179
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 180
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onDemistFootOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDemistFootOnSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 169
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 170
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onDemistFootOnSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDemistFrontOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 129
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 130
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onDemistFrontOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDemistFrontOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 139
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 140
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onDemistFrontOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDemistRearOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 149
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 150
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onDemistRearOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDemistRearOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 159
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 160
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onDemistRearOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onExitFastFridge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 831
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 833
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 834
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onExitFastFridge()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onExitFreshAir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 841
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 843
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 844
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onExitFreshAir()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onHeadFootOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 109
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 110
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onHeadFootOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onHeadWindowFootOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1307
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1309
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1310
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onHeadWindowFootOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onHeadWindowOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1317
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1319
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1320
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onHeadWindowOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onHeadWindowOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1297
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1299
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1300
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onHeadWindowOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onHeatingOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1027
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1029
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1030
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onHeatingOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onHeatingOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1017
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1019
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1020
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onHeatingOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onHvacOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 27
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 29
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 30
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onHvacOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onHvacOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 39
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 40
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onHvacOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onHvacPanelOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1087
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1089
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1090
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onAcPanelOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onInnerOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 187
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 189
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 190
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onInnerOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onInnerOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 197
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 199
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 200
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onInnerOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLeftRearSeatHeatDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1275
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 1276
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 1278
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1279
    aget-object v2, p2, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2, v0, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearSeatHeatDown(ILcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLeftRearSeatHeatSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1231
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 1232
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 1234
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1235
    aget-object v2, p2, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2, v0, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearSeatHeatSet(ILcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLeftRearSeatHeatUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1253
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 1254
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 1256
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1257
    aget-object v2, p2, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2, v0, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearSeatHeatUp(ILcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLeftRearSeatHeatingClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1211
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    move v0, p2

    .line 1213
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1214
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearSeatHeatingOpenClose(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLeftRearSeatHeatingOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1191
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    move v0, p2

    .line 1193
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1194
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p2, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearSeatHeatingOpenClose(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMirrorOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x0

    .line 1139
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "pilot"

    .line 1140
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1141
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1143
    :catchall_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMirrorOff string data error, data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CaracNode"

    invoke-static {v0, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move p2, p1

    .line 1145
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1147
    :goto_1
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 1148
    aget-object v1, v0, p1

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onMirrorOff(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onMirrorOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x0

    .line 1121
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "pilot"

    .line 1122
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1123
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1125
    :catchall_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMirrorOn string data error, data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CaracNode"

    invoke-static {v0, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move p2, p1

    .line 1127
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1129
    :goto_1
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 1130
    aget-object v1, v0, p1

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onMirrorOn(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onModesEcoOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1007
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1009
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1010
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onModesEcoOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onModesEcoOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 997
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 999
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1000
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onModesEcoOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onNatureOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1047
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1049
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1050
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onNatureOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onNatureOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1037
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1039
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1040
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onNatureOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onOpenFastFridge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 811
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 813
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 814
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onOpenFastFridge()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onOpenFreshAir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 821
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 823
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 824
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onOpenFreshAir()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPsnTempSynOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1077
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1079
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1080
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onPsnTempSynOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPsnTempSynOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1067
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1069
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1070
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onPsnTempSynOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPurifierClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 364
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 366
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 367
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onPurifierClose()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPurifierCloseSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 354
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 356
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 357
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onPurifierCloseSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPurifierOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 344
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 346
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 347
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onPurifierOpen()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPurifierOpenSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 334
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 336
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 337
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onPurifierOpenSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPurifierPm25(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 374
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 376
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 377
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onPurifierPm25()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRearHeatOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 241
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 243
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 244
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearHeatOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRearHeatOffSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 251
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 253
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 254
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearHeatOffSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRearHeatOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 261
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 263
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 264
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearHeatOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRearHeatOnSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 271
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 273
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 274
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearHeatOnSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRightRearSeatHeatDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1286
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 1287
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1289
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1290
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearSeatHeatDown(ILcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRightRearSeatHeatSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1242
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 1243
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1245
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1246
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearSeatHeatSet(ILcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRightRearSeatHeatUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1264
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 1265
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1267
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1268
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearSeatHeatUp(ILcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRightRearSeatHeatingClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1221
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1223
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1224
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearSeatHeatingOpenClose(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRightRearSeatHeatingOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1201
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    move v0, p2

    .line 1203
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1204
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    const/4 v2, 0x1

    invoke-interface {v1, p2, v2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onRearSeatHeatingOpenClose(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatHeatDriverSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 767
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 768
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 770
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 771
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatHeatDriverSet(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatHeatPassengerDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 800
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 801
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 803
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 804
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatHeatPassengerDown(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatHeatPassengerSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 778
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 779
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 781
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 782
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatHeatPassengerSet(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatHeatPassengerUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 789
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 790
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 792
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 793
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatHeatPassengerUp(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatHeatingClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 623
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 625
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 626
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatHeatingClose()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatHeatingDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 684
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 686
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 687
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatHeatingDown()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatHeatingMax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 653
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 655
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 656
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatHeatingMax()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatHeatingMin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 663
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 665
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 666
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatHeatingMin()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatHeatingOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 613
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 615
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 616
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatHeatingOpen()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatHeatingUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 673
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 674
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 676
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 677
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatHeatingUp(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatPsnHeatingClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 643
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 645
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 646
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatPsnHeatingClose()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatPsnHeatingOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 633
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 635
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 636
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatPsnHeatingOpen()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatVentilateDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 735
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 737
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 738
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatVentilateDown()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatVentilateDriverSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 756
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 757
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 759
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 760
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatVentilateDriverSet(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatVentilateMax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 715
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 717
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 718
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatVentilateMax()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatVentilateMin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 725
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 727
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 728
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatVentilateMin()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatVentilateOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 705
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 707
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 708
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatVentilateOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatVentilateOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 694
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 695
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/SpeechParam;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/SpeechParam;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 697
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 698
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatVentilateOn(Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatVentilateUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 745
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 746
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 748
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 749
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onSeatVentilateUp(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 291
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 292
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 294
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 295
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempDown(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempDownHalfSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 281
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 283
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 284
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempDownHalfSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempDriveMax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 583
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 585
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 586
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempDriveMax()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempDriveMin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 573
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 575
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 576
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempDriveMin()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempDriverDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 415
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 416
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 418
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 419
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempDriverDown(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempDriverDownSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 405
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 407
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 408
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempDriverDownSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempDriverSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 426
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 427
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 429
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 430
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempDriverSet(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempDriverUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 394
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 395
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 397
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 398
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempDriverUp(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempDriverUpSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 384
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 386
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 387
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempDriverUpSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempDualOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 500
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 502
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 503
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempDualOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempDualSyn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 490
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 492
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 493
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempDualSyn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempMax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 563
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 565
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 566
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempMax()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempMin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 552
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 553
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/SpeechParam;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/SpeechParam;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 555
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 556
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempMin(Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempPassengerDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 468
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 469
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 471
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 472
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempPassengerDown(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempPassengerDownSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 458
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 460
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 461
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempPassengerDownSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempPassengerMax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 603
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 605
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 606
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempPassengerMax()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempPassengerMin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 593
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 595
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 596
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempPassengerMin()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempPassengerSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 479
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 480
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 482
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 483
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempPassengerSet(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempPassengerUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 447
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 448
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 450
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 451
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempPassengerUp(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempPassengerUpSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 437
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 439
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 440
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempPassengerUpSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 313
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 314
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 316
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 317
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempSet(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 302
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 303
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 305
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 306
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempUp(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTempUpHalfSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 324
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 326
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 327
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onTempUpHalfSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindAutoSweepOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 967
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 969
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 970
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindAutoSweepOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindAutoSweepOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 957
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 959
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 960
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindAutoSweepOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 207
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 208
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 210
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 211
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindDown(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindEvad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 p1, 0x0

    .line 897
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "pilot"

    .line 898
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "direction"

    .line 899
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 900
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move v1, p1

    .line 903
    :catchall_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindEvad string data error, data = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CaracNode"

    invoke-static {v0, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x7

    .line 905
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 907
    :goto_1
    array-length v2, v0

    if-ge p1, v2, :cond_0

    .line 908
    aget-object v2, v0, p1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2, v1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindEvad(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onWindFree(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 p1, 0x0

    .line 939
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "pilot"

    .line 940
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "direction"

    .line 941
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 942
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move v1, p1

    .line 945
    :catchall_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindFree string data error, data = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CaracNode"

    invoke-static {v0, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x7

    .line 947
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 949
    :goto_1
    array-length v2, v0

    if-ge p1, v2, :cond_0

    .line 950
    aget-object v2, v0, p1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2, v1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindFree(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onWindFront(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 p1, 0x0

    .line 918
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "pilot"

    .line 919
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "direction"

    .line 920
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 921
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move v1, p1

    .line 924
    :catchall_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindFront string data error, data = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CaracNode"

    invoke-static {v0, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x7

    .line 926
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 928
    :goto_1
    array-length v2, v0

    if-ge p1, v2, :cond_0

    .line 929
    aget-object v2, v0, p1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2, v1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindFront(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onWindMax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 530
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 531
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/SpeechParam;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/SpeechParam;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 533
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 534
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindMax(Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindMin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 541
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 542
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/SpeechParam;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/SpeechParam;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 544
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 545
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindMin(Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindOutletOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x0

    .line 1175
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "pilot"

    .line 1176
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1177
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1179
    :catchall_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindOutletOff string data error, data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CaracNode"

    invoke-static {v0, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move p2, p1

    .line 1181
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1183
    :goto_1
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 1184
    aget-object v1, v0, p1

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindOutletOff(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onWindOutletOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x0

    .line 1157
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "pilot"

    .line 1158
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1159
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1161
    :catchall_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nWindOutletOn string data error, data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CaracNode"

    invoke-static {v0, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move p2, p1

    .line 1163
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1165
    :goto_1
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 1166
    aget-object v1, v0, p1

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindOutletOn(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onWindSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 229
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 230
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 232
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 233
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindSet(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindUnidirectionSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 p1, 0x0

    .line 854
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "pilot"

    .line 855
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "direction"

    .line 856
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 857
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move v1, p1

    .line 860
    :catchall_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindUnidirectionSet string data error, data = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CaracNode"

    invoke-static {v0, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x7

    .line 862
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 864
    :goto_1
    array-length v2, v0

    if-ge p1, v2, :cond_0

    .line 865
    aget-object v2, v0, p1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2, v1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindUnidirectionSet(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onWindUnindirection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 p1, 0x0

    .line 876
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "pilot"

    .line 877
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "direction"

    .line 878
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 879
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move v1, p1

    .line 882
    :catchall_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindUnindirection string data error, data = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CaracNode"

    invoke-static {v0, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x7

    .line 884
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 886
    :goto_1
    array-length v2, v0

    if-ge p1, v2, :cond_0

    .line 887
    aget-object v2, v0, p1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v2, v1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindUnidirection(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onWindUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 218
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    move-result-object p1

    .line 219
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 221
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 222
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindUp(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindowOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1057
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1059
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1060
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->onWindowOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected openIntelligentPsn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1097
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1099
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1100
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;->openIntelligentPsn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
