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

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptSceneInfo;->msgId:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptSceneInfo;->code:I

    .line 20
    iput-object p3, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptSceneInfo;->smartSceneInfo:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "msgId"

    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptSceneInfo;->msgId:Ljava/lang/String;

    const-string v0, "code"

    .line 27
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptSceneInfo;->code:I

    const-string v0, "smartSceneInfo"

    .line 28
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptSceneInfo;->smartSceneInfo:Lorg/json/JSONObject;

    :cond_0
    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "jarvis.xgpt.sceneinfo"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "code"

    .line 42
    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptSceneInfo;->code:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "msgId"

    .line 43
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptSceneInfo;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "smartSceneInfo"

    .line 44
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/context/XGptSceneInfo;->smartSceneInfo:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 46
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 48
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
