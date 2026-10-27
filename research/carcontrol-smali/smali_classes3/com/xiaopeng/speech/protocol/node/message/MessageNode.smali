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

    return-void
.end method

.method private getFromJson(Ljava/lang/String;)Z
    .locals 1

    .line 132
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "isReady"

    .line 134
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 137
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected onAIMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    .line 61
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 62
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;->onAIMessage(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAIMessageDisable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 102
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 103
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;->onAIMessageDisable()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAIMessageDisableSevenDays(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 112
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 113
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;->onAIMessageDisableSevenDays()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 28
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 29
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;->onCancel()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCommonAIMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 72
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 73
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;->onCommonAIMessage(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCommonCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 92
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 93
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;->onCommonCancel()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCommonSubmit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 82
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 83
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;->onCommonSubmit()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onHotWordEngineOK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 120
    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->getFromJson(Ljava/lang/String;)Z

    move-result p1

    .line 121
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 123
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 124
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;->onHotWordEngineOK(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onParkingSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 37
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/message/bean/IndexBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/message/bean/IndexBean;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 39
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 40
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/protocol/node/message/bean/IndexBean;->getIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;->onParkingSelected(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 47
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/message/MessageListener;->onPathChanged()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
