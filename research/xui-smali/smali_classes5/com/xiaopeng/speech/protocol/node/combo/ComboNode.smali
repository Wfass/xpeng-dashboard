.class public Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "ComboNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final CLOSE_MEDITATION_INTENT:Ljava/lang/String; = "\u5173\u95ed\u51a5\u60f3\u6a21\u5f0f"

.field private static final CLOSE_WAIT_INTENT:Ljava/lang/String; = "\u5173\u95ed\u7b49\u4eba\u6a21\u5f0f"

.field private static final COMBO_SKILL:Ljava/lang/String; = "\u79bb\u7ebf\u7cfb\u7edf\u7ec4\u5408\u547d\u4ee4\u8bcd"

.field private static final COMBO_TASK:Ljava/lang/String; = "\u7ec4\u5408\u547d\u4ee4\u8bcd"

.field private static final OPEN_MEDITATION_INTENT:Ljava/lang/String; = "\u51a5\u60f3\u6a21\u5f0f"

.field private static final OPEN_WAIT_INTENT:Ljava/lang/String; = "\u7b49\u4eba\u6a21\u5f0f"

.field private static final TAG:Ljava/lang/String; = "ComboNode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 32
    return-void
.end method

.method private getCancelObj()Lorg/json/JSONObject;
    .locals 3

    .line 467
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 469
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "command"

    const-string v2, "command://combo.message.cancel"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    const-string v1, "type"

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    goto :goto_0

    .line 471
    :catch_0
    move-exception v1

    .line 472
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 474
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method

.method private getExtraFromJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const-string v0, ""

    return-object v0

    .line 277
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, "modeJson":Lorg/json/JSONObject;
    const-string v1, "extra"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    const-string v1, "extra"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 281
    :cond_1
    const-string v1, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 282
    .end local v0    # "modeJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 284
    const-string v1, ""

    return-object v1
.end method

.method private getExtraObj()Lorg/json/JSONObject;
    .locals 3

    .line 443
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 445
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "command"

    const-string v2, "command://combo.message.extra"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    const-string v1, "type"

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    goto :goto_0

    .line 447
    :catch_0
    move-exception v1

    .line 448
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 450
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method

.method private getModeFromJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 289
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const-string v0, ""

    return-object v0

    .line 293
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "modeJson":Lorg/json/JSONObject;
    const-string v1, "mode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    const-string v1, "mode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 297
    :cond_1
    const-string v1, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 298
    .end local v0    # "modeJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 300
    const-string v1, ""

    return-object v1
.end method

.method private getSubmitObj()Lorg/json/JSONObject;
    .locals 3

    .line 456
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 458
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "command"

    const-string v2, "command://combo.message.submit"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    const-string v1, "type"

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    goto :goto_0

    .line 460
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 463
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method

.method private getWordList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "ok_text"    # Ljava/lang/String;
    .param p2, "cancel_text"    # Ljava/lang/String;
    .param p3, "extra_text"    # Ljava/lang/String;

    .line 412
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 414
    .local v0, "resultObj":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 415
    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "okArray":[Ljava/lang/String;
    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 417
    aget-object v4, v1, v3

    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->getSubmitObj()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 420
    .end local v1    # "okArray":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 421
    const-string v1, "\\|"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "cancelArray":[Ljava/lang/String;
    move v3, v2

    .restart local v3    # "i":I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 423
    aget-object v4, v1, v3

    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->getCancelObj()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 422
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 428
    .end local v1    # "cancelArray":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 429
    const-string v1, "\\|"

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "extraArray":[Ljava/lang/String;
    nop

    .local v2, "i":I
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 431
    aget-object v3, v1, v2

    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->getExtraObj()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 436
    .end local v1    # "extraArray":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_2
    goto :goto_3

    .line 434
    :catch_0
    move-exception v1

    .line 435
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 437
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v0
.end method


# virtual methods
.method public closeMeditationMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "tts"    # Ljava/lang/String;

    .line 325
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->closeMeditationMode(Ljava/lang/String;Z)V

    .line 326
    return-void
.end method

.method public closeMeditationMode(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "tts"    # Ljava/lang/String;
    .param p2, "needTTS"    # Z

    .line 334
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialog()V

    .line 335
    const-string v0, ""

    .line 337
    .local v0, "slots":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "tts"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "isAsrModeOffline"

    const/4 v3, 0x1

    .line 338
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "needTTS"

    if-eqz p2, :cond_0

    const-string v3, "true"

    goto :goto_0

    :cond_0
    const-string v3, "false"

    .line 339
    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 342
    goto :goto_1

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 343
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "\u79bb\u7ebf\u7cfb\u7edf\u7ec4\u5408\u547d\u4ee4\u8bcd"

    const-string v3, "\u7ec4\u5408\u547d\u4ee4\u8bcd"

    const-string v4, "\u5173\u95ed\u51a5\u60f3\u6a21\u5f0f"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public closeWaitMode(Z)V
    .locals 3
    .param p1, "needTTS"    # Z

    .line 364
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v0

    const-string v1, "command://combo.mode.wait.off"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method protected enterUserMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://combo.enter.user.scenario"
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 208
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 209
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 210
    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->getExtraFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "extra":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    aget-object v3, v0, v1

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->getModeFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->enterUserMode(Ljava/lang/String;)V

    goto :goto_1

    .line 214
    :cond_0
    aget-object v3, v0, v1

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->getModeFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->enterUserModeWithExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .end local v2    # "extra":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected exitUserModel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://combo.exit.user.scenario"
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 223
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 224
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 225
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->getModeFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->exitUserModel(Ljava/lang/String;)V

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public getCurrentMode()I
    .locals 3

    .line 372
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getQueryInjector()Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;

    move-result-object v0

    const-string v1, "status.cur.mode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->queryData(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/bean/Value;->getInteger()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public leaveTrigger()V
    .locals 4

    .line 401
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 402
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "triggerID"

    const/16 v2, 0x4e22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 403
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "combo.message.trigger.leave"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendApiRoute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .end local v0    # "json":Lorg/json/JSONObject;
    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 408
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method protected onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://combo.message.cancel"
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 253
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 254
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 255
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onCancel()V

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDataModeBioTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "data://combo.mode.bio.tts"
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onDataModeBioTts()V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDataModeFridgeTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "data://combo.mode.fridge.tts"
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onDataModeFridgeTts()V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDataModeInvisibleTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "data://combo.mode.invisible.tts"
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onDataModeInvisibleTts()V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDataModeMeditationTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "data://combo.mode.meditation.tts"
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onDataModeMeditationTts()V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDataModeVentilateTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "data://combo.mode.ventilate.tts"
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onDataModeVentilateTts()V

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDataModeWaitTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "data://combo.mode.wait.tts"
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onDataModeWaitTts()V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://combo.message.extra"
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 264
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 265
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 266
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onExtra()V

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onFastCloseModeInvisible(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://combo.mode.invisible.fast.close"
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onFastCloseModeInvisible()V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onModeBio(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://combo.mode.bio"
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onModeBio()V

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onModeBioOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://combo.mode.bio.off"
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onModeBioOff()V

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onModeFridge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://combo.mode.fridge"
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onModeFridge()V

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onModeFridgeOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://combo.mode.fridge.off"
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onModeFridgeOff()V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onModeInvisible(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://combo.mode.invisible"
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onModeInvisible()V

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onModeInvisibleOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://combo.mode.invisible.off"
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onModeInvisibleOff()V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onModeVentilate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://combo.mode.ventilate"
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onModeVentilate()V

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onModeVentilateOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://combo.mode.ventilate.off"
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onModeVentilateOff()V

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onModeWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://combo.mode.wait"
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onModeWait()V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onModeWaitOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://combo.mode.wait.off"
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onModeWaitOff()V

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSubmit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://combo.message.submit"
    .end annotation

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 236
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    if-eqz v0, :cond_0

    .line 238
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 239
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onSubmit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    .end local v0    # "listenerList":[Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public openMeditationMode(Ljava/lang/String;)V
    .locals 5
    .param p1, "tts"    # Ljava/lang/String;

    .line 309
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialog()V

    .line 310
    const-string v0, ""

    .line 312
    .local v0, "slots":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "tts"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "isAsrModeOffline"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 315
    goto :goto_0

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 316
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "\u79bb\u7ebf\u7cfb\u7edf\u7ec4\u5408\u547d\u4ee4\u8bcd"

    const-string v3, "\u7ec4\u5408\u547d\u4ee4\u8bcd"

    const-string v4, "\u51a5\u60f3\u6a21\u5f0f"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public openWaitMode(Z)V
    .locals 5
    .param p1, "needTTS"    # Z

    .line 350
    const-string v0, ""

    .line 352
    .local v0, "slots":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "isAsrModeOffline"

    const/4 v3, 0x1

    .line 353
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "needTTS"

    if-eqz p1, :cond_0

    const-string v3, "true"

    goto :goto_0

    :cond_0
    const-string v3, "false"

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 356
    goto :goto_1

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 357
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "\u79bb\u7ebf\u7cfb\u7edf\u7ec4\u5408\u547d\u4ee4\u8bcd"

    const-string v3, "\u7ec4\u5408\u547d\u4ee4\u8bcd"

    const-string v4, "\u7b49\u4eba\u6a21\u5f0f"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public sendTrigger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "tts"    # Ljava/lang/String;
    .param p2, "okText"    # Ljava/lang/String;
    .param p3, "cancelText"    # Ljava/lang/String;
    .param p4, "extra"    # Ljava/lang/String;

    .line 384
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 385
    .local v0, "data":Lorg/json/JSONObject;
    const-string v1, "triggerID"

    const/16 v2, 0x4e22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 386
    const-string v1, "tts"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    const-string v1, "wordList"

    invoke-direct {p0, p2, p3, p4}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->getWordList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    const-string v1, "ifMergeWords"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 389
    const-string v1, "repeatNum"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 391
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "combo.message.trigger.send"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendApiRoute(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v1, "ComboNode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTrigger :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .end local v0    # "data":Lorg/json/JSONObject;
    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 398
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
