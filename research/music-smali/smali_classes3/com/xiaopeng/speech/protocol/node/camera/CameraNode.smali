.class public Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;
.super Lbut;
.source "CameraNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/camera/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected A(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 408
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 410
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 411
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->p()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 418
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 420
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 421
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->q()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected C(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 428
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 430
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 431
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->r()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 25
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    .line 29
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "isTTS"

    .line 30
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 32
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 36
    :goto_1
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 37
    aget-object v1, p1, p2

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->a(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    .line 48
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "isTTS"

    .line 49
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 51
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 55
    :goto_1
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 56
    aget-object v1, p1, p2

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->b(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    .line 67
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "isTTS"

    .line 68
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 70
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 74
    :goto_1
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 75
    aget-object v1, p1, p2

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->c(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 84
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 85
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 94
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 95
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 104
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 105
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->c()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 114
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 115
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->d()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 124
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 125
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->e()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 132
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 134
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 135
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->f()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 142
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 144
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 145
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->g()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 154
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 155
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->h()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 164
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 165
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->i()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 174
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 175
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->j()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 182
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 184
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 185
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->k()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 194
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 195
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->l()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 232
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    .line 236
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "isTTS"

    .line 237
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 239
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 243
    :goto_1
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 244
    aget-object v1, p1, p2

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->d(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 251
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    .line 255
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "isTTS"

    .line 256
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 258
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 262
    :goto_1
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 263
    aget-object v1, p1, p2

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->e(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 270
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 272
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 273
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->m()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 300
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/c;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/c;

    move-result-object p1

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 305
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "isTTS"

    .line 306
    invoke-virtual {v2, p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 308
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 312
    :goto_1
    array-length v2, v0

    if-ge p2, v2, :cond_0

    .line 313
    aget-object v2, v0, p2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v2, p1, v1}, Lcom/xiaopeng/speech/protocol/node/camera/a;->a(Lcom/xiaopeng/speech/protocol/bean/c;Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 320
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/c;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/c;

    move-result-object p1

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 325
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "isTTS"

    .line 326
    invoke-virtual {v2, p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 328
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 332
    :goto_1
    array-length v2, v0

    if-ge p2, v2, :cond_0

    .line 333
    aget-object v2, v0, p2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v2, p1, v1}, Lcom/xiaopeng/speech/protocol/node/camera/a;->b(Lcom/xiaopeng/speech/protocol/bean/c;Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 340
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    .line 344
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "isTTS"

    .line 345
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 347
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 351
    :goto_1
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 352
    aget-object v1, p1, p2

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->f(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 359
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    .line 363
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "isTTS"

    .line 364
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 366
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 370
    :goto_1
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 371
    aget-object v1, p1, p2

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->g(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 378
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 380
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 381
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/a;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 388
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 390
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 391
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->n()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 398
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 400
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 401
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/a;->o()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
