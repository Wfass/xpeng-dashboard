.class public Lcom/xiaopeng/speech/protocol/node/system/SystemNode;
.super Lbut;
.source "SystemNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/system/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected A(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 309
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 311
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 312
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->o()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 320
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 322
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 323
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->p()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected C(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 330
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 332
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 333
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->q()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 373
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 375
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 376
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->s()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected E(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 383
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 385
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 386
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->r()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected F(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 393
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/a;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/a;

    move-result-object p1

    .line 394
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 396
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 397
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/system/a;->c(Lcom/xiaopeng/speech/protocol/bean/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected G(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 405
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/a;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/a;

    move-result-object p1

    .line 406
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 408
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 409
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/system/a;->d(Lcom/xiaopeng/speech/protocol/bean/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected H(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 416
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/a;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/a;

    move-result-object p1

    .line 417
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 419
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 420
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/system/a;->e(Lcom/xiaopeng/speech/protocol/bean/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected I(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 427
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/a;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/a;

    move-result-object p1

    .line 428
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 430
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 431
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/system/a;->f(Lcom/xiaopeng/speech/protocol/bean/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected J(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 438
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 440
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 441
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->t()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected K(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 448
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 450
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 451
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->u()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected L(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 458
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 460
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 461
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->v()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected M(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 473
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 475
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 476
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->w()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected N(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 483
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 485
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 486
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->x()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 493
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 495
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 496
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->y()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected P(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 503
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->A()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected Q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 513
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->z()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected R(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 523
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->B()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected S(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 534
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 536
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 537
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->C()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected T(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 546
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 549
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "direction"

    .line 550
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 552
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 555
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 556
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/system/a;->f(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected U(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 563
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 566
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "mode"

    .line 567
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 569
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 572
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 573
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/system/a;->i(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected V(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 580
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 583
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "scene"

    .line 584
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 586
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 589
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 590
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/system/a;->g(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected W(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 597
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 600
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "style"

    .line 601
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 603
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 606
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 607
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/system/a;->h(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected X(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 615
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 618
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "mode"

    .line 619
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 621
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 624
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 625
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/system/a;->e(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 23
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 25
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 26
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 33
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 35
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 36
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 45
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 46
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->c()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 55
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 56
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->d()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 65
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 66
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->e()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 75
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 76
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->f()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 85
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 86
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->g()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 95
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 96
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->h()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 105
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 106
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->i()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 115
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 116
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->j()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 123
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 125
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 126
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->k()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 135
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 136
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->l()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 143
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/f;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/f;

    move-result-object p1

    .line 144
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 146
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 147
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/system/a;->a(Lcom/xiaopeng/speech/protocol/bean/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 154
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/f;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/f;

    move-result-object p1

    .line 155
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 157
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 158
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/system/a;->c(Lcom/xiaopeng/speech/protocol/bean/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 165
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/f;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/f;

    move-result-object p1

    .line 166
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 168
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 169
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/system/a;->b(Lcom/xiaopeng/speech/protocol/bean/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const-string p1, "3"

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    .line 179
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "stream_type"

    .line 180
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 182
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move-object p2, p1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 185
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 186
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-static {p2}, Lbwq;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p2

    goto :goto_2

    :cond_0
    move-object v3, p1

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/system/a;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const-string p1, "3"

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    .line 196
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "stream_type"

    .line 197
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 199
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move-object p2, p1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 202
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 203
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-static {p2}, Lbwq;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p2

    goto :goto_2

    :cond_0
    move-object v3, p1

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/system/a;->b(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const-string p1, "3"

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    .line 213
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "stream_type"

    .line 214
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 216
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move-object p2, p1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 219
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 220
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-static {p2}, Lbwq;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p2

    goto :goto_2

    :cond_0
    move-object v3, p1

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/system/a;->c(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const-string p1, "3"

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    .line 230
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "stream_type"

    .line 231
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 233
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move-object p2, p1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 236
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 237
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-static {p2}, Lbwq;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p2

    goto :goto_2

    :cond_0
    move-object v3, p1

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/system/a;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 244
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 246
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 247
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->m()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 254
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/a;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/a;

    move-result-object p1

    .line 255
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 257
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 258
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/system/a;->a(Lcom/xiaopeng/speech/protocol/bean/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 265
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/a;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/a;

    move-result-object p1

    .line 266
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 268
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 269
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/system/a;->b(Lcom/xiaopeng/speech/protocol/bean/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 276
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/a;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/a;

    move-result-object p1

    .line 277
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 279
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 280
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/system/a;->h(Lcom/xiaopeng/speech/protocol/bean/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 287
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/a;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/a;

    move-result-object p1

    .line 288
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 290
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 291
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/system/a;->g(Lcom/xiaopeng/speech/protocol/bean/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 298
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 300
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 301
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/a;->n()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
