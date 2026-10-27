.class public Lcom/xiaopeng/speech/protocol/node/message/MessageNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "MessageNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/message/MessageListener;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.message.engine.status"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 22
    return-void
.end method

.method private getFromJson(Ljava/lang/String;)Z
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, "isReady":Z
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "jsonObject":Lorg/json/JSONObject;
    nop

    .line 134
    const-string v2, "isReady"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 138
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 139
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return v0
.end method


# virtual methods
.method protected onAIMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://message.ai.to.speech"
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 59
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 61
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 62
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;->onAIMessage(I)V

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "index":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onAIMessageDisable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ai.message.disable"
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 101
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 103
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;->onAIMessageDisable()V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onAIMessageDisableSevenDays(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ai.message.disable.seven.days"
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 111
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 112
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 113
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;->onAIMessageDisableSevenDays()V

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://message.cancel"
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 27
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 28
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 29
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;->onCancel()V

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onCommonAIMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://common.message.ai.to.speech"
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 73
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;->onCommonAIMessage(Ljava/lang/String;)V

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onCommonCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://common.message.cancel"
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 91
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 92
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 93
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;->onCommonCancel()V

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onCommonSubmit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://common.message.submit"
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 82
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 83
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;->onCommonSubmit()V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onHotWordEngineOK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.message.engine.status"
    .end annotation

    .line 120
    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->getFromJson(Ljava/lang/String;)Z

    move-result v0

    .line 121
    .local v0, "isReady":Z
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 122
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 123
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 124
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;->onHotWordEngineOK(Z)V

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onParkingSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://message.parking.select"
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 37
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/message/bean/IndexBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/message/bean/IndexBean;

    move-result-object v1

    .line 38
    .local v1, "indexBean":Lcom/xiaopeng/speech/protocol/node/message/bean/IndexBean;
    if-eqz v0, :cond_0

    .line 39
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 40
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/node/message/bean/IndexBean;->getIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;->onParkingSelected(I)V

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onPathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://message.path.change"
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;->onPathChanged()V

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
