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
    .locals 6

    const-string v0, "dataFrom"

    .line 30
    new-instance v1, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;

    invoke-direct {v1}, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;-><init>()V

    .line 31
    iput-object p0, v1, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->rawData:Ljava/lang/String;

    .line 33
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "sessionId"

    .line 34
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->sessionId:Ljava/lang/String;

    const-string p0, "dm"

    .line 36
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, ""

    .line 37
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "native"

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "api"

    if-eqz v2, :cond_0

    .line 39
    :try_start_1
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "native://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->event:Ljava/lang/String;

    :cond_0
    const-string v2, "command"

    .line 44
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "command://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->event:Ljava/lang/String;

    :cond_1
    const-string v2, "intentName"

    .line 52
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->intent:Ljava/lang/String;

    const-string v2, "runSequence"

    .line 53
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->runSequence:Ljava/lang/String;

    const-string v2, "nlg"

    .line 54
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->nlg:Ljava/lang/String;

    const-string v2, "task"

    .line 55
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->task:Ljava/lang/String;

    const-string v2, "shouldEndSession"

    .line 56
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->shouldEndSession:Z

    .line 57
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->isNative:Z

    const-string/jumbo v0, "widget"

    .line 58
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->widget:Lorg/json/JSONObject;

    const-string v0, "param"

    .line 59
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v1, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->param:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v1
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

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->event:Ljava/lang/String;

    return-void
.end method

.method public setIntent(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->intent:Ljava/lang/String;

    return-void
.end method

.method public setNative(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->isNative:Z

    return-void
.end method

.method public setNlg(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->nlg:Ljava/lang/String;

    return-void
.end method

.method public setRunSequence(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->runSequence:Ljava/lang/String;

    return-void
.end method

.method public setShouldEndSession(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->shouldEndSession:Z

    return-void
.end method

.method public setTask(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/internal/bean/DMResult;->task:Ljava/lang/String;

    return-void
.end method
