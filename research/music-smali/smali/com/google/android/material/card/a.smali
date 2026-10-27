.class Lcom/google/android/material/card/a;
.super Ljava/lang/Object;
.source "MaterialCardViewHelper.java"


# static fields
.field private static final a:[I

.field private static final b:D


# instance fields
.field private final c:Lcom/google/android/material/card/MaterialCardView;

.field private final d:Landroid/graphics/Rect;

.field private final e:Lakk;

.field private final f:Lakk;

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/content/res/ColorStateList;

.field private m:Landroid/content/res/ColorStateList;

.field private n:Lakp;

.field private o:Landroid/content/res/ColorStateList;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/graphics/drawable/LayerDrawable;

.field private r:Lakk;

.field private s:Lakk;

.field private t:Z

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 61
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/card/a;->a:[I

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/card/a;->b:D

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/card/a;->d:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/google/android/material/card/a;->t:Z

    .line 123
    iput-object p1, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 124
    new-instance v0, Lakk;

    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lakk;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/google/android/material/card/a;->e:Lakk;

    .line 125
    iget-object p4, p0, Lcom/google/android/material/card/a;->e:Lakk;

    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p4, v0}, Lakk;->a(Landroid/content/Context;)V

    .line 126
    iget-object p4, p0, Lcom/google/android/material/card/a;->e:Lakk;

    const v0, -0xbbbbbc

    invoke-virtual {p4, v0}, Lakk;->F(I)V

    .line 127
    iget-object p4, p0, Lcom/google/android/material/card/a;->e:Lakk;

    .line 128
    invoke-virtual {p4}, Lakk;->M()Lakp;

    move-result-object p4

    invoke-virtual {p4}, Lakp;->n()Lakp$a;

    move-result-object p4

    .line 131
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Laiv$l;->CardView:[I

    sget v1, Laiv$k;->CardView:I

    .line 132
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 133
    sget p2, Laiv$l;->CardView_cardCornerRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 135
    sget p2, Laiv$l;->CardView_cardCornerRadius:I

    const/4 p3, 0x0

    .line 136
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 135
    invoke-virtual {p4, p2}, Lakp$a;->a(F)Lakp$a;

    .line 139
    :cond_0
    new-instance p2, Lakk;

    invoke-direct {p2}, Lakk;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/card/a;->f:Lakk;

    .line 140
    invoke-virtual {p4}, Lakp$a;->a()Lakp;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/card/a;->a(Lakp;)V

    .line 142
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private A()F
    .locals 4

    .line 555
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getPreventCornerOverlap()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 556
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 557
    sget-wide v2, Lcom/google/android/material/card/a;->b:D

    sub-double/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v2}, Lcom/google/android/material/card/MaterialCardView;->getCardViewRadius()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private B()Z
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getPreventCornerOverlap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/card/a;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private C()Z
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getPreventCornerOverlap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    invoke-direct {p0}, Lcom/google/android/material/card/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 569
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private D()F
    .locals 4

    .line 581
    iget-object v0, p0, Lcom/google/android/material/card/a;->n:Lakp;

    .line 584
    invoke-virtual {v0}, Lakp;->b()Lakg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/card/a;->e:Lakk;

    invoke-virtual {v1}, Lakk;->ac()F

    move-result v1

    .line 583
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/card/a;->a(Lakg;F)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/card/a;->n:Lakp;

    .line 586
    invoke-virtual {v1}, Lakp;->c()Lakg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/card/a;->e:Lakk;

    .line 587
    invoke-virtual {v2}, Lakk;->ad()F

    move-result v2

    .line 585
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/card/a;->a(Lakg;F)F

    move-result v1

    .line 582
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/card/a;->n:Lakp;

    .line 590
    invoke-virtual {v1}, Lakp;->d()Lakg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/card/a;->e:Lakk;

    .line 591
    invoke-virtual {v2}, Lakk;->af()F

    move-result v2

    .line 589
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/card/a;->a(Lakg;F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/card/a;->n:Lakp;

    .line 593
    invoke-virtual {v2}, Lakp;->e()Lakg;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/card/a;->e:Lakk;

    .line 594
    invoke-virtual {v3}, Lakk;->ae()F

    move-result v3

    .line 592
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/card/a;->a(Lakg;F)F

    move-result v2

    .line 588
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 581
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private E()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 608
    iget-object v0, p0, Lcom/google/android/material/card/a;->p:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 609
    invoke-direct {p0}, Lcom/google/android/material/card/a;->F()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/card/a;->p:Landroid/graphics/drawable/Drawable;

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/a;->q:Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_1

    .line 613
    invoke-direct {p0}, Lcom/google/android/material/card/a;->I()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 614
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/material/card/a;->p:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/material/card/a;->f:Lakk;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/google/android/material/card/a;->q:Landroid/graphics/drawable/LayerDrawable;

    .line 617
    iget-object v0, p0, Lcom/google/android/material/card/a;->q:Landroid/graphics/drawable/LayerDrawable;

    sget v1, Laiv$f;->mtrl_card_checked_layer_id:I

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/card/a;->q:Landroid/graphics/drawable/LayerDrawable;

    return-object v0
.end method

.method private F()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 625
    sget-boolean v0, Laka;->a:Z

    if-eqz v0, :cond_0

    .line 626
    invoke-direct {p0}, Lcom/google/android/material/card/a;->J()Lakk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/card/a;->s:Lakk;

    .line 628
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/card/a;->l:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/card/a;->s:Lakk;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    .line 631
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/card/a;->G()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private G()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 636
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 637
    invoke-direct {p0}, Lcom/google/android/material/card/a;->J()Lakk;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/card/a;->r:Lakk;

    .line 638
    iget-object v1, p0, Lcom/google/android/material/card/a;->r:Lakk;

    iget-object v2, p0, Lcom/google/android/material/card/a;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lakk;->g(Landroid/content/res/ColorStateList;)V

    const/4 v1, 0x1

    .line 639
    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    iget-object v2, p0, Lcom/google/android/material/card/a;->r:Lakk;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private H()V
    .locals 2

    .line 645
    sget-boolean v0, Laka;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/card/a;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 646
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/card/a;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/a;->r:Lakk;

    if-eqz v0, :cond_1

    .line 648
    iget-object v1, p0, Lcom/google/android/material/card/a;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lakk;->g(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private I()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 654
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 655
    iget-object v1, p0, Lcom/google/android/material/card/a;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 656
    sget-object v2, Lcom/google/android/material/card/a;->a:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object v0
.end method

.method private J()Lakk;
    .locals 2

    .line 663
    new-instance v0, Lakk;

    iget-object v1, p0, Lcom/google/android/material/card/a;->n:Lakp;

    invoke-direct {v0, v1}, Lakk;-><init>(Lakp;)V

    return-object v0
.end method

.method private a(Lakg;F)F
    .locals 4

    .line 598
    instance-of v0, p1, Lako;

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 599
    sget-wide v2, Lcom/google/android/material/card/a;->b:D

    sub-double/2addr v0, v2

    float-to-double p1, p2

    mul-double/2addr v0, p1

    double-to-float p1, v0

    return p1

    .line 600
    :cond_0
    instance-of p1, p1, Lakh;

    if-eqz p1, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 479
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 480
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    invoke-direct {p0, p1}, Lcom/google/android/material/card/a;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 501
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 502
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v7, v1

    move v8, v7

    goto :goto_2

    .line 504
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/card/a;->x()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    .line 505
    invoke-direct {p0}, Lcom/google/android/material/card/a;->y()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move v7, v0

    move v8, v1

    .line 507
    :goto_2
    new-instance v0, Lcom/google/android/material/card/a$1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, v7

    move v6, v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/material/card/a$1;-><init>(Lcom/google/android/material/card/a;Landroid/graphics/drawable/Drawable;IIII)V

    return-object v0
.end method

.method private x()F
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getMaxCardElevation()F

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    .line 537
    invoke-direct {p0}, Lcom/google/android/material/card/a;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/card/a;->D()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method private y()F
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getMaxCardElevation()F

    move-result v0

    .line 547
    invoke-direct {p0}, Lcom/google/android/material/card/a;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/card/a;->D()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method private z()Z
    .locals 2

    .line 551
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/card/a;->e:Lakk;

    invoke-virtual {v0}, Lakk;->ag()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method a(F)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/google/android/material/card/a;->n:Lakp;

    invoke-virtual {v0, p1}, Lakp;->a(F)Lakp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/a;->a(Lakp;)V

    .line 277
    iget-object p1, p0, Lcom/google/android/material/card/a;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 278
    invoke-direct {p0}, Lcom/google/android/material/card/a;->C()Z

    move-result p1

    if-nez p1, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/google/android/material/card/a;->B()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->o()V

    .line 283
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/card/a;->C()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 284
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->m()V

    :cond_2
    return-void
.end method

.method a(I)V
    .locals 1

    .line 222
    iget v0, p0, Lcom/google/android/material/card/a;->i:I

    if-ne p1, v0, :cond_0

    return-void

    .line 225
    :cond_0
    iput p1, p0, Lcom/google/android/material/card/a;->i:I

    .line 226
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->n()V

    return-void
.end method

.method a(II)V
    .locals 9

    .line 417
    iget-object v0, p0, Lcom/google/android/material/card/a;->q:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_4

    .line 418
    iget v0, p0, Lcom/google/android/material/card/a;->g:I

    sub-int/2addr p1, v0

    iget v1, p0, Lcom/google/android/material/card/a;->h:I

    sub-int/2addr p1, v1

    sub-int/2addr p2, v0

    sub-int/2addr p2, v1

    .line 420
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/card/a;->x()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    sub-int/2addr p2, v0

    .line 423
    invoke-direct {p0}, Lcom/google/android/material/card/a;->y()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sub-int/2addr p1, v0

    :cond_2
    move v8, p2

    .line 426
    iget p2, p0, Lcom/google/android/material/card/a;->g:I

    .line 427
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    invoke-static {v0}, Lgj;->h(Landroid/view/View;)I

    move-result v0

    if-ne v0, v2, :cond_3

    move v7, p1

    move v5, p2

    goto :goto_1

    :cond_3
    move v5, p1

    move v7, p2

    .line 434
    :goto_1
    iget-object v3, p0, Lcom/google/android/material/card/a;->q:Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    iget v6, p0, Lcom/google/android/material/card/a;->g:I

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :cond_4
    return-void
.end method

.method a(IIII)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/android/material/card/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 258
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->o()V

    return-void
.end method

.method a(Lakp;)V
    .locals 2

    .line 453
    iput-object p1, p0, Lcom/google/android/material/card/a;->n:Lakp;

    .line 454
    iget-object v0, p0, Lcom/google/android/material/card/a;->e:Lakk;

    invoke-virtual {v0, p1}, Lakk;->setShapeAppearanceModel(Lakp;)V

    .line 455
    iget-object v0, p0, Lcom/google/android/material/card/a;->e:Lakk;

    invoke-virtual {v0}, Lakk;->ag()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lakk;->g(Z)V

    .line 456
    iget-object v0, p0, Lcom/google/android/material/card/a;->f:Lakk;

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0, p1}, Lakk;->setShapeAppearanceModel(Lakp;)V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/a;->s:Lakk;

    if-eqz v0, :cond_1

    .line 461
    invoke-virtual {v0, p1}, Lakk;->setShapeAppearanceModel(Lakp;)V

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/card/a;->r:Lakk;

    if-eqz v0, :cond_2

    .line 465
    invoke-virtual {v0, p1}, Lakk;->setShapeAppearanceModel(Lakp;)V

    :cond_2
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/google/android/material/card/a;->o:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_0

    return-void

    .line 207
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/card/a;->o:Landroid/content/res/ColorStateList;

    .line 208
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->n()V

    return-void
.end method

.method a(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 147
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Laiv$l;->MaterialCardView_strokeColor:I

    .line 146
    invoke-static {v0, p1, v1}, Lajv;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/card/a;->o:Landroid/content/res/ColorStateList;

    .line 150
    iget-object v0, p0, Lcom/google/android/material/card/a;->o:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 151
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/card/a;->o:Landroid/content/res/ColorStateList;

    .line 154
    :cond_0
    sget v0, Laiv$l;->MaterialCardView_strokeWidth:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/card/a;->i:I

    .line 155
    sget v0, Laiv$l;->MaterialCardView_android_checkable:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/card/a;->u:Z

    .line 156
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    iget-boolean v2, p0, Lcom/google/android/material/card/a;->u:Z

    invoke-virtual {v0, v2}, Lcom/google/android/material/card/MaterialCardView;->setLongClickable(Z)V

    .line 157
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 158
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Laiv$l;->MaterialCardView_checkedIconTint:I

    .line 157
    invoke-static {v0, p1, v2}, Lajv;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/card/a;->m:Landroid/content/res/ColorStateList;

    .line 159
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 161
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Laiv$l;->MaterialCardView_checkedIcon:I

    .line 160
    invoke-static {v0, p1, v2}, Lajv;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 159
    invoke-virtual {p0, v0}, Lcom/google/android/material/card/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 162
    sget v0, Laiv$l;->MaterialCardView_checkedIconSize:I

    .line 163
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 162
    invoke-virtual {p0, v0}, Lcom/google/android/material/card/a;->b(I)V

    .line 164
    sget v0, Laiv$l;->MaterialCardView_checkedIconMargin:I

    .line 165
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 164
    invoke-virtual {p0, v0}, Lcom/google/android/material/card/a;->c(I)V

    .line 167
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 169
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Laiv$l;->MaterialCardView_rippleColor:I

    .line 168
    invoke-static {v0, p1, v1}, Lajv;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/card/a;->l:Landroid/content/res/ColorStateList;

    .line 170
    iget-object v0, p0, Lcom/google/android/material/card/a;->l:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    sget v1, Laiv$b;->colorControlHighlight:I

    .line 173
    invoke-static {v0, v1}, Lajj;->a(Landroid/view/View;I)I

    move-result v0

    .line 172
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/card/a;->l:Landroid/content/res/ColorStateList;

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 178
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Laiv$l;->MaterialCardView_cardForegroundColor:I

    .line 177
    invoke-static {v0, p1, v1}, Lajv;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 182
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/a;->c(Landroid/content/res/ColorStateList;)V

    .line 184
    invoke-direct {p0}, Lcom/google/android/material/card/a;->H()V

    .line 185
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->l()V

    .line 186
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->n()V

    .line 188
    iget-object p1, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    iget-object v0, p0, Lcom/google/android/material/card/a;->e:Lakk;

    invoke-direct {p0, v0}, Lcom/google/android/material/card/a;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object p1, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 190
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/material/card/a;->E()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/card/a;->f:Lakk;

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/card/a;->j:Landroid/graphics/drawable/Drawable;

    .line 191
    iget-object p1, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    iget-object v0, p0, Lcom/google/android/material/card/a;->j:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/card/a;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 385
    iput-object p1, p0, Lcom/google/android/material/card/a;->k:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 387
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/card/a;->k:Landroid/graphics/drawable/Drawable;

    .line 388
    iget-object p1, p0, Lcom/google/android/material/card/a;->k:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/material/card/a;->m:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 391
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/card/a;->q:Landroid/graphics/drawable/LayerDrawable;

    if-eqz p1, :cond_1

    .line 392
    invoke-direct {p0}, Lcom/google/android/material/card/a;->I()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 393
    iget-object v0, p0, Lcom/google/android/material/card/a;->q:Landroid/graphics/drawable/LayerDrawable;

    sget v1, Laiv$f;->mtrl_card_checked_layer_id:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    :cond_1
    return-void
.end method

.method a(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcom/google/android/material/card/a;->t:Z

    return-void
.end method

.method a()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/google/android/material/card/a;->t:Z

    return v0
.end method

.method b()I
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/google/android/material/card/a;->o:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    :goto_0
    return v0
.end method

.method b(F)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/google/android/material/card/a;->e:Lakk;

    invoke-virtual {v0, p1}, Lakk;->p(F)V

    .line 294
    iget-object v0, p0, Lcom/google/android/material/card/a;->f:Lakk;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0, p1}, Lakk;->p(F)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/a;->s:Lakk;

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {v0, p1}, Lakk;->p(F)V

    :cond_1
    return-void
.end method

.method b(I)V
    .locals 0

    .line 404
    iput p1, p0, Lcom/google/android/material/card/a;->h:I

    return-void
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/google/android/material/card/a;->e:Lakk;

    invoke-virtual {v0, p1}, Lakk;->g(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method b(Z)V
    .locals 0

    .line 350
    iput-boolean p1, p0, Lcom/google/android/material/card/a;->u:Z

    return-void
.end method

.method c()Landroid/content/res/ColorStateList;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/google/android/material/card/a;->o:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method c(I)V
    .locals 0

    .line 413
    iput p1, p0, Lcom/google/android/material/card/a;->g:I

    return-void
.end method

.method c(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/google/android/material/card/a;->f:Lakk;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 249
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 248
    :cond_0
    invoke-virtual {v0, p1}, Lakk;->g(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method d()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/google/android/material/card/a;->i:I

    return v0
.end method

.method d(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/google/android/material/card/a;->l:Landroid/content/res/ColorStateList;

    .line 359
    invoke-direct {p0}, Lcom/google/android/material/card/a;->H()V

    return-void
.end method

.method e()Lakk;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/google/android/material/card/a;->e:Lakk;

    return-object v0
.end method

.method e(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 363
    iput-object p1, p0, Lcom/google/android/material/card/a;->m:Landroid/content/res/ColorStateList;

    .line 364
    iget-object v0, p0, Lcom/google/android/material/card/a;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 365
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method f()Landroid/content/res/ColorStateList;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/google/android/material/card/a;->e:Lakk;

    invoke-virtual {v0}, Lakk;->N()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method g()Landroid/content/res/ColorStateList;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/google/android/material/card/a;->f:Lakk;

    invoke-virtual {v0}, Lakk;->N()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method h()Landroid/graphics/Rect;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/google/android/material/card/a;->d:Landroid/graphics/Rect;

    return-object v0
.end method

.method i()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/google/android/material/card/a;->j:Landroid/graphics/drawable/Drawable;

    .line 268
    iget-object v1, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 269
    invoke-virtual {v1}, Lcom/google/android/material/card/MaterialCardView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/card/a;->E()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/card/a;->f:Lakk;

    :goto_0
    iput-object v1, p0, Lcom/google/android/material/card/a;->j:Landroid/graphics/drawable/Drawable;

    .line 270
    iget-object v1, p0, Lcom/google/android/material/card/a;->j:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 271
    invoke-direct {p0, v1}, Lcom/google/android/material/card/a;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method j()F
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/google/android/material/card/a;->e:Lakk;

    invoke-virtual {v0}, Lakk;->ac()F

    move-result v0

    return v0
.end method

.method k()F
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/google/android/material/card/a;->e:Lakk;

    invoke-virtual {v0}, Lakk;->T()F

    move-result v0

    return v0
.end method

.method l()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/google/android/material/card/a;->e:Lakk;

    iget-object v1, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v1}, Lcom/google/android/material/card/MaterialCardView;->getCardElevation()F

    move-result v1

    invoke-virtual {v0, v1}, Lakk;->r(F)V

    return-void
.end method

.method m()V
    .locals 2

    .line 314
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    iget-object v1, p0, Lcom/google/android/material/card/a;->e:Lakk;

    invoke-direct {p0, v1}, Lcom/google/android/material/card/a;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    iget-object v1, p0, Lcom/google/android/material/card/a;->j:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/google/android/material/card/a;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method n()V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/google/android/material/card/a;->f:Lakk;

    iget v1, p0, Lcom/google/android/material/card/a;->i:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/card/a;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, v2}, Lakk;->a(FLandroid/content/res/ColorStateList;)V

    return-void
.end method

.method o()V
    .locals 6

    .line 333
    invoke-direct {p0}, Lcom/google/android/material/card/a;->B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 334
    invoke-direct {p0}, Lcom/google/android/material/card/a;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 339
    invoke-direct {p0}, Lcom/google/android/material/card/a;->D()F

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 340
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/card/a;->A()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 342
    iget-object v1, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/card/MaterialCardView;

    iget-object v2, p0, Lcom/google/android/material/card/a;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/google/android/material/card/a;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/google/android/material/card/a;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/google/android/material/card/a;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/material/card/MaterialCardView;->setAncestorContentPadding(IIII)V

    return-void
.end method

.method p()Z
    .locals 1

    .line 354
    iget-boolean v0, p0, Lcom/google/android/material/card/a;->u:Z

    return v0
.end method

.method q()Landroid/content/res/ColorStateList;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/google/android/material/card/a;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method r()Landroid/content/res/ColorStateList;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/google/android/material/card/a;->l:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method s()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/google/android/material/card/a;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method t()I
    .locals 1

    .line 400
    iget v0, p0, Lcom/google/android/material/card/a;->h:I

    return v0
.end method

.method u()I
    .locals 1

    .line 409
    iget v0, p0, Lcom/google/android/material/card/a;->g:I

    return v0
.end method

.method v()V
    .locals 7

    .line 441
    iget-object v0, p0, Lcom/google/android/material/card/a;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 446
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 447
    iget-object v2, p0, Lcom/google/android/material/card/a;->p:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 448
    iget-object v2, p0, Lcom/google/android/material/card/a;->p:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method w()Lakp;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/google/android/material/card/a;->n:Lakp;

    return-object v0
.end method
