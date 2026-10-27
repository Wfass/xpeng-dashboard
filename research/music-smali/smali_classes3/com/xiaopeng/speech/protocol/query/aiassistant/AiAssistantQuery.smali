.class public Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery;
.super Lbuu;
.source "AiAssistantQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbuu<",
        "Lcom/xiaopeng/speech/protocol/query/aiassistant/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 20
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "video_name"

    .line 21
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "video_tag"

    .line 22
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_category"

    .line 23
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery;->b:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/speech/protocol/query/aiassistant/a;

    invoke-interface {v2, p2, v1, v0}, Lcom/xiaopeng/speech/protocol/query/aiassistant/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p2

    .line 26
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return p1
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/aiassistant/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/aiassistant/a;->a()I

    move-result p1

    return p1
.end method
