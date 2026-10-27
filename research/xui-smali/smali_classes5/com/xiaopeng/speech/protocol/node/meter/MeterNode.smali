.class public Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "MeterNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/meter/MeterListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method protected onDashboardLightsStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://meter.dashboard.lights.status"
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 61
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 62
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/meter/MeterListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/meter/MeterListener;->onDashboardLightsStatus()V

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected setLeftCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "set.meter.left.card"
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 20
    .local v0, "listenerList":[Ljava/lang/Object;
    const/4 v1, -0x1

    .line 22
    .local v1, "index":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    .local v2, "jsonObject":Lorg/json/JSONObject;
    nop

    .line 24
    const-string v3, "index"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 28
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 26
    :catch_0
    move-exception v2

    .line 27
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 30
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    if-eqz v0, :cond_0

    .line 31
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 32
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/meter/MeterListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/meter/MeterListener;->setLeftCard(I)V

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 35
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected setRightCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "set.meter.right.card"
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 40
    .local v0, "listenerList":[Ljava/lang/Object;
    const/4 v1, -0x1

    .line 42
    .local v1, "index":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    .local v2, "jsonObject":Lorg/json/JSONObject;
    nop

    .line 44
    const-string v3, "index"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 48
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 46
    :catch_0
    move-exception v2

    .line 47
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 50
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    if-eqz v0, :cond_0

    .line 51
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 52
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/meter/MeterListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/meter/MeterListener;->setRightCard(I)V

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 55
    .end local v2    # "i":I
    :cond_0
    return-void
.end method
