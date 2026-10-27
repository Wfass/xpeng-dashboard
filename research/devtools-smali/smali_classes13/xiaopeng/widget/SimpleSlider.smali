.class public Lxiaopeng/widget/SimpleSlider;
.super Landroid/view/View;
.source "SimpleSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxiaopeng/widget/SimpleSlider$b;,
        Lxiaopeng/widget/SimpleSlider$c;,
        Lxiaopeng/widget/SimpleSlider$d;,
        Lxiaopeng/widget/SimpleSlider$a;
    }
.end annotation


# instance fields
.field private alh:F

.field private atA:Lxiaopeng/widget/SimpleSlider$d;

.field private atB:Lxiaopeng/widget/SimpleSlider$a;

.field private atq:Z

.field private atr:Z

.field private ats:F

.field private att:Landroid/graphics/drawable/Drawable;

.field private atu:I

.field private atv:I

.field private atw:Z

.field private atx:F

.field private aty:Z

.field private atz:I

.field private mEnabled:Z

.field private mMax:I

.field private mMin:I

.field private mProgress:I

.field private mTickMark:Landroid/graphics/drawable/Drawable;

.field protected mTouchMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lxiaopeng/widget/SimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 97
    sget v0, Lxiaopeng/widget/R$style;->SimpleSlider:I

    invoke-direct {p0, p1, p2, v0}, Lxiaopeng/widget/SimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 101
    sget v0, Lxiaopeng/widget/R$style;->SimpleSlider:I

    invoke-direct {p0, p1, p2, p3, v0}, Lxiaopeng/widget/SimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    .line 64
    iput v0, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    .line 65
    const/16 v1, 0x64

    iput v1, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    .line 66
    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->atq:Z

    .line 67
    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->atr:Z

    .line 72
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lxiaopeng/widget/SimpleSlider;->ats:F

    .line 75
    const/4 v1, -0x1

    iput v1, p0, Lxiaopeng/widget/SimpleSlider;->atu:I

    .line 77
    iput v1, p0, Lxiaopeng/widget/SimpleSlider;->atv:I

    .line 79
    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->atw:Z

    .line 80
    const/4 v1, 0x0

    iput v1, p0, Lxiaopeng/widget/SimpleSlider;->atx:F

    .line 81
    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->aty:Z

    .line 84
    iput v0, p0, Lxiaopeng/widget/SimpleSlider;->mTouchMode:I

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mEnabled:Z

    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Lxiaopeng/widget/SimpleSlider;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 107
    return-void
.end method

.method private G(II)V
    .locals 2

    .line 310
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 311
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 313
    nop

    .line 314
    nop

    .line 316
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->att:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->att:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 319
    :cond_0
    return-void
.end method

.method static synthetic a(Lxiaopeng/widget/SimpleSlider;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider;->vh()V

    return-void
.end method

.method static synthetic a(Lxiaopeng/widget/SimpleSlider;IZ)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lxiaopeng/widget/SimpleSlider;->k(IZ)V

    return-void
.end method

.method private fF(I)I
    .locals 2

    .line 484
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    .line 485
    iget v1, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    .line 486
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 116
    sget-object v0, Lxiaopeng/widget/R$styleable;->SimpleSlider:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 118
    sget p3, Lxiaopeng/widget/R$styleable;->SimpleSlider_android_progressDrawable:I

    iget p4, p0, Lxiaopeng/widget/SimpleSlider;->atu:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lxiaopeng/widget/SimpleSlider;->atu:I

    .line 119
    sget p3, Lxiaopeng/widget/R$styleable;->SimpleSlider_android_progressDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lxiaopeng/widget/SimpleSlider;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    sget p3, Lxiaopeng/widget/R$styleable;->SimpleSlider_android_tickMark:I

    iget p4, p0, Lxiaopeng/widget/SimpleSlider;->atv:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lxiaopeng/widget/SimpleSlider;->atv:I

    .line 122
    sget p3, Lxiaopeng/widget/R$styleable;->SimpleSlider_android_tickMark:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 123
    invoke-virtual {p0, p3}, Lxiaopeng/widget/SimpleSlider;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 124
    sget p3, Lxiaopeng/widget/R$styleable;->SimpleSlider_ss_tickMarkAll:I

    iget-boolean p4, p0, Lxiaopeng/widget/SimpleSlider;->atw:Z

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lxiaopeng/widget/SimpleSlider;->atw:Z

    .line 125
    sget p3, Lxiaopeng/widget/R$styleable;->SimpleSlider_ss_tickMark_padding:I

    iget p4, p0, Lxiaopeng/widget/SimpleSlider;->atx:F

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lxiaopeng/widget/SimpleSlider;->atx:F

    .line 126
    sget p3, Lxiaopeng/widget/R$styleable;->SimpleSlider_ss_tickMark_ProgressEnd:I

    iget-boolean p4, p0, Lxiaopeng/widget/SimpleSlider;->aty:Z

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lxiaopeng/widget/SimpleSlider;->aty:Z

    .line 128
    sget p3, Lxiaopeng/widget/R$styleable;->SimpleSlider_ss_slideScale:I

    iget p4, p0, Lxiaopeng/widget/SimpleSlider;->ats:F

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lxiaopeng/widget/SimpleSlider;->ats:F

    .line 129
    sget p3, Lxiaopeng/widget/R$styleable;->SimpleSlider_android_enabled:I

    iget-boolean p4, p0, Lxiaopeng/widget/SimpleSlider;->mEnabled:Z

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lxiaopeng/widget/SimpleSlider;->mEnabled:Z

    .line 130
    sget p3, Lxiaopeng/widget/R$styleable;->SimpleSlider_android_disabledAlpha:I

    const p4, 0x3eb851ec    # 0.36f

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lxiaopeng/widget/SimpleSlider;->alh:F

    .line 132
    sget p3, Lxiaopeng/widget/R$styleable;->SimpleSlider_android_min:I

    iget p4, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lxiaopeng/widget/SimpleSlider;->setMin(I)V

    .line 133
    sget p3, Lxiaopeng/widget/R$styleable;->SimpleSlider_android_max:I

    iget p4, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lxiaopeng/widget/SimpleSlider;->setMax(I)V

    .line 135
    sget p3, Lxiaopeng/widget/R$styleable;->SimpleSlider_android_progress:I

    iget p4, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lxiaopeng/widget/SimpleSlider;->setProgress(I)V

    .line 137
    sget p3, Lxiaopeng/widget/R$styleable;->SimpleSlider_ss_touchMode:I

    iget p4, p0, Lxiaopeng/widget/SimpleSlider;->mTouchMode:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lxiaopeng/widget/SimpleSlider;->mTouchMode:I

    .line 138
    iget p3, p0, Lxiaopeng/widget/SimpleSlider;->mTouchMode:I

    invoke-virtual {p0, p3}, Lxiaopeng/widget/SimpleSlider;->fE(I)Lxiaopeng/widget/SimpleSlider$d;

    move-result-object p3

    iput-object p3, p0, Lxiaopeng/widget/SimpleSlider;->atA:Lxiaopeng/widget/SimpleSlider$d;

    .line 139
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lxiaopeng/widget/SimpleSlider;->atz:I

    .line 143
    return-void
.end method

.method private k(IZ)V
    .locals 2

    .line 247
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider;->fF(I)I

    move-result p1

    .line 248
    iput p1, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    .line 249
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    iget v1, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    sub-int/2addr v0, v1

    .line 250
    if-lez v0, :cond_0

    iget v1, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 251
    :goto_0
    invoke-virtual {p0, v1}, Lxiaopeng/widget/SimpleSlider;->setVisualProgress(F)V

    .line 252
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->atB:Lxiaopeng/widget/SimpleSlider$a;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->atB:Lxiaopeng/widget/SimpleSlider$a;

    invoke-interface {v0, p0, p1, p2}, Lxiaopeng/widget/SimpleSlider$a;->b(Lxiaopeng/widget/SimpleSlider;IZ)V

    .line 255
    :cond_1
    return-void
.end method

.method private vg()V
    .locals 3

    .line 322
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getDrawableState()[I

    move-result-object v0

    .line 323
    nop

    .line 325
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider;->att:Landroid/graphics/drawable/Drawable;

    .line 326
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    goto :goto_0

    .line 330
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->invalidate()V

    .line 333
    :cond_1
    return-void
.end method

.method private vh()V
    .locals 2

    .line 413
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 416
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 379
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 380
    return v1

    .line 382
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 383
    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 385
    :pswitch_0
    invoke-virtual {p0, v1}, Lxiaopeng/widget/SimpleSlider;->setPressed(Z)V

    .line 386
    goto :goto_0

    .line 389
    :cond_1
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lxiaopeng/widget/SimpleSlider;->setPressed(Z)V

    .line 393
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 7

    .line 434
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getTickMark()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_5

    .line 436
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getMax()I

    move-result v1

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v2

    sub-int/2addr v1, v2

    .line 437
    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    .line 438
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 439
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 440
    if-ltz v3, :cond_0

    div-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 441
    :cond_0
    move v3, v2

    :goto_0
    if-ltz v4, :cond_1

    div-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 442
    :cond_1
    move v4, v2

    :goto_1
    neg-int v5, v3

    neg-int v6, v4

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 444
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lxiaopeng/widget/SimpleSlider;->atx:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 445
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 446
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getHeight()I

    move-result v6

    shr-int/2addr v6, v2

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 447
    iget v5, p0, Lxiaopeng/widget/SimpleSlider;->atx:F

    add-float/2addr v5, v3

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 448
    :goto_2
    if-ge v2, v1, :cond_4

    .line 449
    iget-boolean v5, p0, Lxiaopeng/widget/SimpleSlider;->atw:Z

    if-nez v5, :cond_3

    .line 450
    iget-boolean v5, p0, Lxiaopeng/widget/SimpleSlider;->aty:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    if-le v2, v5, :cond_2

    .line 451
    goto :goto_3

    .line 452
    :cond_2
    iget-boolean v5, p0, Lxiaopeng/widget/SimpleSlider;->aty:Z

    if-nez v5, :cond_3

    iget v5, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    if-lt v2, v5, :cond_3

    .line 453
    goto :goto_3

    .line 456
    :cond_3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 457
    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 448
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 459
    :cond_4
    :goto_3
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 462
    :cond_5
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    .line 155
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 157
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->att:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->att:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 160
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 363
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->att:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    const/16 v2, 0xff

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->att:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    iget v3, p0, Lxiaopeng/widget/SimpleSlider;->alh:F

    mul-float/2addr v3, v1

    float-to-int v3, v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 366
    :cond_1
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 367
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget v2, p0, Lxiaopeng/widget/SimpleSlider;->alh:F

    mul-float/2addr v1, v2

    float-to-int v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 369
    :cond_3
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 370
    return-void
.end method

.method protected fE(I)Lxiaopeng/widget/SimpleSlider$d;
    .locals 1

    .line 146
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 147
    new-instance p1, Lxiaopeng/widget/SimpleSlider$b;

    invoke-direct {p1}, Lxiaopeng/widget/SimpleSlider$b;-><init>()V

    return-object p1

    .line 149
    :cond_0
    new-instance p1, Lxiaopeng/widget/SimpleSlider$c;

    invoke-direct {p1}, Lxiaopeng/widget/SimpleSlider$c;-><init>()V

    return-object p1
.end method

.method public getMax()I
    .locals 1

    .line 207
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 183
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 235
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    return v0
.end method

.method public getRange()I
    .locals 2

    .line 231
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    iget v1, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    sub-int/2addr v0, v1

    return v0
.end method

.method getScaledTouchSlop()I
    .locals 1

    .line 163
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->atz:I

    return v0
.end method

.method public getSlideScale()F
    .locals 1

    .line 258
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->ats:F

    return v0
.end method

.method public getTickMark()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 304
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMark:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isInScrollingContainer()Z
    .locals 2

    .line 490
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 491
    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 492
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    const/4 v0, 0x1

    return v0

    .line 495
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 497
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 427
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->att:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->att:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 430
    :cond_0
    invoke-virtual {p0, p1}, Lxiaopeng/widget/SimpleSlider;->drawTickMarks(Landroid/graphics/Canvas;)V

    .line 431
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 111
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 112
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mEnabled:Z

    invoke-virtual {p0, v0}, Lxiaopeng/widget/SimpleSlider;->setEnabled(Z)V

    .line 113
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 420
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 422
    invoke-direct {p0, p1, p2}, Lxiaopeng/widget/SimpleSlider;->G(II)V

    .line 423
    return-void
.end method

.method protected onStartTrackingTouch()V
    .locals 1

    .line 468
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->atB:Lxiaopeng/widget/SimpleSlider$a;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->atB:Lxiaopeng/widget/SimpleSlider$a;

    invoke-interface {v0, p0}, Lxiaopeng/widget/SimpleSlider$a;->b(Lxiaopeng/widget/SimpleSlider;)V

    .line 471
    :cond_0
    return-void
.end method

.method protected onStopTrackingTouch()V
    .locals 1

    .line 478
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->atB:Lxiaopeng/widget/SimpleSlider$a;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->atB:Lxiaopeng/widget/SimpleSlider$a;

    invoke-interface {v0, p0}, Lxiaopeng/widget/SimpleSlider$a;->c(Lxiaopeng/widget/SimpleSlider;)V

    .line 481
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 399
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    const/4 p1, 0x0

    return p1

    .line 402
    :cond_0
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->atA:Lxiaopeng/widget/SimpleSlider$d;

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->atA:Lxiaopeng/widget/SimpleSlider$d;

    invoke-interface {v0, p0, p1}, Lxiaopeng/widget/SimpleSlider$d;->a(Lxiaopeng/widget/SimpleSlider;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 405
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setMax(I)V
    .locals 1

    .line 211
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->atr:Z

    if-eqz v0, :cond_0

    .line 212
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    if-ge p1, v0, :cond_0

    .line 213
    iget p1, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    .line 216
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->atq:Z

    .line 217
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->atr:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    if-eq p1, v0, :cond_2

    .line 218
    iput p1, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    .line 219
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->postInvalidate()V

    .line 221
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    if-le v0, p1, :cond_1

    .line 222
    iput p1, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    .line 224
    :cond_1
    iget p1, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    invoke-virtual {p0, p1}, Lxiaopeng/widget/SimpleSlider;->setProgress(I)V

    goto :goto_0

    .line 226
    :cond_2
    iput p1, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    .line 228
    :goto_0
    return-void
.end method

.method public setMin(I)V
    .locals 1

    .line 187
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->atq:Z

    if-eqz v0, :cond_0

    .line 188
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    if-le p1, v0, :cond_0

    .line 189
    iget p1, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    .line 192
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->atr:Z

    .line 193
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->atq:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    if-eq p1, v0, :cond_2

    .line 194
    iput p1, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    .line 195
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->postInvalidate()V

    .line 197
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    if-ge v0, p1, :cond_1

    .line 198
    iput p1, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    .line 200
    :cond_1
    iget p1, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    invoke-virtual {p0, p1}, Lxiaopeng/widget/SimpleSlider;->setProgress(I)V

    goto :goto_0

    .line 202
    :cond_2
    iput p1, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    .line 204
    :goto_0
    return-void
.end method

.method public setOnSlideChangeListener(Lxiaopeng/widget/SimpleSlider$a;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lxiaopeng/widget/SimpleSlider;->atB:Lxiaopeng/widget/SimpleSlider$a;

    .line 240
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lxiaopeng/widget/SimpleSlider;->k(IZ)V

    .line 244
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 266
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->att:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 267
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->att:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->att:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 269
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->att:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lxiaopeng/widget/SimpleSlider;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    :cond_0
    iput-object p1, p0, Lxiaopeng/widget/SimpleSlider;->att:Landroid/graphics/drawable/Drawable;

    .line 272
    if-eqz p1, :cond_2

    .line 273
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 274
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 275
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 279
    :cond_1
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lxiaopeng/widget/SimpleSlider;->G(II)V

    .line 280
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider;->vg()V

    .line 283
    :cond_2
    return-void
.end method

.method public setSlideScale(F)V
    .locals 0

    .line 262
    iput p1, p0, Lxiaopeng/widget/SimpleSlider;->ats:F

    .line 263
    return-void
.end method

.method public setTickMark(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 286
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMark:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 290
    :cond_0
    iput-object p1, p0, Lxiaopeng/widget/SimpleSlider;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 292
    if-eqz p1, :cond_1

    .line 293
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 294
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 295
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 300
    :cond_1
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->invalidate()V

    .line 301
    return-void
.end method

.method public setTouchEventHandler(Lxiaopeng/widget/SimpleSlider$d;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lxiaopeng/widget/SimpleSlider;->atA:Lxiaopeng/widget/SimpleSlider$d;

    .line 168
    return-void
.end method

.method protected setVisualProgress(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 341
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->att:Landroid/graphics/drawable/Drawable;

    .line 342
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_0

    .line 343
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 344
    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->att:Landroid/graphics/drawable/Drawable;

    .line 353
    :cond_0
    if-eqz v0, :cond_1

    .line 354
    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 355
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 356
    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->invalidate()V

    .line 359
    :goto_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 374
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->att:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public vf()V
    .locals 3

    .line 171
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->atu:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lxiaopeng/widget/SimpleSlider;->atu:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lxiaopeng/widget/SimpleSlider;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :cond_0
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->atv:I

    if-eq v0, v1, :cond_1

    .line 175
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lxiaopeng/widget/SimpleSlider;->atv:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lxiaopeng/widget/SimpleSlider;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 177
    :cond_1
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getRange()I

    move-result v0

    .line 178
    if-lez v0, :cond_2

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getProgress()I

    move-result v1

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 179
    :goto_0
    invoke-virtual {p0, v1}, Lxiaopeng/widget/SimpleSlider;->setVisualProgress(F)V

    .line 180
    return-void
.end method
