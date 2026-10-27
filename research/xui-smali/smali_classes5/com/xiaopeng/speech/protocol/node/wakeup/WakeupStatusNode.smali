.class public Lcom/xiaopeng/speech/protocol/node/wakeup/WakeupStatusNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "WakeupStatusNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/wakeup/WakeupStatusListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method protected onWakeupStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.wakeup.status"
    .end annotation

    .line 14
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;

    move-result-object v0

    .line 15
    .local v0, "wakeupStatus":Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/wakeup/WakeupStatusNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 16
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 17
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 18
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/wakeup/WakeupStatusListener;

    iget v4, v0, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mStatus:I

    iget v5, v0, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mType:I

    iget-object v6, v0, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mInfo:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Lcom/xiaopeng/speech/protocol/node/wakeup/WakeupStatusListener;->onWakeupStatusChanged(IILjava/lang/String;)V

    .line 17
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    .end local v2    # "i":I
    :cond_0
    return-void
.end method
