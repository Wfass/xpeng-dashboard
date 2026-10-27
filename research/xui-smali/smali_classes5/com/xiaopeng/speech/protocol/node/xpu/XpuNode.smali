.class public Lcom/xiaopeng/speech/protocol/node/xpu/XpuNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "XpuNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/xpu/IXpuListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method protected laneChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://voice.change.lane"
    .end annotation

    .line 20
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "direction"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    const-string v1, "direction"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "direction":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    return-void

    .line 26
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 27
    .local v2, "dir":I
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/xpu/XpuNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v3

    .line 28
    .local v3, "listenerList":[Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 29
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 30
    aget-object v5, v3, v4

    check-cast v5, Lcom/xiaopeng/speech/protocol/node/xpu/IXpuListener;

    invoke-interface {v5, v2}, Lcom/xiaopeng/speech/protocol/node/xpu/IXpuListener;->laneChange(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 37
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v1    # "direction":Ljava/lang/String;
    .end local v2    # "dir":I
    .end local v3    # "listenerList":[Ljava/lang/Object;
    .end local v4    # "i":I
    :cond_1
    goto :goto_1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 39
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method
