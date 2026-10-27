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

    .line 21
    return-void
.end method


# virtual methods
.method protected onExitRecommendCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.exit.recommend.card"
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onExitRecommendCard()V

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onExpression(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.expression"
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 144
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 145
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 146
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onExpression(Ljava/lang/String;)V

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onInputText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.context.input"
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onInputText(Ljava/lang/String;)V

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLLMInput(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.xgpt.llminfo"
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 432
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 433
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 434
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onLLMInput(Ljava/lang/String;)V

    .line 433
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onOutputText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.context.output"
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 37
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 38
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 39
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onOutputText(Ljava/lang/String;)V

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPageNext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.widget.next.page"
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 228
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 229
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 230
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onPageNext()V

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPagePrev(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.widget.prev.page"
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 238
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 239
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 240
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onPagePrev()V

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPageSetLow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.widget.low.page"
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 258
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 259
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 260
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onPageSetLow()V

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPageTopping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.widget.topping.page"
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 248
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 249
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 250
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onPageTopping()V

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSayWelcome(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.say.welcome"
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 154
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 155
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 156
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onSayWelcome(Ljava/lang/String;)V

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onScript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.script.start"
    .end annotation

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 287
    .local v0, "listenerList":[Ljava/lang/Object;
    const-string v1, ""

    .line 288
    .local v1, "domain":Ljava/lang/String;
    const-string v2, ""

    .line 289
    .local v2, "scriptId":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 290
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 291
    .local v3, "obj":Lorg/json/JSONObject;
    nop

    .line 292
    const-string v4, "domain"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 293
    const-string v4, "scriptId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 296
    .end local v3    # "obj":Lorg/json/JSONObject;
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 297
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 299
    aget-object v4, v0, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v4, v1, v2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onScript(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 304
    .end local v0    # "listenerList":[Ljava/lang/Object;
    .end local v1    # "domain":Ljava/lang/String;
    .end local v2    # "scriptId":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_1
    goto :goto_1

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 305
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method protected onScriptStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.script.status"
    .end annotation

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 312
    .local v0, "listenerList":[Ljava/lang/Object;
    const-string v1, ""

    .line 313
    .local v1, "status":Ljava/lang/String;
    const-string v2, ""

    .line 314
    .local v2, "scriptId":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 315
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 316
    .local v3, "obj":Lorg/json/JSONObject;
    nop

    .line 317
    const-string v4, "status"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 318
    const-string v4, "scriptId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 321
    .end local v3    # "obj":Lorg/json/JSONObject;
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 322
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 324
    aget-object v4, v0, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v4, v2, v1}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onScriptStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    .end local v0    # "listenerList":[Ljava/lang/Object;
    .end local v1    # "status":Ljava/lang/String;
    .end local v2    # "scriptId":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_1
    goto :goto_1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 330
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method protected onSmartSceneCreate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.xgpt.sceneinfo"
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 422
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 423
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 424
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onSmartSceneCreate(Ljava/lang/String;)V

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTipsListeningShow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.tips.listening.show"
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 391
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 392
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 393
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onTipsListeningShow(Ljava/lang/String;)V

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTipsListeningStop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.tips.listening.stop"
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 401
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 402
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 403
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onTipsListeningStop(Ljava/lang/String;)V

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTipsText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.tips.text"
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 48
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 49
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onTipsText(Ljava/lang/String;)V

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTtsEcho(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.tts.echo"
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 411
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;

    move-result-object v1

    .line 412
    .local v1, "ttsEcho":Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;
    if-eqz v0, :cond_0

    .line 413
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 414
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onTtsEcho(Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;)V

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 417
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onWidgetCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.widget.cancel"
    .end annotation

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 205
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 206
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 207
    const/4 v2, 0x0

    .line 208
    .local v2, "widgetId":Ljava/lang/String;
    const-string v3, "force"

    .line 209
    .local v3, "cancelWay":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 210
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 211
    .local v4, "obj":Lorg/json/JSONObject;
    nop

    .line 212
    const-string v5, "widgetId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 213
    const-string v5, "cancel"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 216
    .end local v4    # "obj":Lorg/json/JSONObject;
    :cond_0
    aget-object v4, v0, v1

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v4, v2, v3}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetCancel(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v2    # "widgetId":Ljava/lang/String;
    .end local v3    # "cancelWay":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v0    # "listenerList":[Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_1
    goto :goto_1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 223
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public onWidgetCancelByUser(Ljava/lang/String;)V
    .locals 2
    .param p1, "widgetId"    # Ljava/lang/String;

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWidgetCancelByUser widgetId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 448
    return-void
.end method

.method protected onWidgetCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.widget.card"
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 115
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 116
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetCard(Ljava/lang/String;)V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWidgetCustom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.widget.custom"
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 58
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 59
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetCustom(Ljava/lang/String;)V

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWidgetList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.widget.list"
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 77
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 78
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 79
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetList(Ljava/lang/String;)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWidgetListCancelFocus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.list.item.cancel.focus"
    .end annotation

    .line 268
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;

    move-result-object v0

    .line 269
    .local v0, "value":Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;
    if-eqz v0, :cond_0

    .line 270
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 271
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 272
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 273
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    iget-object v4, v0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->source:Ljava/lang/String;

    iget v5, v0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->index:I

    invoke-interface {v3, v4, v5}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetListCancelFocus(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    .end local v0    # "value":Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;
    .end local v1    # "listenerList":[Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 280
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method protected onWidgetListExpend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.widget.list.expend"
    .end annotation

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 364
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 365
    if-eqz p2, :cond_0

    .line 366
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;

    move-result-object v1

    .line 367
    .local v1, "value":Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 368
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    iget-object v4, v1, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->source:Ljava/lang/String;

    iget-object v5, v1, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->type:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetListExpend(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 375
    .end local v0    # "listenerList":[Ljava/lang/Object;
    .end local v1    # "value":Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 373
    :catch_0
    move-exception v0

    .line 376
    :goto_1
    return-void
.end method

.method protected onWidgetListFocus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.list.item.focus"
    .end annotation

    .line 87
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;

    move-result-object v0

    .line 88
    .local v0, "value":Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;
    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 90
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 91
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 92
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    iget-object v4, v0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->source:Ljava/lang/String;

    iget v5, v0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->index:I

    invoke-interface {v3, v4, v5}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetListFocus(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "value":Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;
    .end local v1    # "listenerList":[Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 99
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method protected onWidgetListFold(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.widget.list.fold"
    .end annotation

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 346
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 347
    if-eqz p2, :cond_0

    .line 348
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;

    move-result-object v1

    .line 349
    .local v1, "value":Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 350
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    iget-object v4, v1, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->source:Ljava/lang/String;

    iget-object v5, v1, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->type:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetListFold(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    .end local v0    # "listenerList":[Ljava/lang/Object;
    .end local v1    # "value":Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 355
    :catch_0
    move-exception v0

    .line 358
    :goto_1
    return-void
.end method

.method protected onWidgetListSelect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.list.item.select"
    .end annotation

    .line 182
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;

    move-result-object v0

    .line 183
    .local v0, "value":Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;
    if-eqz v0, :cond_1

    .line 184
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 185
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 186
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 187
    const-string v3, "onWidgetListSelect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWidgetListSelect data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iget-object v3, v0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->type:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    iget-object v4, v0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->source:Ljava/lang/String;

    iget v5, v0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->index:I

    invoke-interface {v3, v4, v5}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetListSelect(Ljava/lang/String;I)V

    goto :goto_1

    .line 191
    :cond_0
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    iget-object v4, v0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->source:Ljava/lang/String;

    iget v5, v0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->index:I

    iget-object v6, v0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->type:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetListSelect(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    .end local v0    # "value":Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;
    .end local v1    # "listenerList":[Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_1
    goto :goto_2

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 199
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    return-void
.end method

.method protected onWidgetListStopCountdown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.widget.list.stop.countdown"
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 381
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 382
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 383
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetListStopCountdown()V

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWidgetMedia(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.widget.media"
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 105
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 106
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetMedia(Ljava/lang/String;)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWidgetRecommend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.widget.recommend"
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 124
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 126
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetRecommend(Ljava/lang/String;)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWidgetScroll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.list.item.scroll"
    .end annotation

    .line 164
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;

    move-result-object v0

    .line 165
    .local v0, "value":Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;
    if-eqz v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 167
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 168
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 169
    const-string v3, "onWidgetScroll"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWidgetScroll data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    iget-object v4, v0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->source:Ljava/lang/String;

    iget v5, v0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->index:I

    invoke-interface {v3, v4, v5}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetScroll(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "value":Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;
    .end local v1    # "listenerList":[Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 177
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method protected onWidgetSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.widget.search"
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 134
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 135
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 136
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetSearch(Ljava/lang/String;)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWidgetText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "context.widget.text"
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 67
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 68
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 69
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextListener;->onWidgetText(Ljava/lang/String;)V

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
