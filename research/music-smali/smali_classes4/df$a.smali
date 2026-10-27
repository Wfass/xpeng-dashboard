.class Ldf$a;
.super Ljava/lang/Object;
.source "ViewTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:Lcx;

.field c:I

.field d:I

.field e:Lao;

.field f:Ldg;

.field g:Landroid/view/animation/Interpolator;

.field h:Z

.field i:F

.field j:F

.field k:J

.field l:Landroid/graphics/Rect;

.field m:Z

.field private final n:I

.field private final o:I


# direct methods
.method constructor <init>(Ldg;Lcx;IIILandroid/view/animation/Interpolator;II)V
    .locals 2

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    new-instance v0, Lao;

    invoke-direct {v0}, Lao;-><init>()V

    iput-object v0, p0, Ldf$a;->e:Lao;

    const/4 v0, 0x0

    .line 349
    iput-boolean v0, p0, Ldf$a;->h:Z

    .line 353
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ldf$a;->l:Landroid/graphics/Rect;

    .line 354
    iput-boolean v0, p0, Ldf$a;->m:Z

    .line 360
    iput-object p1, p0, Ldf$a;->f:Ldg;

    .line 361
    iput-object p2, p0, Ldf$a;->b:Lcx;

    .line 362
    iput p3, p0, Ldf$a;->c:I

    .line 363
    iput p4, p0, Ldf$a;->d:I

    .line 364
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Ldf$a;->a:J

    .line 365
    iget-wide p1, p0, Ldf$a;->a:J

    iput-wide p1, p0, Ldf$a;->k:J

    .line 366
    iget-object p1, p0, Ldf$a;->f:Ldg;

    invoke-virtual {p1, p0}, Ldg;->a(Ldf$a;)V

    .line 367
    iput-object p6, p0, Ldf$a;->g:Landroid/view/animation/Interpolator;

    .line 368
    iput p7, p0, Ldf$a;->n:I

    .line 369
    iput p8, p0, Ldf$a;->o:I

    const/4 p1, 0x3

    if-ne p5, p1, :cond_0

    const/4 p1, 0x1

    .line 371
    iput-boolean p1, p0, Ldf$a;->m:Z

    :cond_0
    if-nez p3, :cond_1

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    int-to-float p2, p3

    div-float/2addr p1, p2

    .line 373
    :goto_0
    iput p1, p0, Ldf$a;->j:F

    .line 374
    invoke-virtual {p0}, Ldf$a;->a()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 387
    iget-boolean v0, p0, Ldf$a;->h:Z

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Ldf$a;->b()V

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {p0}, Ldf$a;->c()V

    :goto_0
    return-void
.end method

.method public a(IFF)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    iget-object p1, p0, Ldf$a;->b:Lcx;

    invoke-virtual {p1}, Lcx;->g()Landroid/view/View;

    move-result-object p1

    .line 461
    iget-object v1, p0, Ldf$a;->l:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 462
    iget-object p1, p0, Ldf$a;->l:Landroid/graphics/Rect;

    float-to-int p2, p2

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_1

    .line 463
    iget-boolean p1, p0, Ldf$a;->h:Z

    if-nez p1, :cond_1

    .line 464
    invoke-virtual {p0, v0}, Ldf$a;->a(Z)V

    :cond_1
    :goto_0
    return-void

    .line 455
    :cond_2
    iget-boolean p1, p0, Ldf$a;->h:Z

    if-nez p1, :cond_3

    .line 456
    invoke-virtual {p0, v0}, Ldf$a;->a(Z)V

    :cond_3
    return-void
.end method

.method a(Z)V
    .locals 2

    .line 378
    iput-boolean p1, p0, Ldf$a;->h:Z

    .line 379
    iget-boolean p1, p0, Ldf$a;->h:Z

    if-eqz p1, :cond_1

    iget p1, p0, Ldf$a;->d:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float p1, p1

    div-float p1, v0, p1

    .line 380
    :goto_0
    iput p1, p0, Ldf$a;->j:F

    .line 382
    :cond_1
    iget-object p1, p0, Ldf$a;->f:Ldg;

    invoke-virtual {p1}, Ldg;->b()V

    .line 383
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Ldf$a;->k:J

    return-void
.end method

.method b()V
    .locals 7

    .line 395
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 396
    iget-wide v0, p0, Ldf$a;->k:J

    sub-long v0, v3, v0

    .line 397
    iput-wide v3, p0, Ldf$a;->k:J

    .line 399
    iget v2, p0, Ldf$a;->i:F

    long-to-double v0, v0

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v0, v5

    double-to-float v0, v0

    iget v1, p0, Ldf$a;->j:F

    mul-float/2addr v0, v1

    sub-float/2addr v2, v0

    iput v2, p0, Ldf$a;->i:F

    .line 400
    iget v0, p0, Ldf$a;->i:F

    const/4 v6, 0x0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_0

    .line 401
    iput v6, p0, Ldf$a;->i:F

    .line 404
    :cond_0
    iget-object v0, p0, Ldf$a;->g:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    iget v0, p0, Ldf$a;->i:F

    goto :goto_0

    :cond_1
    iget v1, p0, Ldf$a;->i:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    :goto_0
    move v2, v0

    .line 405
    iget-object v0, p0, Ldf$a;->b:Lcx;

    iget-object v1, v0, Lcx;->b:Landroid/view/View;

    iget-object v5, p0, Ldf$a;->e:Lao;

    invoke-virtual/range {v0 .. v5}, Lcx;->a(Landroid/view/View;FJLao;)Z

    move-result v0

    .line 407
    iget v1, p0, Ldf$a;->i:F

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_4

    .line 408
    iget v1, p0, Ldf$a;->n:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 409
    iget-object v1, p0, Ldf$a;->b:Lcx;

    invoke-virtual {v1}, Lcx;->g()Landroid/view/View;

    move-result-object v1

    iget v3, p0, Ldf$a;->n:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 411
    :cond_2
    iget v1, p0, Ldf$a;->o:I

    if-eq v1, v2, :cond_3

    .line 412
    iget-object v1, p0, Ldf$a;->b:Lcx;

    invoke-virtual {v1}, Lcx;->g()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Ldf$a;->o:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 414
    :cond_3
    iget-object v1, p0, Ldf$a;->f:Ldg;

    invoke-virtual {v1, p0}, Ldg;->b(Ldf$a;)V

    .line 416
    :cond_4
    iget v1, p0, Ldf$a;->i:F

    cmpl-float v1, v1, v6

    if-gtz v1, :cond_5

    if-eqz v0, :cond_6

    .line 417
    :cond_5
    iget-object v0, p0, Ldf$a;->f:Ldg;

    invoke-virtual {v0}, Ldg;->b()V

    :cond_6
    return-void
.end method

.method c()V
    .locals 7

    .line 423
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 424
    iget-wide v0, p0, Ldf$a;->k:J

    sub-long v0, v3, v0

    .line 425
    iput-wide v3, p0, Ldf$a;->k:J

    .line 427
    iget v2, p0, Ldf$a;->i:F

    long-to-double v0, v0

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v0, v5

    double-to-float v0, v0

    iget v1, p0, Ldf$a;->j:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iput v2, p0, Ldf$a;->i:F

    .line 428
    iget v0, p0, Ldf$a;->i:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_0

    .line 429
    iput v6, p0, Ldf$a;->i:F

    .line 432
    :cond_0
    iget-object v0, p0, Ldf$a;->g:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    iget v0, p0, Ldf$a;->i:F

    goto :goto_0

    :cond_1
    iget v1, p0, Ldf$a;->i:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    :goto_0
    move v2, v0

    .line 433
    iget-object v0, p0, Ldf$a;->b:Lcx;

    iget-object v1, v0, Lcx;->b:Landroid/view/View;

    iget-object v5, p0, Ldf$a;->e:Lao;

    invoke-virtual/range {v0 .. v5}, Lcx;->a(Landroid/view/View;FJLao;)Z

    move-result v0

    .line 436
    iget v1, p0, Ldf$a;->i:F

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_4

    .line 437
    iget v1, p0, Ldf$a;->n:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 438
    iget-object v1, p0, Ldf$a;->b:Lcx;

    invoke-virtual {v1}, Lcx;->g()Landroid/view/View;

    move-result-object v1

    iget v3, p0, Ldf$a;->n:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 440
    :cond_2
    iget v1, p0, Ldf$a;->o:I

    if-eq v1, v2, :cond_3

    .line 441
    iget-object v1, p0, Ldf$a;->b:Lcx;

    invoke-virtual {v1}, Lcx;->g()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Ldf$a;->o:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 443
    :cond_3
    iget-boolean v1, p0, Ldf$a;->m:Z

    if-nez v1, :cond_4

    .line 444
    iget-object v1, p0, Ldf$a;->f:Ldg;

    invoke-virtual {v1, p0}, Ldg;->b(Ldf$a;)V

    .line 447
    :cond_4
    iget v1, p0, Ldf$a;->i:F

    cmpg-float v1, v1, v6

    if-ltz v1, :cond_5

    if-eqz v0, :cond_6

    .line 448
    :cond_5
    iget-object v0, p0, Ldf$a;->f:Ldg;

    invoke-virtual {v0}, Ldg;->b()V

    :cond_6
    return-void
.end method
