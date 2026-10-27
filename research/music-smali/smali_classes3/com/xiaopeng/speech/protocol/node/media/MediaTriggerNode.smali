.class public Lcom/xiaopeng/speech/protocol/node/media/MediaTriggerNode;
.super Lbut;
.source "MediaTriggerNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/media/b;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 27
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaTriggerNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "value"

    .line 30
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 32
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 33
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/media/b;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/media/b;->a()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaTriggerNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 48
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 49
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/media/b;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/media/b;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
