.class public Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "XGptLLMInfo.java"


# static fields
.field public static final EVENT_XGPT_LLM_INFO:Ljava/lang/String; = "jarvis.xgpt.llminfo"


# instance fields
.field public apiInfo:Lorg/json/JSONObject;

.field public msgId:Ljava/lang/String;

.field public query:Ljava/lang/String;

.field public soundArea:I

.field public speechV:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->msgId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->speechV:Ljava/lang/String;

    .line 21
    iput p3, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->soundArea:I

    .line 22
    iput-object p5, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->apiInfo:Lorg/json/JSONObject;

    .line 23
    iput-object p4, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->query:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "msgId"

    .line 29
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->msgId:Ljava/lang/String;

    const-string v0, "speechV"

    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->speechV:Ljava/lang/String;

    const-string v0, "soundArea"

    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->soundArea:I

    const-string v0, "query"

    .line 32
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->query:Ljava/lang/String;

    const-string v0, "apiInfo"

    .line 33
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->apiInfo:Lorg/json/JSONObject;

    :cond_0
    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "jarvis.xgpt.llminfo"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "soundArea"

    .line 47
    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->soundArea:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "msgId"

    .line 48
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "speechV"

    .line 49
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->speechV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "query"

    .line 50
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->query:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "apiInfo"

    .line 51
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->apiInfo:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 53
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 55
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
