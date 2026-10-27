.class public Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "AiAssistantQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/aiassistant/IAiAssistantCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method protected getAiSkinType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ai.get.skin.type"
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/aiassistant/IAiAssistantCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/aiassistant/IAiAssistantCaller;->getAiSkinType()I

    move-result v0

    return v0
.end method

.method protected getAiVideoOpenStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.ai.video.open"
    .end annotation

    .line 18
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 20
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    .local v1, "jsonData":Lorg/json/JSONObject;
    const-string v2, "video_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    .local v2, "videoName":Ljava/lang/String;
    const-string v3, "video_tag"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, "videoTag":Ljava/lang/String;
    const-string v4, "video_category"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 24
    .local v4, "videoCategory":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v5, Lcom/xiaopeng/speech/protocol/query/aiassistant/IAiAssistantCaller;

    invoke-interface {v5, v2, v3, v4}, Lcom/xiaopeng/speech/protocol/query/aiassistant/IAiAssistantCaller;->getAiVideoOpenStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    .line 25
    .end local v1    # "jsonData":Lorg/json/JSONObject;
    .end local v2    # "videoName":Ljava/lang/String;
    .end local v3    # "videoTag":Ljava/lang/String;
    .end local v4    # "videoCategory":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 26
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 27
    return v0

    .line 30
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    return v0
.end method
