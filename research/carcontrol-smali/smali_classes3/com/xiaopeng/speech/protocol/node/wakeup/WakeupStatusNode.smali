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

    return-void
.end method


# virtual methods
.method protected onWakeupStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 14
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/wakeup/WakeupStatusNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 17
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 18
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/wakeup/WakeupStatusListener;

    iget v2, p1, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mStatus:I

    iget v3, p1, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mType:I

    iget-object v4, p1, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mInfo:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/wakeup/WakeupStatusListener;->onWakeupStatusChanged(IILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
