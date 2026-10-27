.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;
.super Landroid/view/View;
.source "CircularProgressView.java"


# instance fields
.field private IJ:Landroid/graphics/RectF;

.field private IK:Z

.field private IL:Z

.field private IM:F

.field private IO:F

.field private IP:F

.field private IQ:F

.field private IR:I

.field private IS:I

.field private IT:I

.field private IU:I

.field private IV:F

.field private IW:F

.field private IX:Landroid/animation/ValueAnimator;

.field private IY:Landroid/animation/ValueAnimator;

.field private IZ:Landroid/animation/AnimatorSet;

.field private Ja:F

.field private color:I

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/a;",
            ">;"
        }
    .end annotation
.end field

.field private paint:Landroid/graphics/Paint;

.field private size:I

.field private thickness:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->size:I

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->a(Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->size:I

    .line 55
    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->a(Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->size:I

    .line 60
    invoke-virtual {p0, p2, p3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->a(Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;F)F
    .locals 0

    .line 27
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IW:F

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->listeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IV:F

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;F)F
    .locals 0

    .line 27
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IV:F

    return p1
.end method

.method private b(Landroid/util/AttributeSet;I)V
    .locals 5

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/R$styleable;->CircularProgressView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 81
    nop

    .line 82
    const v0, 0x7f0a001c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    .line 81
    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IM:F

    .line 83
    nop

    .line 84
    const v0, 0x7f0a001b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    .line 83
    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IO:F

    .line 85
    nop

    .line 86
    const v0, 0x7f070262

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 85
    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->thickness:I

    .line 87
    nop

    .line 88
    const v0, 0x7f050006

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 87
    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IK:Z

    .line 89
    nop

    .line 90
    const v0, 0x7f050005

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 89
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IL:Z

    .line 91
    nop

    .line 92
    const v0, 0x7f0a001d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    .line 91
    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->Ja:F

    .line 93
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->Ja:F

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IV:F

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "colorAccent"

    const-string v2, "attr"

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 98
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x1

    const v4, 0x7f060183

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->color:I

    goto :goto_0

    .line 102
    :cond_0
    if-eqz v0, :cond_1

    .line 103
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 105
    iget v0, v1, Landroid/util/TypedValue;->data:I

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->color:I

    .line 108
    :cond_1
    :goto_0
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->color:I

    .line 110
    const v0, 0x7f0a0017

    .line 111
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 110
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IR:I

    .line 112
    const/4 v0, 0x3

    const v1, 0x7f0a0019

    .line 113
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IS:I

    .line 114
    const/4 v0, 0x4

    const v1, 0x7f0a001a

    .line 115
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IT:I

    .line 116
    const/4 v0, 0x2

    const v1, 0x7f0a0018

    .line 117
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 116
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IU:I

    .line 118
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;F)F
    .locals 0

    .line 27
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IP:F

    return p1
.end method

.method private c(F)Landroid/animation/AnimatorSet;
    .locals 13

    .line 424
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IU:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IU:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x41700000    # 15.0f

    add-float/2addr v2, v0

    .line 425
    sub-float v3, v2, v0

    mul-float/2addr v3, p1

    const/high16 v4, -0x3d4c0000    # -90.0f

    add-float/2addr v4, v3

    .line 428
    const/4 v3, 0x2

    new-array v5, v3, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    aput v2, v5, v1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 429
    iget v7, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IR:I

    iget v8, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IU:I

    div-int/2addr v7, v8

    div-int/2addr v7, v3

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 430
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 431
    new-instance v7, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$6;

    invoke-direct {v7, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$6;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 440
    new-array v7, v3, [F

    const/high16 v9, 0x44340000    # 720.0f

    mul-float v10, p1, v9

    iget v11, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IU:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    aput v10, v7, v6

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v10, p1

    mul-float/2addr v10, v9

    iget v11, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IU:I

    int-to-float v11, v11

    div-float v11, v10, v11

    aput v11, v7, v1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 441
    iget v11, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IR:I

    iget v12, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IU:I

    div-int/2addr v11, v12

    div-int/2addr v11, v3

    int-to-long v11, v11

    invoke-virtual {v7, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 442
    new-instance v11, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 443
    new-instance v11, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$7;

    invoke-direct {v11, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$7;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;)V

    invoke-virtual {v7, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 453
    new-array v11, v3, [F

    aput v4, v11, v6

    add-float v12, v4, v2

    sub-float/2addr v12, v0

    aput v12, v11, v1

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 454
    iget v11, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IR:I

    iget v12, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IU:I

    div-int/2addr v11, v12

    div-int/2addr v11, v3

    int-to-long v11, v11

    invoke-virtual {v0, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 455
    new-instance v11, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v11, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 456
    new-instance v11, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$8;

    invoke-direct {v11, p0, v2, v4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$8;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;FF)V

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 466
    new-array v2, v3, [F

    iget v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IU:I

    int-to-float v4, v4

    div-float/2addr v10, v4

    aput v10, v2, v6

    add-float/2addr p1, v8

    mul-float/2addr p1, v9

    iget v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IU:I

    int-to-float v4, v4

    div-float/2addr p1, v4

    aput p1, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 467
    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IR:I

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IU:I

    div-int/2addr v1, v2

    div-int/2addr v1, v3

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 468
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 469
    new-instance v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$9;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$9;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 476
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 477
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 478
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 479
    return-object v1
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;F)F
    .locals 0

    .line 27
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IQ:F

    return p1
.end method

.method private mE()V
    .locals 6

    .line 141
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->getPaddingLeft()I

    move-result v0

    .line 142
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->getPaddingTop()I

    move-result v1

    .line 143
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IJ:Landroid/graphics/RectF;

    iget v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->thickness:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->thickness:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->size:I

    sub-int/2addr v5, v0

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->thickness:I

    sub-int/2addr v5, v0

    int-to-float v0, v5

    iget v5, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->size:I

    sub-int/2addr v5, v1

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->thickness:I

    sub-int/2addr v5, v1

    int-to-float v1, v5

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 144
    return-void
.end method

.method private mF()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->thickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 151
    return-void
.end method


# virtual methods
.method protected a(Landroid/util/AttributeSet;I)V
    .locals 1

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->listeners:Ljava/util/List;

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->b(Landroid/util/AttributeSet;I)V

    .line 68
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->paint:Landroid/graphics/Paint;

    .line 69
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->mF()V

    .line 71
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IJ:Landroid/graphics/RectF;

    .line 72
    return-void
.end method

.method public getColor()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->color:I

    return v0
.end method

.method public getMaxProgress()F
    .locals 1

    .line 238
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IO:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 255
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IM:F

    return v0
.end method

.method public getThickness()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->thickness:I

    return v0
.end method

.method public mG()V
    .locals 7

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IX:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IY:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IZ:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IZ:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IZ:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 336
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IK:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 338
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->Ja:F

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IV:F

    .line 339
    const/4 v0, 0x2

    new-array v2, v0, [F

    iget v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IV:F

    aput v3, v2, v1

    iget v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IV:F

    const/high16 v4, 0x43b40000    # 360.0f

    add-float/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IX:Landroid/animation/ValueAnimator;

    .line 340
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IX:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IS:I

    int-to-long v5, v3

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 341
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IX:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v3, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 342
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IX:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$3;

    invoke-direct {v3, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$3;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 349
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 352
    const/4 v2, 0x0

    iput v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IW:F

    .line 353
    new-array v0, v0, [F

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IW:F

    aput v2, v0, v1

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IM:F

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IY:Landroid/animation/ValueAnimator;

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IY:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IT:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IY:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IY:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$4;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 367
    :cond_3
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IP:F

    .line 369
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IZ:Landroid/animation/AnimatorSet;

    .line 370
    const/4 v0, 0x0

    .line 371
    :goto_0
    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IU:I

    if-ge v1, v2, :cond_5

    .line 372
    int-to-float v2, v1

    invoke-direct {p0, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->c(F)Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 373
    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IZ:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    .line 374
    if-eqz v0, :cond_4

    .line 375
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 376
    :cond_4
    nop

    .line 371
    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_0

    .line 380
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IZ:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$5;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IZ:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/a;

    .line 396
    invoke-interface {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/a;->mH()V

    .line 397
    goto :goto_1

    .line 401
    :cond_6
    :goto_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 484
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 485
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IL:Z

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->startAnimation()V

    .line 487
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 491
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 492
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->stopAnimation()V

    .line 493
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 155
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->isInEditMode()Z

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IM:F

    :goto_0
    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IO:F

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    .line 159
    move v4, v0

    goto :goto_1

    .line 158
    :cond_0
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IW:F

    goto :goto_0

    .line 159
    :goto_1
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IK:Z

    if-nez v0, :cond_1

    .line 160
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IJ:Landroid/graphics/RectF;

    iget v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IV:F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_2

    .line 162
    :cond_1
    iget-object v8, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IJ:Landroid/graphics/RectF;

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IV:F

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IQ:F

    add-float v9, v0, v1

    iget v10, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IP:F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->paint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 163
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 123
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, p1

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p2

    .line 128
    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->size:I

    .line 129
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->size:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->size:I

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->setMeasuredDimension(II)V

    .line 131
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 136
    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->size:I

    .line 137
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->mE()V

    .line 138
    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 227
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->color:I

    .line 228
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->mF()V

    .line 229
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->invalidate()V

    .line 230
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 2

    .line 181
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IK:Z

    .line 182
    iget-boolean v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IK:Z

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 183
    :goto_0
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IK:Z

    .line 184
    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->mG()V

    .line 186
    :cond_1
    if-eq v0, p1, :cond_2

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/a;

    .line 188
    invoke-interface {v1, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/a;->at(Z)V

    .line 189
    goto :goto_1

    .line 191
    :cond_2
    return-void
.end method

.method public setMaxProgress(F)V
    .locals 0

    .line 247
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IO:F

    .line 248
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->invalidate()V

    .line 249
    return-void
.end method

.method public setProgress(F)V
    .locals 3

    .line 264
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IM:F

    .line 266
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IK:Z

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IY:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 269
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IW:F

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IY:Landroid/animation/ValueAnimator;

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IY:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IT:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IY:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IY:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IY:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$2;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->invalidate()V

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/a;

    .line 292
    invoke-interface {v1, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/a;->d(F)V

    .line 293
    goto :goto_0

    .line 294
    :cond_2
    return-void
.end method

.method public setThickness(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->thickness:I

    .line 209
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->mF()V

    .line 210
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->mE()V

    .line 211
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->invalidate()V

    .line 212
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->getVisibility()I

    move-result v0

    .line 498
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 499
    if-eq p1, v0, :cond_2

    .line 500
    if-nez p1, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->mG()V

    goto :goto_0

    .line 502
    :cond_0
    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 503
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->stopAnimation()V

    .line 506
    :cond_2
    :goto_0
    return-void
.end method

.method public startAnimation()V
    .locals 0

    .line 320
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->mG()V

    .line 321
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IX:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 410
    iput-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IX:Landroid/animation/ValueAnimator;

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IY:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 414
    iput-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IY:Landroid/animation/ValueAnimator;

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IZ:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IZ:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 418
    iput-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->IZ:Landroid/animation/AnimatorSet;

    .line 420
    :cond_2
    return-void
.end method
