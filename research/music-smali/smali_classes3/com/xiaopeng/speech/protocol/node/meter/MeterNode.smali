.class public Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;
.super Lbut;
.source "MeterNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/meter/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 19
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 22
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "index"

    .line 24
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 27
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p2, -0x1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 31
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 32
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/meter/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/meter/a;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 42
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "index"

    .line 44
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 47
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p2, -0x1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 51
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 52
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/meter/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/meter/a;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 61
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 62
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/meter/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/meter/a;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
