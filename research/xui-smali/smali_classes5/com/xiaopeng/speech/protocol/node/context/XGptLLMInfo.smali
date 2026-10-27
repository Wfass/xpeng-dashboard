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
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "speechV"    # Ljava/lang/String;
    .param p3, "soundArea"    # I
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "apiInfo"    # Lorg/json/JSONObject;

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

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 28
    if-eqz p1, :cond_0

    .line 29
    const-string v0, "msgId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->msgId:Ljava/lang/String;

    .line 30
    const-string v0, "speechV"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->speechV:Ljava/lang/String;

    .line 31
    const-string v0, "soundArea"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->soundArea:I

    .line 32
    const-string v0, "query"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->query:Ljava/lang/String;

    .line 33
    const-string v0, "apiInfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->apiInfo:Lorg/json/JSONObject;

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "jarvis.xgpt.llminfo"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 47
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "soundArea"

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->soundArea:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v1, "speechV"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->speechV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v1, "query"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->query:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v1, "apiInfo"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptLLMInfo;->apiInfo:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 55
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
