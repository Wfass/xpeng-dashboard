.class public Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;
.super Lbut;
.source "NaviNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/navi/a;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Z


# direct methods
.method private a(Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;)V
    .locals 3

    .line 777
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 779
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 780
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v2, p1}, Lcom/xiaopeng/speech/protocol/node/navi/a;->a(Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 322
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 324
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 325
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->F()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 332
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 334
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 335
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->G()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public C(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 342
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 344
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 345
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->H()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 352
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 354
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 355
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->I()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public E(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 362
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 364
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 365
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->K()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public F(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 372
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 374
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 375
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->q()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public G(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 382
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 384
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 385
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->r()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public H(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 392
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 394
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 395
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->s()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 402
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 404
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 405
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->y()Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public J(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 412
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/c;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/c;

    move-result-object p1

    .line 413
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 415
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 416
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/a;->a(Lcom/xiaopeng/speech/protocol/node/navi/bean/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public K(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 423
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 425
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 426
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->J()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public L(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 433
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 435
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 436
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->R()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public M(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 443
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 445
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 446
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->S()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public N(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 453
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 455
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 456
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->T()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 463
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 465
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 466
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->U()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public P(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 473
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->V()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 483
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->W()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public R(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 493
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->L()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public S(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 503
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->X()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public T(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 513
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->Y()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public U(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 523
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/b;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/b;

    move-result-object p1

    .line 524
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 526
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 527
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/a;->a(Lcom/xiaopeng/speech/protocol/node/navi/bean/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public V(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 642
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/a;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/a;

    move-result-object p1

    .line 643
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move v1, v0

    .line 645
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 646
    aget-object v2, p2, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v2, p1}, Lcom/xiaopeng/speech/protocol/node/navi/a;->a(Lcom/xiaopeng/speech/protocol/node/navi/bean/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 649
    :cond_0
    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->d:Z

    return-void
.end method

.method public W(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const-string p1, "pending route"

    .line 678
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 679
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->d:Z

    return-void
.end method

.method public X(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const-string p1, "soundArea"

    .line 684
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/a;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/a;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 693
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "addressType"

    .line 694
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/a;->b(Ljava/lang/String;)V

    const-string p2, "poi"

    .line 695
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 696
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    const-string v4, "pref"

    .line 697
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    const-string v5, "type"

    .line 698
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    const-string v6, "naviType"

    .line 699
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    const-string v7, "imediatenavi"

    .line 700
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    const-string v8, "routeSelectRef"

    .line 701
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    .line 702
    :try_start_6
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 703
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    .line 704
    :try_start_7
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    move-object v1, v9

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v1, v9

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    move v8, v2

    goto :goto_3

    :catch_3
    move-exception p1

    move v7, v2

    goto :goto_2

    :catch_4
    move-exception p1

    goto :goto_1

    :catch_5
    move-exception p1

    move-object v5, v1

    goto :goto_1

    :catch_6
    move-exception p1

    move-object v4, v1

    goto :goto_0

    :catch_7
    move-exception p1

    move-object p2, v1

    move-object v4, p2

    :goto_0
    move-object v5, v4

    :goto_1
    move v6, v2

    move v7, v6

    :goto_2
    move v8, v7

    .line 707
    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 709
    :cond_0
    :goto_4
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    move v3, v2

    .line 711
    :goto_5
    array-length v9, p1

    if-ge v3, v9, :cond_1

    .line 712
    aget-object v9, p1, v3

    check-cast v9, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v9, v0, p2}, Lcom/xiaopeng/speech/protocol/node/navi/a;->a(Lcom/xiaopeng/speech/protocol/node/navi/bean/a;Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 715
    :cond_1
    iget-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->d:Z

    if-eqz p1, :cond_2

    .line 716
    new-instance p1, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;

    invoke-direct {p1, p2, v4, v5}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;-><init>(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual {p1, v6}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setNaviType(I)V

    .line 718
    invoke-virtual {p1, v7}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setImediateNavi(Z)V

    .line 719
    invoke-virtual {p1, v8}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setRouteSelectRef(I)V

    .line 720
    invoke-virtual {p1, v1}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setSpeechInfo(Lorg/json/JSONObject;)V

    .line 721
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->a(Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;)V

    .line 723
    :cond_2
    iput-boolean v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->d:Z

    return-void
.end method

.method public Y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "fullSceneSwitch"

    const-string v2, "NaviNode"

    const-string v3, "soundArea"

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 739
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v9, p2

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "poi"

    .line 740
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 741
    invoke-static {v9}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    move-result-object v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_9

    :try_start_1
    const-string v10, "pref"

    .line 742
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_8

    .line 743
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pathPref:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    invoke-virtual {v1, v10}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 745
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_0

    :cond_0
    move v11, v5

    :goto_0
    :try_start_3
    const-string v12, "type"

    .line 747
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6

    :try_start_4
    const-string v13, "naviType"

    .line 748
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    const-string v14, "imediatenavi"

    .line 749
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v14
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    const-string v15, "routeSelectRef"

    .line 750
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    .line 751
    :try_start_7
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 752
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    move/from16 v16, v0

    goto :goto_1

    :cond_1
    move/from16 v16, v4

    .line 754
    :goto_1
    :try_start_8
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 755
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    .line 756
    :try_start_9
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_2
    const/4 v7, 0x0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move/from16 v16, v4

    goto :goto_3

    :catch_3
    move-exception v0

    move/from16 v16, v4

    move v15, v6

    goto :goto_3

    :catch_4
    move-exception v0

    move/from16 v16, v4

    move v14, v6

    goto :goto_2

    :catch_5
    move-exception v0

    move/from16 v16, v4

    move v13, v6

    move v14, v13

    :goto_2
    move v15, v14

    :goto_3
    const/4 v7, 0x0

    goto :goto_7

    :catch_6
    move-exception v0

    move/from16 v16, v4

    goto :goto_4

    :catch_7
    move-exception v0

    move/from16 v16, v4

    move v11, v5

    :goto_4
    move v13, v6

    move v14, v13

    move v15, v14

    const/4 v7, 0x0

    goto :goto_6

    :catch_8
    move-exception v0

    move/from16 v16, v4

    move v11, v5

    move v13, v6

    move v14, v13

    move v15, v14

    const/4 v7, 0x0

    goto :goto_5

    :catch_9
    move-exception v0

    move/from16 v16, v4

    move v11, v5

    move v13, v6

    move v14, v13

    move v15, v14

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_5
    const/4 v10, 0x0

    :goto_6
    const/4 v12, 0x0

    .line 759
    :goto_7
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_8
    move/from16 v0, v16

    if-eq v11, v5, :cond_3

    .line 763
    new-instance v3, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;

    invoke-direct {v3, v9, v11, v12}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;-><init>(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;ILjava/lang/String;)V

    goto :goto_9

    .line 765
    :cond_3
    new-instance v3, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;

    invoke-direct {v3, v9, v10, v12}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;-><init>(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :goto_9
    invoke-virtual {v3, v13}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setNaviType(I)V

    .line 768
    invoke-virtual {v3, v14}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setImediateNavi(Z)V

    .line 769
    invoke-virtual {v3, v15}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setRouteSelectRef(I)V

    .line 770
    invoke-virtual {v3, v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setFullSceneSwitch(Z)V

    .line 771
    invoke-virtual {v3, v7}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setSpeechInfo(Lorg/json/JSONObject;)V

    .line 772
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    const-string v4, "StartNaviBean = %s"

    invoke-static {v2, v4, v0}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    invoke-direct {v1, v3}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->a(Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;)V

    return-void
.end method

.method public Z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 796
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 798
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 799
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->B()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 786
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "-?[0-9]+(\\.[0-9]+)?"

    .line 789
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 791
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public aA(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const-string p1, "oritention"

    const-string v0, "metre"

    .line 1435
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1437
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1439
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1440
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1441
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 1442
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x0

    .line 1443
    :goto_0
    array-length v0, v1

    if-ge p2, v0, :cond_0

    .line 1444
    aget-object v0, v1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0, v3, v4, p1}, Lcom/xiaopeng/speech/protocol/node/navi/a;->a(DI)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1448
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public aB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1458
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1460
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1461
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;

    move-result-object p2

    const/4 v0, 0x0

    .line 1462
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1463
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/a;

    .line 1464
    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/a;->a(Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1472
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1474
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1475
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;

    move-result-object p2

    const/4 v0, 0x0

    .line 1476
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1477
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/a;

    .line 1478
    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/a;->b(Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1486
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1488
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1489
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    .line 1490
    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->ah()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1497
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1499
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1500
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    .line 1501
    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->ai()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aF(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1508
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1510
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1511
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    .line 1512
    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->aj()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aG(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1519
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1521
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1522
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;

    move-result-object p2

    const/4 v0, 0x0

    .line 1523
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1524
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/a;

    .line 1525
    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/a;->c(Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aH(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1533
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1535
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1536
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    .line 1537
    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->ak()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1544
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1546
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1547
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    .line 1548
    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->al()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aJ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1555
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1557
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1558
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    .line 1559
    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->am()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1566
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1568
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1569
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    .line 1570
    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->an()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const-string p1, "index"

    .line 1578
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1580
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1581
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 1582
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1584
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1585
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/a;->b(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1591
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public aM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const-string p1, "pageId"

    .line 1598
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1600
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1601
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 1602
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1604
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1605
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/a;->c(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1611
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public aN(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const-string p1, "stationId"

    .line 1618
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1620
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1621
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1622
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1624
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1625
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1631
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public aO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1637
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1639
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1640
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->ao()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1647
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1649
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1650
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->ap()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aQ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1657
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1659
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1660
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->aq()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aR(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1667
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1669
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1670
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->ar()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1677
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1679
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1680
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->as()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aT(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1687
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1689
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1690
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->at()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aU(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1697
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1699
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1700
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->au()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1707
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1709
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1710
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->av()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1717
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1719
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1720
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->aw()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aX(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1728
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1730
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1731
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->ax()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aY(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1738
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1740
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1741
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->ay()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aZ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1748
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1750
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1751
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->az()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aa(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 806
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 808
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 809
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->D()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ab(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 816
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 818
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 819
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->M()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ac(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 826
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 828
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 829
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->N()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 836
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 838
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 839
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->O()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ae(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const-string p1, "mode"

    .line 846
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 852
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "pullUpNavi"

    .line 853
    invoke-virtual {v3, p2, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 854
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 855
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 858
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move p1, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 861
    :goto_1
    array-length p2, v0

    if-ge v2, p2, :cond_1

    .line 862
    aget-object p2, v0, v2

    check-cast p2, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {p2, v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/a;->a(ZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public af(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const-string p1, "mode"

    .line 869
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 875
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "pullUpNavi"

    .line 876
    invoke-virtual {v3, p2, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 877
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 878
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 881
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move p1, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 884
    :goto_1
    array-length p2, v0

    if-ge v2, p2, :cond_1

    .line 885
    aget-object p2, v0, v2

    check-cast p2, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {p2, v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/a;->b(ZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public ag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 892
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/b;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/b;

    move-result-object p1

    .line 893
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 895
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 896
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/a;->b(Lcom/xiaopeng/speech/protocol/node/navi/bean/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ah(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 903
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/d;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/d;

    move-result-object p1

    .line 904
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 906
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 907
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/a;->a(Lcom/xiaopeng/speech/protocol/node/navi/bean/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ai(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 914
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 916
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 917
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->P()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 924
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 926
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 927
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->Q()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ak(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 934
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/e;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/e;

    move-result-object p1

    .line 935
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 937
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 938
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/a;->a(Lcom/xiaopeng/speech/protocol/node/navi/bean/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public al(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 945
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 947
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 948
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/a;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public am(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 955
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 957
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 958
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/a;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public an(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 966
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/d;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/d;

    move-result-object p1

    .line 967
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 969
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 970
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/a;->b(Lcom/xiaopeng/speech/protocol/node/navi/bean/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ao(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 977
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/e;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/e;

    move-result-object p1

    .line 978
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 980
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 981
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/a;->b(Lcom/xiaopeng/speech/protocol/node/navi/bean/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1028
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/f;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/f;

    move-result-object p1

    .line 1029
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1031
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1032
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/a;->a(Lcom/xiaopeng/speech/protocol/node/navi/bean/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1039
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 1040
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;

    move-result-object p2

    if-nez p2, :cond_0

    const-string v0, "data is null"

    goto :goto_0

    .line 1041
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "NaviNode, pathBean =%s"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1043
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1044
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/a;->a(Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public ar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1051
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1053
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1054
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->Z()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public as(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1061
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1063
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1064
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->aa()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public at(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1071
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1073
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1074
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->ab()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public au(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1081
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1083
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1084
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->ac()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public av(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1254
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1256
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1257
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->ad()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1380
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1382
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1383
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->ae()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1394
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1396
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1397
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->af()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1404
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1406
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1407
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->ag()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public az(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const-string p1, "level"

    .line 1414
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1416
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1418
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1419
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1420
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x0

    .line 1421
    :goto_0
    array-length v1, v0

    if-ge p2, v1, :cond_0

    .line 1422
    aget-object v1, v0, p2

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/a;->a(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1426
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ba(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1758
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1760
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1761
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->aA()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1768
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1770
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1771
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->aB()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1778
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1780
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1781
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->aC()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1788
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1790
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1791
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->aD()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public be(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1798
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1800
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1801
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->aE()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1808
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1810
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1811
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->aF()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1818
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1820
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1821
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->aG()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bh(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1828
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1830
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1831
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->aI()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1838
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1840
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1841
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->aH()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1848
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1850
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1851
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->aJ()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1858
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1860
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1861
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->aK()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1868
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1870
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1871
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->aL()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1878
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1880
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1881
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->aM()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1888
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 1889
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1890
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_3

    .line 1893
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1894
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1897
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 1898
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1899
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "triggerApi"

    .line 1900
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "dialogueInfo"

    .line 1901
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "soundArea"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1904
    :cond_0
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1902
    :cond_1
    :goto_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1910
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1912
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNaviSearch:searchInfo:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",speechInfo:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "NaviNode"

    invoke-static {v2, p2}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1913
    :goto_2
    array-length v2, p1

    if-ge p2, v2, :cond_3

    .line 1914
    aget-object v2, p1, p2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/navi/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public bo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1921
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 1922
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1923
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_3

    .line 1926
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1927
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1930
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 1931
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1932
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "triggerApi"

    .line 1933
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "dialogueInfo"

    .line 1934
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "soundArea"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1937
    :cond_0
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1935
    :cond_1
    :goto_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1943
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1945
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNaviPerformImmediate:searchInfo:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",speechInfo:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "NaviNode"

    invoke-static {v2, p2}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1946
    :goto_2
    array-length v2, p1

    if-ge p2, v2, :cond_3

    .line 1947
    aget-object v2, p1, p2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/navi/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public bp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1954
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 1955
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1956
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_3

    .line 1959
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1960
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1963
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 1964
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1965
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "triggerApi"

    .line 1966
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "dialogueInfo"

    .line 1967
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "soundArea"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1970
    :cond_0
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1968
    :cond_1
    :goto_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1976
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1978
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNaviSearchOnWay:searchInfo:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",speechInfo:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "NaviNode"

    invoke-static {v2, p2}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1979
    :goto_2
    array-length v2, p1

    if-ge p2, v2, :cond_3

    .line 1980
    aget-object v2, p1, p2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/navi/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public bq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const-string p1, "idList"

    .line 1987
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    .line 1988
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1992
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1993
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1995
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 1996
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1997
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "triggerApi"

    .line 1998
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "dialogueInfo"

    .line 1999
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "soundArea"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 2001
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2002
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 2003
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    move v6, v2

    .line 2004
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 2005
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2000
    :cond_2
    :goto_2
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2012
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2014
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onNaviSearchFilter:speechInfo:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NaviNode"

    invoke-static {p2, p1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2015
    :goto_3
    array-length p1, v0

    if-ge v2, p1, :cond_4

    .line 2016
    aget-object p1, v0, v2

    check-cast p1, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v3, p2}, Lcom/xiaopeng/speech/protocol/node/navi/a;->a([Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public br(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 2242
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 2243
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2244
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_3

    .line 2247
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2248
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2251
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 2252
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2253
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "triggerApi"

    .line 2254
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "dialogueInfo"

    .line 2255
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "soundArea"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 2258
    :cond_0
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 2256
    :cond_1
    :goto_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2264
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2266
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNaviChargingSearch:searchInfo:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",speechInfo:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "NaviNode"

    invoke-static {v2, p2}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 2267
    :goto_2
    array-length v2, p1

    if-ge p2, v2, :cond_3

    .line 2268
    aget-object v2, p1, p2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/navi/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public bs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 2281
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 2282
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2283
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_3

    .line 2286
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2287
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2290
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 2291
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2292
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "triggerApi"

    .line 2293
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "dialogueInfo"

    .line 2294
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "soundArea"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 2297
    :cond_0
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 2295
    :cond_1
    :goto_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2303
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2305
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNaviChargingSearch:searchInfo:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",speechInfo:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "NaviNode"

    invoke-static {v2, p2}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 2306
    :goto_2
    array-length v2, p1

    if-ge p2, v2, :cond_3

    .line 2307
    aget-object v2, p1, p2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/navi/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public bt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const-string p1, "listType"

    .line 2319
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    .line 2320
    sget-object v1, Lcom/xiaopeng/speech/protocol/bean/g;->ROUTE_LIST:Lcom/xiaopeng/speech/protocol/bean/g;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/bean/g;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 2323
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2324
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2326
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2327
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2331
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2333
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onNaviListCancel:listType:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NaviNode"

    invoke-static {p2, p1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2334
    :goto_1
    array-length p2, v0

    if-ge p1, p2, :cond_1

    .line 2335
    aget-object p2, v0, p1

    check-cast p2, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {p2, v1}, Lcom/xiaopeng/speech/protocol/node/navi/a;->d(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 93
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 94
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->c()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 103
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 104
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->d()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 111
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 113
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 114
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->e()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 121
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 123
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 124
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->f()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 133
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 134
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->g()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 143
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 144
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->h()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->i()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->j()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->k()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 182
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->l()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->m()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 204
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 205
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->n()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 212
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 214
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 215
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->o()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 222
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 224
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 225
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->p()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 232
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 234
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 235
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->t()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 242
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 244
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 245
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->u()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 252
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 254
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 255
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->v()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 262
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 264
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 265
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->w()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 272
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 274
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 275
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->x()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 282
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 284
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 285
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->z()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 292
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 294
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 295
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->A()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 302
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 304
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 305
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->C()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 312
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 314
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 315
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/a;->E()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
