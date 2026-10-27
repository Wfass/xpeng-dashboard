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

    return-void
.end method

.method private getCancelObj()Lorg/json/JSONObject;
    .locals 3

    .line 467
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "command"

    const-string v2, "command://combo.message.cancel"

    .line 469
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, "all"

    .line 470
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 472
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private getExtraFromJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "extra"

    .line 273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    return-object v2

    .line 277
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 279
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    return-object v2

    :catch_0
    move-exception p1

    .line 283
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v2
.end method

.method private getExtraObj()Lorg/json/JSONObject;
    .locals 3

    .line 443
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "command"

    const-string v2, "command://combo.message.extra"

    .line 445
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, "all"

    .line 446
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 448
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private getModeFromJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "mode"

    .line 289
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    return-object v2

    .line 293
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 295
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    return-object v2

    :catch_0
    move-exception p1

    .line 299
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v2
.end method

.method private getSubmitObj()Lorg/json/JSONObject;
    .locals 3

    .line 456
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "command"

    const-string v2, "command://combo.message.submit"

    .line 458
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, "all"

    .line 459
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 461
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private getWordList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    .line 412
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 414
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "\\|"

    if-nez v1, :cond_0

    .line 415
    :try_start_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v1, v2

    .line 416
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 417
    aget-object v4, p1, v1

    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->getSubmitObj()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 421
    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move p2, v2

    .line 422
    :goto_1
    array-length v1, p1

    if-ge p2, v1, :cond_1

    .line 423
    aget-object v1, p1, p2

    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->getCancelObj()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 428
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 429
    invoke-virtual {p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 430
    :goto_2
    array-length p2, p1

    if-ge v2, p2, :cond_2

    .line 431
    aget-object p2, p1, v2

    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->getExtraObj()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 435
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public closeMeditationMode(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 325
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->closeMeditationMode(Ljava/lang/String;Z)V

    return-void
.end method

.method public closeMeditationMode(Ljava/lang/String;Z)V
    .locals 3

    .line 334
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialog()V

    .line 337
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "tts"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "isAsrModeOffline"

    const/4 v1, 0x1

    .line 338
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "needTTS"

    if-eqz p2, :cond_0

    const-string p2, "true"

    goto :goto_0

    :cond_0
    const-string p2, "false"

    .line 339
    :goto_0
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 341
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    .line 343
    :goto_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p2

    const-string/jumbo v0, "\u79bb\u7ebf\u7cfb\u7edf\u7ec4\u5408\u547d\u4ee4\u8bcd"

    const-string/jumbo v1, "\u7ec4\u5408\u547d\u4ee4\u8bcd"

    const-string/jumbo v2, "\u5173\u95ed\u51a5\u60f3\u6a21\u5f0f"

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public closeWaitMode(Z)V
    .locals 2

    .line 364
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p1

    const-string v0, "command://combo.mode.wait.off"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected enterUserMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 207
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 209
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 210
    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->getExtraFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->getModeFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->enterUserMode(Ljava/lang/String;)V

    goto :goto_1

    .line 214
    :cond_0
    aget-object v2, p1, v0

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->getModeFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->enterUserModeWithExtra(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected exitUserModel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 222
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 224
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 225
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->getModeFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->exitUserModel(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

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
    .locals 3

    .line 401
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "triggerID"

    const/16 v2, 0x4e22

    .line 402
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 403
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "combo.message.trigger.leave"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendApiRoute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 406
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 252
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 254
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 255
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onCancel()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDataModeBioTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onDataModeBioTts()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDataModeFridgeTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onDataModeFridgeTts()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDataModeInvisibleTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onDataModeInvisibleTts()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDataModeMeditationTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onDataModeMeditationTts()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDataModeVentilateTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onDataModeVentilateTts()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDataModeWaitTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onDataModeWaitTts()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 263
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 265
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 266
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onExtra()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onFastCloseModeInvisible(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onFastCloseModeInvisible()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onModeBio(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onModeBio()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onModeBioOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onModeBioOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onModeFridge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onModeFridge()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onModeFridgeOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onModeFridgeOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onModeInvisible(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onModeInvisible()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onModeInvisibleOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onModeInvisibleOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onModeVentilate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 47
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onModeVentilate()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onModeVentilateOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onModeVentilateOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onModeWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 187
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onModeWait()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onModeWaitOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 197
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onModeWaitOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSubmit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 235
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 236
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 238
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 239
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;->onSubmit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 244
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public openMeditationMode(Ljava/lang/String;)V
    .locals 4

    .line 309
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialog()V

    .line 312
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "tts"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "isAsrModeOffline"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 314
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    .line 316
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v0

    const-string/jumbo v1, "\u79bb\u7ebf\u7cfb\u7edf\u7ec4\u5408\u547d\u4ee4\u8bcd"

    const-string/jumbo v2, "\u7ec4\u5408\u547d\u4ee4\u8bcd"

    const-string/jumbo v3, "\u51a5\u60f3\u6a21\u5f0f"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openWaitMode(Z)V
    .locals 4

    .line 352
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "isAsrModeOffline"

    const/4 v2, 0x1

    .line 353
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "needTTS"

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 355
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    .line 357
    :goto_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v0

    const-string/jumbo v1, "\u79bb\u7ebf\u7cfb\u7edf\u7ec4\u5408\u547d\u4ee4\u8bcd"

    const-string/jumbo v2, "\u7ec4\u5408\u547d\u4ee4\u8bcd"

    const-string/jumbo v3, "\u7b49\u4eba\u6a21\u5f0f"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendTrigger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 384
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "triggerID"

    const/16 v2, 0x4e22

    .line 385
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "tts"

    .line 386
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "wordList"

    .line 387
    invoke-direct {p0, p2, p3, p4}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->getWordList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ifMergeWords"

    const/4 p2, 0x0

    .line 388
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "repeatNum"

    .line 389
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 391
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p1

    const-string p2, "combo.message.trigger.send"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendApiRoute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ComboNode"

    .line 392
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendTrigger :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 395
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
