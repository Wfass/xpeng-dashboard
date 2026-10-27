.class public Lcom/xiaopeng/speech/protocol/node/context/ContextNode;
.super Lbut;
.source "ContextNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/context/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected A(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 363
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 366
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/bean/d;->a(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/d;

    move-result-object p2

    const/4 v0, 0x0

    .line 367
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 368
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/a;

    iget-object v2, p2, Lcom/xiaopeng/speech/protocol/bean/d;->a:Ljava/lang/String;

    iget-object v3, p2, Lcom/xiaopeng/speech/protocol/bean/d;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/speech/protocol/node/context/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 380
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 382
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 383
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/context/a;->f()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected C(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 390
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 392
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 393
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/a;->m(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 400
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 402
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 403
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/a;->n(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected E(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 410
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 411
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/tts/a;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/tts/a;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 413
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 414
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/a;->a(Lcom/xiaopeng/speech/protocol/node/tts/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected F(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 421
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 423
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 424
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/a;->o(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected G(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 431
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 433
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 434
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/a;->p(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 26
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 28
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 29
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/a;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 38
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 39
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/a;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 48
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 49
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/a;->c(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 58
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 59
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/a;->d(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 68
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 69
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/a;->e(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 78
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 79
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/a;->f(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 87
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/bean/d;->a(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 91
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 92
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/a;

    iget-object v2, p1, Lcom/xiaopeng/speech/protocol/bean/d;->a:Ljava/lang/String;

    iget v3, p1, Lcom/xiaopeng/speech/protocol/bean/d;->b:I

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/speech/protocol/node/context/a;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method protected i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 105
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 106
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/a;->g(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 115
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 116
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/a;->h(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 123
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 125
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 126
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/a;->i(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 135
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 136
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/a;->j(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 143
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 145
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 146
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/a;->k(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 153
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 155
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 156
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/context/a;->l(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 164
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/bean/d;->a(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 168
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    const-string v2, "onWidgetScroll"

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWidgetScroll data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/a;

    iget-object v3, p1, Lcom/xiaopeng/speech/protocol/bean/d;->a:Ljava/lang/String;

    iget v4, p1, Lcom/xiaopeng/speech/protocol/bean/d;->b:I

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/context/a;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 175
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method protected p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 182
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/bean/d;->a(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/d;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 186
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    const-string v2, "onWidgetListSelect"

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWidgetListSelect data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iget-object v2, p1, Lcom/xiaopeng/speech/protocol/bean/d;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/a;

    iget-object v3, p1, Lcom/xiaopeng/speech/protocol/bean/d;->a:Ljava/lang/String;

    iget v4, p1, Lcom/xiaopeng/speech/protocol/bean/d;->b:I

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/context/a;->c(Ljava/lang/String;I)V

    goto :goto_1

    .line 191
    :cond_0
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/a;

    iget-object v3, p1, Lcom/xiaopeng/speech/protocol/bean/d;->a:Ljava/lang/String;

    iget v4, p1, Lcom/xiaopeng/speech/protocol/bean/d;->b:I

    iget-object v5, p1, Lcom/xiaopeng/speech/protocol/bean/d;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/xiaopeng/speech/protocol/node/context/a;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method protected q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 204
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 206
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    const-string v2, "force"

    if-eqz p2, :cond_0

    .line 210
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "widgetId"

    .line 212
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cancel"

    .line 213
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    .line 216
    :cond_0
    aget-object v3, p1, v0

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v3, v1, v2}, Lcom/xiaopeng/speech/protocol/node/context/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 220
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method protected r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 227
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 229
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 230
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/context/a;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 237
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 239
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 240
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/context/a;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 247
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 249
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 250
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/context/a;->c()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 257
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 259
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 260
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/context/a;->d()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 268
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/bean/d;->a(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 270
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 272
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 273
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/a;

    iget-object v2, p1, Lcom/xiaopeng/speech/protocol/bean/d;->a:Ljava/lang/String;

    iget v3, p1, Lcom/xiaopeng/speech/protocol/bean/d;->b:I

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/speech/protocol/node/context/a;->d(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 278
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method protected w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 286
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 290
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "domain"

    .line 292
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "scriptId"

    .line 293
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 296
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 297
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 299
    aget-object v2, p1, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v2, p2, v0}, Lcom/xiaopeng/speech/protocol/node/context/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 303
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method protected x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 311
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 315
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "status"

    .line 317
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "scriptId"

    .line 318
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 321
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 322
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 324
    aget-object v2, p1, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v2, v0, p2}, Lcom/xiaopeng/speech/protocol/node/context/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 328
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method protected y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 334
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 336
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 337
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/context/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/context/a;->e()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 345
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 348
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/bean/d;->a(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/d;

    move-result-object p2

    const/4 v0, 0x0

    .line 349
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 350
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/context/a;

    iget-object v2, p2, Lcom/xiaopeng/speech/protocol/bean/d;->a:Ljava/lang/String;

    iget-object v3, p2, Lcom/xiaopeng/speech/protocol/bean/d;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/speech/protocol/node/context/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method
