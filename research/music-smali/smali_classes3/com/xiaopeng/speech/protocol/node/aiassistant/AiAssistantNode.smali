.class public Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;
.super Lbut;
.source "AiAssistantNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/aiassistant/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 36
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 37
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/aiassistant/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/aiassistant/a;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 46
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 47
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/aiassistant/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/aiassistant/a;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 54
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 56
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 57
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/aiassistant/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/aiassistant/a;->c()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 66
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 67
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/aiassistant/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/aiassistant/a;->d()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 75
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "video_name"

    .line 76
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "video_tag"

    .line 77
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_category"

    .line 78
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 81
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 82
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/aiassistant/a;

    invoke-interface {v3, p2, v0, p1}, Lcom/xiaopeng/speech/protocol/node/aiassistant/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    move v0, p2

    .line 94
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 95
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/aiassistant/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/aiassistant/a;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 104
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 105
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "skin"

    .line 106
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 108
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 110
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 111
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/aiassistant/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/aiassistant/a;->b(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-void
.end method
