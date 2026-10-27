.class public Lakp;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lakp$b;,
        Lakp$a;
    }
.end annotation


# static fields
.field public static final a:Lakf;


# instance fields
.field b:Lakg;

.field c:Lakg;

.field d:Lakg;

.field e:Lakg;

.field f:Lakf;

.field g:Lakf;

.field h:Lakf;

.field i:Lakf;

.field j:Laki;

.field k:Laki;

.field l:Laki;

.field m:Laki;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 565
    new-instance v0, Lakn;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lakn;-><init>(F)V

    sput-object v0, Lakp;->a:Lakf;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    invoke-static {}, Lakl;->a()Lakg;

    move-result-object v0

    iput-object v0, p0, Lakp;->b:Lakg;

    .line 600
    invoke-static {}, Lakl;->a()Lakg;

    move-result-object v0

    iput-object v0, p0, Lakp;->c:Lakg;

    .line 601
    invoke-static {}, Lakl;->a()Lakg;

    move-result-object v0

    iput-object v0, p0, Lakp;->d:Lakg;

    .line 602
    invoke-static {}, Lakl;->a()Lakg;

    move-result-object v0

    iput-object v0, p0, Lakp;->e:Lakg;

    .line 604
    new-instance v0, Lakd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lakd;-><init>(F)V

    iput-object v0, p0, Lakp;->f:Lakf;

    .line 605
    new-instance v0, Lakd;

    invoke-direct {v0, v1}, Lakd;-><init>(F)V

    iput-object v0, p0, Lakp;->g:Lakf;

    .line 606
    new-instance v0, Lakd;

    invoke-direct {v0, v1}, Lakd;-><init>(F)V

    iput-object v0, p0, Lakp;->h:Lakf;

    .line 607
    new-instance v0, Lakd;

    invoke-direct {v0, v1}, Lakd;-><init>(F)V

    iput-object v0, p0, Lakp;->i:Lakf;

    .line 609
    invoke-static {}, Lakl;->b()Laki;

    move-result-object v0

    iput-object v0, p0, Lakp;->j:Laki;

    .line 610
    invoke-static {}, Lakl;->b()Laki;

    move-result-object v0

    iput-object v0, p0, Lakp;->k:Laki;

    .line 611
    invoke-static {}, Lakl;->b()Laki;

    move-result-object v0

    iput-object v0, p0, Lakp;->l:Laki;

    .line 612
    invoke-static {}, Lakl;->b()Laki;

    move-result-object v0

    iput-object v0, p0, Lakp;->m:Laki;

    return-void
.end method

.method private constructor <init>(Lakp$a;)V
    .locals 1

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    invoke-static {p1}, Lakp$a;->a(Lakp$a;)Lakg;

    move-result-object v0

    iput-object v0, p0, Lakp;->b:Lakg;

    .line 582
    invoke-static {p1}, Lakp$a;->b(Lakp$a;)Lakg;

    move-result-object v0

    iput-object v0, p0, Lakp;->c:Lakg;

    .line 583
    invoke-static {p1}, Lakp$a;->c(Lakp$a;)Lakg;

    move-result-object v0

    iput-object v0, p0, Lakp;->d:Lakg;

    .line 584
    invoke-static {p1}, Lakp$a;->d(Lakp$a;)Lakg;

    move-result-object v0

    iput-object v0, p0, Lakp;->e:Lakg;

    .line 586
    invoke-static {p1}, Lakp$a;->e(Lakp$a;)Lakf;

    move-result-object v0

    iput-object v0, p0, Lakp;->f:Lakf;

    .line 587
    invoke-static {p1}, Lakp$a;->f(Lakp$a;)Lakf;

    move-result-object v0

    iput-object v0, p0, Lakp;->g:Lakf;

    .line 588
    invoke-static {p1}, Lakp$a;->g(Lakp$a;)Lakf;

    move-result-object v0

    iput-object v0, p0, Lakp;->h:Lakf;

    .line 589
    invoke-static {p1}, Lakp$a;->h(Lakp$a;)Lakf;

    move-result-object v0

    iput-object v0, p0, Lakp;->i:Lakf;

    .line 591
    invoke-static {p1}, Lakp$a;->i(Lakp$a;)Laki;

    move-result-object v0

    iput-object v0, p0, Lakp;->j:Laki;

    .line 592
    invoke-static {p1}, Lakp$a;->j(Lakp$a;)Laki;

    move-result-object v0

    iput-object v0, p0, Lakp;->k:Laki;

    .line 593
    invoke-static {p1}, Lakp$a;->k(Lakp$a;)Laki;

    move-result-object v0

    iput-object v0, p0, Lakp;->l:Laki;

    .line 594
    invoke-static {p1}, Lakp$a;->l(Lakp$a;)Laki;

    move-result-object p1

    iput-object p1, p0, Lakp;->m:Laki;

    return-void
.end method

.method synthetic constructor <init>(Lakp$a;Lakp$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lakp;-><init>(Lakp$a;)V

    return-void
.end method

.method private static a(Landroid/content/res/TypedArray;ILakf;)Lakf;
    .locals 2

    .line 547
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 552
    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 555
    new-instance p2, Lakd;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 556
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Lakd;-><init>(F)V

    return-object p2

    .line 557
    :cond_1
    iget p0, p1, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    .line 558
    new-instance p0, Lakn;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lakn;-><init>(F)V

    return-object p0

    :cond_2
    return-object p2
.end method

.method public static a()Lakp$a;
    .locals 1

    .line 435
    new-instance v0, Lakp$a;

    invoke-direct {v0}, Lakp$a;-><init>()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;II)Lakp$a;
    .locals 1

    const/4 v0, 0x0

    .line 480
    invoke-static {p0, p1, p2, v0}, Lakp;->a(Landroid/content/Context;III)Lakp$a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;III)Lakp$a;
    .locals 1

    .line 489
    new-instance v0, Lakd;

    int-to-float p3, p3

    invoke-direct {v0, p3}, Lakd;-><init>(F)V

    invoke-static {p0, p1, p2, v0}, Lakp;->a(Landroid/content/Context;IILakf;)Lakp$a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;IILakf;)Lakp$a;
    .locals 6

    if-eqz p2, :cond_0

    .line 504
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move p1, p2

    move-object p0, v0

    .line 508
    :cond_0
    sget-object p2, Laiv$l;->ShapeAppearance:[I

    .line 509
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 512
    :try_start_0
    sget p1, Laiv$l;->ShapeAppearance_cornerFamily:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 513
    sget p2, Laiv$l;->ShapeAppearance_cornerFamilyTopLeft:I

    .line 514
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 515
    sget v0, Laiv$l;->ShapeAppearance_cornerFamilyTopRight:I

    .line 516
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 517
    sget v1, Laiv$l;->ShapeAppearance_cornerFamilyBottomRight:I

    .line 518
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 519
    sget v2, Laiv$l;->ShapeAppearance_cornerFamilyBottomLeft:I

    .line 520
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 522
    sget v2, Laiv$l;->ShapeAppearance_cornerSize:I

    .line 523
    invoke-static {p0, v2, p3}, Lakp;->a(Landroid/content/res/TypedArray;ILakf;)Lakf;

    move-result-object p3

    .line 525
    sget v2, Laiv$l;->ShapeAppearance_cornerSizeTopLeft:I

    .line 526
    invoke-static {p0, v2, p3}, Lakp;->a(Landroid/content/res/TypedArray;ILakf;)Lakf;

    move-result-object v2

    .line 527
    sget v3, Laiv$l;->ShapeAppearance_cornerSizeTopRight:I

    .line 528
    invoke-static {p0, v3, p3}, Lakp;->a(Landroid/content/res/TypedArray;ILakf;)Lakf;

    move-result-object v3

    .line 529
    sget v4, Laiv$l;->ShapeAppearance_cornerSizeBottomRight:I

    .line 530
    invoke-static {p0, v4, p3}, Lakp;->a(Landroid/content/res/TypedArray;ILakf;)Lakf;

    move-result-object v4

    .line 531
    sget v5, Laiv$l;->ShapeAppearance_cornerSizeBottomLeft:I

    .line 532
    invoke-static {p0, v5, p3}, Lakp;->a(Landroid/content/res/TypedArray;ILakf;)Lakf;

    move-result-object p3

    .line 534
    new-instance v5, Lakp$a;

    invoke-direct {v5}, Lakp$a;-><init>()V

    .line 535
    invoke-virtual {v5, p2, v2}, Lakp$a;->a(ILakf;)Lakp$a;

    move-result-object p2

    .line 536
    invoke-virtual {p2, v0, v3}, Lakp$a;->b(ILakf;)Lakp$a;

    move-result-object p2

    .line 537
    invoke-virtual {p2, v1, v4}, Lakp$a;->c(ILakf;)Lakp$a;

    move-result-object p2

    .line 538
    invoke-virtual {p2, p1, p3}, Lakp$a;->d(ILakf;)Lakp$a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 541
    throw p1
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lakp$a;
    .locals 1

    const/4 v0, 0x0

    .line 444
    invoke-static {p0, p1, p2, p3, v0}, Lakp;->a(Landroid/content/Context;Landroid/util/AttributeSet;III)Lakp$a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;III)Lakp$a;
    .locals 1

    .line 454
    new-instance v0, Lakd;

    int-to-float p4, p4

    invoke-direct {v0, p4}, Lakd;-><init>(F)V

    invoke-static {p0, p1, p2, p3, v0}, Lakp;->a(Landroid/content/Context;Landroid/util/AttributeSet;IILakf;)Lakp$a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;IILakf;)Lakp$a;
    .locals 1

    .line 465
    sget-object v0, Laiv$l;->MaterialShape:[I

    .line 466
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 468
    sget p2, Laiv$l;->MaterialShape_shapeAppearance:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 469
    sget v0, Laiv$l;->MaterialShape_shapeAppearanceOverlay:I

    .line 470
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 471
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 472
    invoke-static {p0, p2, p3, p4}, Lakp;->a(Landroid/content/Context;IILakf;)Lakp$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(F)Lakp;
    .locals 1

    .line 747
    invoke-virtual {p0}, Lakp;->n()Lakp$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lakp$a;->a(F)Lakp$a;

    move-result-object p1

    invoke-virtual {p1}, Lakp$a;->a()Lakp;

    move-result-object p1

    return-object p1
.end method

.method public a(Lakf;)Lakp;
    .locals 1

    .line 752
    invoke-virtual {p0}, Lakp;->n()Lakp$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lakp$a;->a(Lakf;)Lakp$a;

    move-result-object p1

    invoke-virtual {p1}, Lakp$a;->a()Lakp;

    move-result-object p1

    return-object p1
.end method

.method public a(Lakp$b;)Lakp;
    .locals 2

    .line 775
    invoke-virtual {p0}, Lakp;->n()Lakp$a;

    move-result-object v0

    .line 776
    invoke-virtual {p0}, Lakp;->f()Lakf;

    move-result-object v1

    invoke-interface {p1, v1}, Lakp$b;->a(Lakf;)Lakf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lakp$a;->b(Lakf;)Lakp$a;

    move-result-object v0

    .line 777
    invoke-virtual {p0}, Lakp;->g()Lakf;

    move-result-object v1

    invoke-interface {p1, v1}, Lakp$b;->a(Lakf;)Lakf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lakp$a;->c(Lakf;)Lakp$a;

    move-result-object v0

    .line 778
    invoke-virtual {p0}, Lakp;->i()Lakf;

    move-result-object v1

    invoke-interface {p1, v1}, Lakp$b;->a(Lakf;)Lakf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lakp$a;->e(Lakf;)Lakp$a;

    move-result-object v0

    .line 779
    invoke-virtual {p0}, Lakp;->h()Lakf;

    move-result-object v1

    invoke-interface {p1, v1}, Lakp$b;->a(Lakf;)Lakf;

    move-result-object p1

    invoke-virtual {v0, p1}, Lakp$a;->d(Lakf;)Lakp$a;

    move-result-object p1

    .line 780
    invoke-virtual {p1}, Lakp$a;->a()Lakp;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/graphics/RectF;)Z
    .locals 5

    .line 791
    iget-object v0, p0, Lakp;->m:Laki;

    .line 792
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Laki;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lakp;->k:Laki;

    .line 793
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Laki;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lakp;->j:Laki;

    .line 794
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Laki;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lakp;->l:Laki;

    .line 795
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Laki;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 797
    :goto_0
    iget-object v3, p0, Lakp;->f:Lakf;

    invoke-interface {v3, p1}, Lakf;->a(Landroid/graphics/RectF;)F

    move-result v3

    .line 799
    iget-object v4, p0, Lakp;->g:Lakf;

    .line 800
    invoke-interface {v4, p1}, Lakf;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lakp;->i:Lakf;

    .line 801
    invoke-interface {v4, p1}, Lakf;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lakp;->h:Lakf;

    .line 802
    invoke-interface {v4, p1}, Lakf;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v3

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 804
    :goto_1
    iget-object v3, p0, Lakp;->c:Lakg;

    instance-of v3, v3, Lako;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lakp;->b:Lakg;

    instance-of v3, v3, Lako;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lakp;->d:Lakg;

    instance-of v3, v3, Lako;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lakp;->e:Lakg;

    instance-of v3, v3, Lako;

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    return v1
.end method

.method public b()Lakg;
    .locals 1

    .line 622
    iget-object v0, p0, Lakp;->b:Lakg;

    return-object v0
.end method

.method public c()Lakg;
    .locals 1

    .line 632
    iget-object v0, p0, Lakp;->c:Lakg;

    return-object v0
.end method

.method public d()Lakg;
    .locals 1

    .line 642
    iget-object v0, p0, Lakp;->d:Lakg;

    return-object v0
.end method

.method public e()Lakg;
    .locals 1

    .line 652
    iget-object v0, p0, Lakp;->e:Lakg;

    return-object v0
.end method

.method public f()Lakf;
    .locals 1

    .line 662
    iget-object v0, p0, Lakp;->f:Lakf;

    return-object v0
.end method

.method public g()Lakf;
    .locals 1

    .line 672
    iget-object v0, p0, Lakp;->g:Lakf;

    return-object v0
.end method

.method public h()Lakf;
    .locals 1

    .line 682
    iget-object v0, p0, Lakp;->h:Lakf;

    return-object v0
.end method

.method public i()Lakf;
    .locals 1

    .line 692
    iget-object v0, p0, Lakp;->i:Lakf;

    return-object v0
.end method

.method public j()Laki;
    .locals 1

    .line 702
    iget-object v0, p0, Lakp;->m:Laki;

    return-object v0
.end method

.method public k()Laki;
    .locals 1

    .line 712
    iget-object v0, p0, Lakp;->j:Laki;

    return-object v0
.end method

.method public l()Laki;
    .locals 1

    .line 722
    iget-object v0, p0, Lakp;->k:Laki;

    return-object v0
.end method

.method public m()Laki;
    .locals 1

    .line 732
    iget-object v0, p0, Lakp;->l:Laki;

    return-object v0
.end method

.method public n()Lakp$a;
    .locals 1

    .line 738
    new-instance v0, Lakp$a;

    invoke-direct {v0, p0}, Lakp$a;-><init>(Lakp;)V

    return-object v0
.end method
