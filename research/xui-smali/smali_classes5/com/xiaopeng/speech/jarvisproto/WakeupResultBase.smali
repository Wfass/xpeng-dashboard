.class public abstract Lcom/xiaopeng/speech/jarvisproto/WakeupResultBase;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "WakeupResultBase.java"


# instance fields
.field public angle:I

.field public autoListen:Z

.field public canWakeup:Z

.field public channel:I

.field public command:Ljava/lang/String;

.field public param:Ljava/lang/String;

.field public reason:Ljava/lang/String;

.field public script:Ljava/lang/String;

.field public word:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupResultBase;->canWakeup:Z

    return-void
.end method


# virtual methods
.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "reason"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupResultBase;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string v1, "word"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupResultBase;->word:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string v1, "command"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupResultBase;->command:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v1, "angle"

    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupResultBase;->angle:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    const-string v1, "channel"

    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupResultBase;->channel:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    const-string v1, "canWakeup"

    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupResultBase;->canWakeup:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 34
    const-string v1, "param"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupResultBase;->param:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v1, "script"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupResultBase;->script:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 39
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
