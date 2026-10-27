.class public Lcom/xiaopeng/speech/protocol/node/music/MusicNode;
.super Lbut;
.source "MusicNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/music/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected A(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 366
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 367
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 369
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 370
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/music/a;->b(Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 386
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 387
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "value"

    .line 388
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 390
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 391
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/music/a;->c(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 395
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public C(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 402
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 403
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "value"

    .line 404
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 406
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 407
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/music/a;->d(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 411
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 418
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 419
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "value"

    .line 420
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 422
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 423
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/music/a;->e(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 427
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public E(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 434
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 436
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 437
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->t()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public F(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 444
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 446
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 447
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->u()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public G(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 456
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 457
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "value"

    .line 458
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->floatValue()F

    move-result p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 460
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 461
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/music/a;->a(F)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 465
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public H(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 477
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 479
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 480
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->v()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 492
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 494
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 495
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->w()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public J(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 503
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 505
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 506
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->x()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public K(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 513
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 515
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 516
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->z()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public L(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 523
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 525
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 526
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->A()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public M(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 533
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 535
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 536
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->B()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 52
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 53
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 63
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 64
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    const-string v1, "single"

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/a;->a(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 73
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 74
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    const-string v1, "order"

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/a;->a(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 83
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 84
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    const-string v1, "random"

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/a;->a(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 91
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;

    move-result-object p2

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 94
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 95
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/a;->a(Ljava/lang/String;Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 125
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 127
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 128
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->d()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 138
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 139
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->e()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 149
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 150
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->g()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 160
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 161
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->h()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 171
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 172
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->f()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 193
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 194
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->k()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 202
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 204
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 205
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/music/a;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 212
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 214
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 215
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/music/a;->c(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const-string p1, "from"

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    .line 223
    invoke-static {p2}, Lbwc;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "dui_xp"

    .line 229
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MusicNode"

    const-string v1, "is from dui_xp"

    .line 230
    invoke-static {p1, v1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 236
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    .line 240
    :goto_0
    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 241
    aget-object v1, v0, p1

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/music/a;->d(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 249
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "param"

    .line 250
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 252
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    .line 254
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 256
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 257
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/music/a;->e(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 264
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 266
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 267
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->i()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 274
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 276
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 277
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->m()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 284
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 286
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 287
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->n()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 294
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 296
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 297
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->o()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 304
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 306
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 307
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->p()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 314
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 316
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 317
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->q()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 324
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 326
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 327
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->j()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 335
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 336
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 338
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 339
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/music/a;->a(Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 346
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 348
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 349
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->r()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 356
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 358
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 359
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/a;->s()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
