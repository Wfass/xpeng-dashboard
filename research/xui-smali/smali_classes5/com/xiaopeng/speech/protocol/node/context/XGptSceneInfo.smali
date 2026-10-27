.class public Lcom/xiaopeng/speech/protocol/node/context/XGptSceneInfo;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "XGptSceneInfo.java"


# static fields
.field public static final EVENT_XGPT_SCENE_INFO:Ljava/lang/String; = "jarvis.xgpt.sceneinfo"


# instance fields
.field public code:I

.field public msgId:Ljava/lang/String;

.field public smartSceneInfo:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "smartSceneInfo"    # Lorg/json/JSONObject;

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptSceneInfo;->msgId:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptSceneInfo;->code:I

    .line 20
    iput-object p3, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptSceneInfo;->smartSceneInfo:Lorg/json/JSONObject;

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 25
    if-eqz p1, :cond_0

    .line 26
    const-string v0, "msgId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptSceneInfo;->msgId:Ljava/lang/String;

    .line 27
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptSceneInfo;->code:I

    .line 28
    const-string v0, "smartSceneInfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptSceneInfo;->smartSceneInfo:Lorg/json/JSONObject;

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "jarvis.xgpt.sceneinfo"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "code"

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptSceneInfo;->code:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptSceneInfo;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v1, "smartSceneInfo"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptSceneInfo;->smartSceneInfo:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 48
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
