.class public Lcom/xiaopeng/speech/protocol/node/context/ContextNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "ContextNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/context/ContextListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    return-void
.end method


# virtual methods
.method protected onExitRecommendCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 334
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onExitRecommendCard()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onExpression(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 143
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 145
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 146
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onExpression(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onInputText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 26
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 28
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 29
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onInputText(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLLMInput(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 431
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 433
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 434
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onLLMInput(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onOutputText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 38
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 39
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onOutputText(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPageNext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 227
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 229
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 230
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onPageNext()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPagePrev(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 237
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 239
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 240
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onPagePrev()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPageSetLow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 257
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 259
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 260
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onPageSetLow()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPageTopping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 247
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 249
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 250
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onPageTopping()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSayWelcome(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 153
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 155
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 156
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onSayWelcome(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onScript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 286
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 290
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "domain"

    .line 292
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "scriptId"

    .line 293
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move-object v0, p2

    move-object p2, v3

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 296
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 297
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 299
    aget-object v2, p1, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2, v0, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onScript(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 303
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method protected onScriptStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 311
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 315
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "status"

    .line 317
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "scriptId"

    .line 318
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move-object v0, p2

    move-object p2, v3

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 321
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 322
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 324
    aget-object v2, p1, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2, p2, v0}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onScriptStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 328
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method protected onSmartSceneCreate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 421
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 423
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 424
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onSmartSceneCreate(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTipsListeningShow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 390
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 392
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 393
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onTipsListeningShow(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTipsListeningStop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 400
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 402
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 403
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onTipsListeningStop(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTipsText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 48
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 49
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onTipsText(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTtsEcho(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 410
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 411
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 413
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 414
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onTtsEcho(Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWidgetCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 204
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 206
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    const-string v2, "force"

    if-eqz p2, :cond_0

    .line 210
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "widgetId"

    .line 212
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cancel"

    .line 213
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    .line 216
    :cond_0
    aget-object v3, p1, v0

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v3, v1, v2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetCancel(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 220
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public onWidgetCancelByUser(Ljava/lang/String;)V
    .locals 2

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWidgetCancelByUser widgetId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 446
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v0

    const-string v1, "context.widget.cancel.by.user"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendUIEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onWidgetCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 115
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 116
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetCard(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWidgetCustom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 58
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 59
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetCustom(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWidgetList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 78
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 79
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetList(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWidgetListCancelFocus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 268
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 270
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 272
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 273
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    iget-object v2, p1, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->source:Ljava/lang/String;

    iget v3, p1, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->index:I

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetListCancelFocus(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 278
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method protected onWidgetListExpend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 363
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 366
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;

    move-result-object p2

    const/4 v0, 0x0

    .line 367
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 368
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    iget-object v2, p2, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->source:Ljava/lang/String;

    iget-object v3, p2, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->type:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetListExpend(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected onWidgetListFocus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 87
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 91
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 92
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    iget-object v2, p1, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->source:Ljava/lang/String;

    iget v3, p1, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->index:I

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetListFocus(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method protected onWidgetListFold(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 345
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 348
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;

    move-result-object p2

    const/4 v0, 0x0

    .line 349
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 350
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    iget-object v2, p2, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->source:Ljava/lang/String;

    iget-object v3, p2, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->type:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetListFold(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected onWidgetListSelect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 182
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 186
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    const-string v2, "onWidgetListSelect"

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWidgetListSelect data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iget-object v2, p1, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    iget-object v3, p1, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->source:Ljava/lang/String;

    iget v4, p1, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->index:I

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetListSelect(Ljava/lang/String;I)V

    goto :goto_1

    .line 191
    :cond_0
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    iget-object v3, p1, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->source:Ljava/lang/String;

    iget v4, p1, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->index:I

    iget-object v5, p1, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->type:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetListSelect(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method protected onWidgetListStopCountdown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 380
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 382
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 383
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetListStopCountdown()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWidgetMedia(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 105
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 106
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetMedia(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWidgetRecommend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 123
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 125
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 126
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetRecommend(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWidgetScroll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 164
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 168
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    const-string v2, "onWidgetScroll"

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWidgetScroll data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    iget-object v3, p1, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->source:Ljava/lang/String;

    iget v4, p1, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->index:I

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetScroll(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 175
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method protected onWidgetSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 135
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 136
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetSearch(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWidgetText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 68
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 69
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetText(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
