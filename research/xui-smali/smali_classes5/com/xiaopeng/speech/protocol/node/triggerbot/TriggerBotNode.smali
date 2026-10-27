.class public Lcom/xiaopeng/speech/protocol/node/triggerbot/TriggerBotNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "TriggerBotNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/triggerbot/TriggerBotListener;",
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
.method public onTriggerExit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://trigger.bot.exit"
    .end annotation

    .line 30
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "triggerID"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 32
    .local v1, "triggerID":Ljava/lang/Integer;
    const-string v2, "reason"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "reason":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/triggerbot/TriggerBotNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v3

    .line 34
    .local v3, "listenerList":[Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 35
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 36
    .local v6, "o":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/xiaopeng/speech/protocol/node/triggerbot/TriggerBotListener;

    invoke-interface {v7, v1, v2, p2}, Lcom/xiaopeng/speech/protocol/node/triggerbot/TriggerBotListener;->onTriggerExit(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v6    # "o":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 41
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "triggerID":Ljava/lang/Integer;
    .end local v2    # "reason":Ljava/lang/String;
    .end local v3    # "listenerList":[Ljava/lang/Object;
    :cond_0
    goto :goto_1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public onTriggerResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://trigger.bot.result"
    .end annotation

    .line 13
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "command"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    .local v1, "command":Ljava/lang/String;
    const-string v2, "param"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    .local v2, "param":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/triggerbot/TriggerBotNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v3

    .line 17
    .local v3, "listenerList":[Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 18
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 19
    aget-object v5, v3, v4

    check-cast v5, Lcom/xiaopeng/speech/protocol/node/triggerbot/TriggerBotListener;

    invoke-interface {v5, v1, v2}, Lcom/xiaopeng/speech/protocol/node/triggerbot/TriggerBotListener;->onTriggerResult(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 24
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "command":Ljava/lang/String;
    .end local v2    # "param":Ljava/lang/String;
    .end local v3    # "listenerList":[Ljava/lang/Object;
    .end local v4    # "i":I
    :cond_0
    goto :goto_1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
