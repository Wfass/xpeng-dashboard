.class Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/drawable/Drawable$Callback;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:[I

.field private k:I

.field private l:F

.field private m:F

.field private n:F

.field private o:Z

.field private p:Landroid/graphics/Path;

.field private q:F

.field private r:D

.field private s:I

.field private t:I

.field private u:I

.field private final v:Landroid/graphics/Paint;

.field private w:I

.field private x:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 2

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->a:Landroid/graphics/RectF;

    .line 452
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->b:Landroid/graphics/Paint;

    .line 453
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->c:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 457
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->e:F

    .line 458
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->f:F

    .line 459
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->g:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 460
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->h:F

    const/high16 v0, 0x40200000    # 2.5f

    .line 461
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->i:F

    .line 478
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->v:Landroid/graphics/Paint;

    .line 483
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->d:Landroid/graphics/drawable/Drawable$Callback;

    .line 485
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 486
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 487
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 489
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->c:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 490
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 7

    .line 534
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->o:Z

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->p:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->p:Landroid/graphics/Path;

    .line 537
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->p:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_0

    .line 539
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 544
    :goto_0
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->i:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->q:F

    mul-float/2addr v0, v1

    .line 545
    iget-wide v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->r:D

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v1, v5

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    float-to-double v5, v5

    add-double/2addr v1, v5

    double-to-float v1, v1

    .line 546
    iget-wide v5, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->r:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v5, v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v5, v2

    double-to-float v2, v5

    .line 552
    iget-object v3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->p:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 553
    iget-object v3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->p:Landroid/graphics/Path;

    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->s:I

    int-to-float v5, v5

    iget v6, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->q:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 554
    iget-object v3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->p:Landroid/graphics/Path;

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->s:I

    int-to-float v4, v4

    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->q:F

    mul-float/2addr v4, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    iget v6, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->t:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 556
    iget-object v3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->p:Landroid/graphics/Path;

    sub-float/2addr v1, v0

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 557
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->p:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 559
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-float/2addr p2, p3

    const/high16 p3, 0x40a00000    # 5.0f

    sub-float/2addr p2, p3

    .line 560
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p3

    .line 561
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p4

    .line 560
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 562
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->p:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private n()I
    .locals 2

    .line 605
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->k:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->j:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method private o()V
    .locals 2

    .line 772
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->d:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->j:[I

    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->n()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public a(D)V
    .locals 0

    .line 715
    iput-wide p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->r:D

    return-void
.end method

.method public a(F)V
    .locals 1

    .line 639
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->h:F

    .line 640
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 641
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->o()V

    return-void
.end method

.method public a(FF)V
    .locals 0

    float-to-int p1, p1

    .line 504
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->s:I

    float-to-int p1, p2

    .line 505
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->t:I

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 494
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->w:I

    return-void
.end method

.method public a(II)V
    .locals 4

    .line 695
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    .line 697
    iget-wide v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->r:D

    const-wide/16 v2, 0x0

    cmpg-double p2, v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    if-lez p2, :cond_1

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p1, v2

    float-to-double p1, p1

    sub-double/2addr p1, v0

    goto :goto_1

    .line 698
    :cond_1
    :goto_0
    iget p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->h:F

    div-float/2addr p1, v2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    :goto_1
    double-to-float p1, p1

    .line 702
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->i:F

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8

    .line 512
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->a:Landroid/graphics/RectF;

    .line 513
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 514
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->i:F

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 516
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->e:F

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->g:F

    add-float/2addr v0, v2

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v6, v0, v3

    .line 517
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->f:F

    add-float/2addr v0, v2

    mul-float/2addr v0, v3

    sub-float v7, v0, v6

    .line 520
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->b:Landroid/graphics/Paint;

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->x:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 521
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->b:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    move v2, v6

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 523
    invoke-direct {p0, p1, v6, v7, p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    .line 525
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->u:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    .line 526
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->v:Landroid/graphics/Paint;

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->w:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 527
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->v:Landroid/graphics/Paint;

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->u:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 528
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 618
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->o()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 726
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->o:Z

    if-eq v0, p1, :cond_0

    .line 727
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->o:Z

    .line 728
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->o()V

    :cond_0
    return-void
.end method

.method public a([I)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->j:[I

    const/4 p1, 0x0

    .line 574
    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->c(I)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 613
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->n()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->c(I)V

    return-void
.end method

.method public b(F)V
    .locals 0

    .line 651
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->e:F

    .line 652
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->o()V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 585
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->x:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 632
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->u:I

    return v0
.end method

.method public c(F)V
    .locals 0

    .line 674
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->f:F

    .line 675
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->o()V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 593
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->k:I

    .line 594
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->j:[I

    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->k:I

    aget p1, p1, v0

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->x:I

    return-void
.end method

.method public d()F
    .locals 1

    .line 646
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->h:F

    return v0
.end method

.method public d(F)V
    .locals 0

    .line 685
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->g:F

    .line 686
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->o()V

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 625
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->u:I

    return-void
.end method

.method public e()F
    .locals 1

    .line 657
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->e:F

    return v0
.end method

.method public e(F)V
    .locals 1

    .line 736
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->q:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 737
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->q:F

    .line 738
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->o()V

    :cond_0
    return-void
.end method

.method public f()F
    .locals 1

    .line 661
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->l:F

    return v0
.end method

.method public g()F
    .locals 1

    .line 665
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->m:F

    return v0
.end method

.method public h()I
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->j:[I

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->k:I

    aget v0, v0, v1

    return v0
.end method

.method public i()F
    .locals 1

    .line 680
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->f:F

    return v0
.end method

.method public j()D
    .locals 2

    .line 719
    iget-wide v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->r:D

    return-wide v0
.end method

.method public k()F
    .locals 1

    .line 746
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->n:F

    return v0
.end method

.method public l()V
    .locals 1

    .line 754
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->e:F

    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->l:F

    .line 755
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->f:F

    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->m:F

    .line 756
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->g:F

    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->n:F

    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x0

    .line 763
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->l:F

    .line 764
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->m:F

    .line 765
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->n:F

    .line 766
    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->b(F)V

    .line 767
    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->c(F)V

    .line 768
    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->d(F)V

    return-void
.end method
