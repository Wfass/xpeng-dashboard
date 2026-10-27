.class public Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;
.super Ljava/lang/Object;
.source "DMResult.java"


# instance fields
.field private event:Ljava/lang/String;

.field private intent:Ljava/lang/String;

.field private isNative:Z

.field private nlg:Ljava/lang/String;

.field private param:Lorg/json/JSONObject;

.field private rawData:Ljava/lang/String;

.field private runSequence:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private shouldEndSession:Z

.field private task:Ljava/lang/String;

.field private widget:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;
    .locals 8
    .param p0, "data"    # Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;-><init>()V

    .line 31
    .local v0, "dmResult":Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;
    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->rawData:Ljava/lang/String;

    .line 33
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "sessionId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->sessionId:Ljava/lang/String;

    .line 36
    const-string v2, "dm"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 37
    .local v2, "dm":Lorg/json/JSONObject;
    const-string v3, "dataFrom"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "dataFrom":Ljava/lang/String;
    const-string v4, "native"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    const-string v4, "api"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "api":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "native://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->event:Ljava/lang/String;

    .line 44
    .end local v4    # "api":Ljava/lang/String;
    :cond_0
    const-string v4, "command"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 45
    .local v4, "commandObj":Lorg/json/JSONObject;
    if-eqz v4, :cond_1

    .line 46
    const-string v5, "api"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 47
    .local v5, "api":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "command://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->event:Ljava/lang/String;

    .line 52
    .end local v5    # "api":Ljava/lang/String;
    :cond_1
    const-string v5, "intentName"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->intent:Ljava/lang/String;

    .line 53
    const-string v5, "runSequence"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->runSequence:Ljava/lang/String;

    .line 54
    const-string v5, "nlg"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->nlg:Ljava/lang/String;

    .line 55
    const-string v5, "task"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->task:Ljava/lang/String;

    .line 56
    const-string v5, "shouldEndSession"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->shouldEndSession:Z

    .line 57
    const-string v5, "dataFrom"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    iput-boolean v5, v0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->isNative:Z

    .line 58
    const-string v5, "widget"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, v0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->widget:Lorg/json/JSONObject;

    .line 59
    const-string v5, "param"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, v0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->param:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "dm":Lorg/json/JSONObject;
    .end local v3    # "dataFrom":Ljava/lang/String;
    .end local v4    # "commandObj":Lorg/json/JSONObject;
    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 63
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->intent:Ljava/lang/String;

    return-object v0
.end method

.method public getNlg()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->nlg:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()Lorg/json/JSONObject;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->param:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRawData()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->rawData:Ljava/lang/String;

    return-object v0
.end method

.method public getRunSequence()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->runSequence:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTask()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->task:Ljava/lang/String;

    return-object v0
.end method

.method public isListWidget()Z
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->widget:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNative()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->isNative:Z

    return v0
.end method

.method public isShouldEndSession()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->shouldEndSession:Z

    return v0
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->event:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setIntent(Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->intent:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setNative(Z)V
    .locals 0
    .param p1, "aNative"    # Z

    .line 131
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->isNative:Z

    .line 132
    return-void
.end method

.method public setNlg(Ljava/lang/String;)V
    .locals 0
    .param p1, "nlg"    # Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->nlg:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setRunSequence(Ljava/lang/String;)V
    .locals 0
    .param p1, "runSequence"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->runSequence:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setShouldEndSession(Z)V
    .locals 0
    .param p1, "shouldEndSession"    # Z

    .line 123
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->shouldEndSession:Z

    .line 124
    return-void
.end method

.method public setTask(Ljava/lang/String;)V
    .locals 0
    .param p1, "task"    # Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->task:Ljava/lang/String;

    .line 116
    return-void
.end method
