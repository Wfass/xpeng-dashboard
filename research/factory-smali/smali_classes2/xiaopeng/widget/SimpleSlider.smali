.class public Lxiaopeng/widget/SimpleSlider;
.super Landroid/view/View;
.source "SimpleSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxiaopeng/widget/SimpleSlider$SeekHandler;,
        Lxiaopeng/widget/SimpleSlider$SlideHandler;,
        Lxiaopeng/widget/SimpleSlider$TouchEventHandler;,
        Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710

.field private static final MAX_VALUE:I = 0x64

.field private static final MIN_VALUE:I = 0x0

.field private static final NO_ALPHA:I = 0xff

.field public static final TOUCH_MODE_SEEK:I = 0x1

.field public static final TOUCH_MODE_SLIDE:I


# instance fields
.field private mDisabledAlpha:F

.field private mEnabled:Z

.field private mMax:I

.field private mMaxInitialized:Z

.field private mMin:I

.field private mMinInitialized:Z

.field private mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressDrawableRes:I

.field private mScaledTouchSlop:I

.field private mSlideScale:F

.field private mTickMark:Landroid/graphics/drawable/Drawable;

.field private mTickMarkAll:Z

.field private mTickMarkPadding:F

.field private mTickMarkProgressEnd:Z

.field private mTickMarkRes:I

.field private mTouchEventHandler:Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

.field protected mTouchMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lxiaopeng/widget/SimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 97
    sget v0, Lxiaopeng/widget/R$style;->SimpleSlider:I

    invoke-direct {p0, p1, p2, v0}, Lxiaopeng/widget/SimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 101
    sget v0, Lxiaopeng/widget/R$style;->SimpleSlider:I

    invoke-direct {p0, p1, p2, p3, v0}, Lxiaopeng/widget/SimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

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
    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mMaxInitialized:Z

    .line 67
    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mMinInitialized:Z

    .line 72
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lxiaopeng/widget/SimpleSlider;->mSlideScale:F

    .line 75
    const/4 v1, -0x1

    iput v1, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawableRes:I

    .line 77
    iput v1, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkRes:I

    .line 79
    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkAll:Z

    .line 80
    const/4 v1, 0x0

    iput v1, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkPadding:F

    .line 81
    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkProgressEnd:Z

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

.method static synthetic access$000(Lxiaopeng/widget/SimpleSlider;)V
    .locals 0
    .param p0, "x0"    # Lxiaopeng/widget/SimpleSlider;

    .line 23
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider;->attemptClaimDrag()V

    return-void
.end method

.method static synthetic access$100(Lxiaopeng/widget/SimpleSlider;IZ)V
    .locals 0
    .param p0, "x0"    # Lxiaopeng/widget/SimpleSlider;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 23
    invoke-direct {p0, p1, p2}, Lxiaopeng/widget/SimpleSlider;->setProgressInternal(IZ)V

    return-void
.end method

.method private attemptClaimDrag()V
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

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 116
    sget-object v0, Lxiaopeng/widget/R$styleable;->SimpleSlider:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 118
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lxiaopeng/widget/R$styleable;->SimpleSlider_android_progressDrawable:I

    iget v2, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawableRes:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawableRes:I

    .line 119
    sget v1, Lxiaopeng/widget/R$styleable;->SimpleSlider_android_progressDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lxiaopeng/widget/SimpleSlider;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    sget v1, Lxiaopeng/widget/R$styleable;->SimpleSlider_android_tickMark:I

    iget v2, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkRes:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkRes:I

    .line 122
    sget v1, Lxiaopeng/widget/R$styleable;->SimpleSlider_android_tickMark:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 123
    .local v1, "tickMark":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lxiaopeng/widget/SimpleSlider;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 124
    sget v2, Lxiaopeng/widget/R$styleable;->SimpleSlider_ss_tickMarkAll:I

    iget-boolean v3, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkAll:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkAll:Z

    .line 125
    sget v2, Lxiaopeng/widget/R$styleable;->SimpleSlider_ss_tickMark_padding:I

    iget v3, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkPadding:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkPadding:F

    .line 126
    sget v2, Lxiaopeng/widget/R$styleable;->SimpleSlider_ss_tickMark_ProgressEnd:I

    iget-boolean v3, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkProgressEnd:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkProgressEnd:Z

    .line 128
    sget v2, Lxiaopeng/widget/R$styleable;->SimpleSlider_ss_slideScale:I

    iget v3, p0, Lxiaopeng/widget/SimpleSlider;->mSlideScale:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lxiaopeng/widget/SimpleSlider;->mSlideScale:F

    .line 129
    sget v2, Lxiaopeng/widget/R$styleable;->SimpleSlider_android_enabled:I

    iget-boolean v3, p0, Lxiaopeng/widget/SimpleSlider;->mEnabled:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lxiaopeng/widget/SimpleSlider;->mEnabled:Z

    .line 130
    sget v2, Lxiaopeng/widget/R$styleable;->SimpleSlider_android_disabledAlpha:I

    const v3, 0x3eb851ec    # 0.36f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lxiaopeng/widget/SimpleSlider;->mDisabledAlpha:F

    .line 132
    sget v2, Lxiaopeng/widget/R$styleable;->SimpleSlider_android_min:I

    iget v3, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lxiaopeng/widget/SimpleSlider;->setMin(I)V

    .line 133
    sget v2, Lxiaopeng/widget/R$styleable;->SimpleSlider_android_max:I

    iget v3, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lxiaopeng/widget/SimpleSlider;->setMax(I)V

    .line 135
    sget v2, Lxiaopeng/widget/R$styleable;->SimpleSlider_android_progress:I

    iget v3, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lxiaopeng/widget/SimpleSlider;->setProgress(I)V

    .line 137
    sget v2, Lxiaopeng/widget/R$styleable;->SimpleSlider_ss_touchMode:I

    iget v3, p0, Lxiaopeng/widget/SimpleSlider;->mTouchMode:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lxiaopeng/widget/SimpleSlider;->mTouchMode:I

    .line 138
    iget v2, p0, Lxiaopeng/widget/SimpleSlider;->mTouchMode:I

    invoke-virtual {p0, v2}, Lxiaopeng/widget/SimpleSlider;->generateTouchEventHandler(I)Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

    move-result-object v2

    iput-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mTouchEventHandler:Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

    .line 139
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 142
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lxiaopeng/widget/SimpleSlider;->mScaledTouchSlop:I

    .line 143
    return-void
.end method

.method private limitProgress(I)I
    .locals 3
    .param p1, "progress"    # I

    .line 484
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    .line 485
    .local v0, "min":I
    iget v1, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    .line 486
    .local v1, "max":I
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private setProgressInternal(IZ)V
    .locals 3
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z

    .line 247
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider;->limitProgress(I)I

    move-result p1

    .line 248
    iput p1, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    .line 249
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    iget v1, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    sub-int/2addr v0, v1

    .line 250
    .local v0, "range":I
    if-lez v0, :cond_0

    iget v1, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 251
    .local v1, "scale":F
    :goto_0
    invoke-virtual {p0, v1}, Lxiaopeng/widget/SimpleSlider;->setVisualProgress(F)V

    .line 252
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    if-eqz v2, :cond_1

    .line 253
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    invoke-interface {v2, p0, p1, p2}, Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;->onProgressChanged(Lxiaopeng/widget/SimpleSlider;IZ)V

    .line 255
    :cond_1
    return-void
.end method

.method private updateDrawableBounds(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

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
    move v0, p1

    .line 314
    .local v0, "right":I
    move v1, p2

    .line 316
    .local v1, "bottom":I
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 317
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 319
    :cond_0
    return-void
.end method

.method private updateDrawableState()V
    .locals 4

    .line 322
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getDrawableState()[I

    move-result-object v0

    .line 323
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 325
    .local v1, "changed":Z
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 326
    .local v2, "sliderDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 330
    :cond_0
    if-eqz v1, :cond_1

    .line 331
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->invalidate()V

    .line 333
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

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
    .local v0, "action":I
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
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lxiaopeng/widget/SimpleSlider;->setPressed(Z)V

    .line 393
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 434
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getTickMark()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 435
    .local v0, "tickMark":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5

    .line 436
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getMax()I

    move-result v1

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v2

    sub-int/2addr v1, v2

    .line 437
    .local v1, "count":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    .line 438
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 439
    .local v3, "w":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 440
    .local v4, "h":I
    if-ltz v3, :cond_0

    div-int/lit8 v5, v3, 0x2

    goto :goto_0

    :cond_0
    move v5, v2

    .line 441
    .local v5, "halfW":I
    :goto_0
    if-ltz v4, :cond_1

    div-int/lit8 v6, v4, 0x2

    goto :goto_1

    :cond_1
    move v6, v2

    .line 442
    .local v6, "halfH":I
    :goto_1
    neg-int v7, v5

    neg-int v8, v6

    invoke-virtual {v0, v7, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 444
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkPadding:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    int-to-float v8, v1

    div-float/2addr v7, v8

    .line 445
    .local v7, "spacing":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 446
    .local v8, "saveCount":I
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getHeight()I

    move-result v10

    shr-int/2addr v10, v2

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 447
    iget v9, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkPadding:F

    add-float/2addr v9, v7

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 448
    nop

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 449
    iget-boolean v9, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkAll:Z

    if-nez v9, :cond_3

    .line 450
    iget-boolean v9, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkProgressEnd:Z

    if-eqz v9, :cond_2

    iget v9, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    if-le v2, v9, :cond_2

    .line 451
    goto :goto_3

    .line 452
    :cond_2
    iget-boolean v9, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkProgressEnd:Z

    if-nez v9, :cond_3

    iget v9, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    if-lt v2, v9, :cond_3

    .line 453
    goto :goto_3

    .line 456
    :cond_3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 457
    invoke-virtual {p1, v7, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 448
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 459
    .end local v2    # "i":I
    :cond_4
    :goto_3
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 462
    .end local v1    # "count":I
    .end local v3    # "w":I
    .end local v4    # "h":I
    .end local v5    # "halfW":I
    .end local v6    # "halfH":I
    .end local v7    # "spacing":F
    .end local v8    # "saveCount":I
    :cond_5
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 155
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 157
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 160
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 363
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    const/16 v2, 0xff

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    iget v3, p0, Lxiaopeng/widget/SimpleSlider;->mDisabledAlpha:F

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
    iget v2, p0, Lxiaopeng/widget/SimpleSlider;->mDisabledAlpha:F

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

.method protected generateTouchEventHandler(I)Lxiaopeng/widget/SimpleSlider$TouchEventHandler;
    .locals 1
    .param p1, "touchMode"    # I

    .line 146
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 147
    new-instance v0, Lxiaopeng/widget/SimpleSlider$SeekHandler;

    invoke-direct {v0}, Lxiaopeng/widget/SimpleSlider$SeekHandler;-><init>()V

    return-object v0

    .line 149
    :cond_0
    new-instance v0, Lxiaopeng/widget/SimpleSlider$SlideHandler;

    invoke-direct {v0}, Lxiaopeng/widget/SimpleSlider$SlideHandler;-><init>()V

    return-object v0
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
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mScaledTouchSlop:I

    return v0
.end method

.method public getSlideScale()F
    .locals 1

    .line 258
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mSlideScale:F

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
    .local v0, "p":Landroid/view/ViewParent;
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
    const/4 v1, 0x1

    return v1

    .line 495
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 497
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 427
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

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
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 420
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 422
    invoke-direct {p0, p1, p2}, Lxiaopeng/widget/SimpleSlider;->updateDrawableBounds(II)V

    .line 423
    return-void
.end method

.method protected onStartTrackingTouch()V
    .locals 1

    .line 468
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    invoke-interface {v0, p0}, Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;->onStartTrackingTouch(Lxiaopeng/widget/SimpleSlider;)V

    .line 471
    :cond_0
    return-void
.end method

.method protected onStopTrackingTouch()V
    .locals 1

    .line 478
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    invoke-interface {v0, p0}, Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;->onStopTrackingTouch(Lxiaopeng/widget/SimpleSlider;)V

    .line 481
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
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
    const/4 v0, 0x0

    return v0

    .line 402
    :cond_0
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mTouchEventHandler:Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mTouchEventHandler:Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

    invoke-interface {v0, p0, p1}, Lxiaopeng/widget/SimpleSlider$TouchEventHandler;->onTouchEvent(Lxiaopeng/widget/SimpleSlider;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 405
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public refreshVisual()V
    .locals 3

    .line 171
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawableRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawableRes:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lxiaopeng/widget/SimpleSlider;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :cond_0
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkRes:I

    if-eq v0, v1, :cond_1

    .line 175
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lxiaopeng/widget/SimpleSlider;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 177
    :cond_1
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getRange()I

    move-result v0

    .line 178
    .local v0, "range":I
    if-lez v0, :cond_2

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getProgress()I

    move-result v1

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 179
    .local v1, "scale":F
    :goto_0
    invoke-virtual {p0, v1}, Lxiaopeng/widget/SimpleSlider;->setVisualProgress(F)V

    .line 180
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "maxProgress"    # I

    .line 211
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mMinInitialized:Z

    if-eqz v0, :cond_0

    .line 212
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    if-ge p1, v0, :cond_0

    .line 213
    iget p1, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    .line 216
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mMaxInitialized:Z

    .line 217
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mMinInitialized:Z

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
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    invoke-virtual {p0, v0}, Lxiaopeng/widget/SimpleSlider;->setProgress(I)V

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
    .param p1, "minProgress"    # I

    .line 187
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mMaxInitialized:Z

    if-eqz v0, :cond_0

    .line 188
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    if-le p1, v0, :cond_0

    .line 189
    iget p1, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    .line 192
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mMinInitialized:Z

    .line 193
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mMaxInitialized:Z

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
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    invoke-virtual {p0, v0}, Lxiaopeng/widget/SimpleSlider;->setProgress(I)V

    goto :goto_0

    .line 202
    :cond_2
    iput p1, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    .line 204
    :goto_0
    return-void
.end method

.method public setOnSlideChangeListener(Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;)V
    .locals 0
    .param p1, "onSlideChangeListener"    # Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    .line 239
    iput-object p1, p0, Lxiaopeng/widget/SimpleSlider;->mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    .line 240
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lxiaopeng/widget/SimpleSlider;->setProgressInternal(IZ)V

    .line 244
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 266
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 267
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 269
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lxiaopeng/widget/SimpleSlider;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    :cond_0
    iput-object p1, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

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

    move-result v0

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lxiaopeng/widget/SimpleSlider;->updateDrawableBounds(II)V

    .line 280
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider;->updateDrawableState()V

    .line 283
    :cond_2
    return-void
.end method

.method public setSlideScale(F)V
    .locals 0
    .param p1, "slideScale"    # F

    .line 262
    iput p1, p0, Lxiaopeng/widget/SimpleSlider;->mSlideScale:F

    .line 263
    return-void
.end method

.method public setTickMark(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "tickMark"    # Landroid/graphics/drawable/Drawable;

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

.method public setTouchEventHandler(Lxiaopeng/widget/SimpleSlider$TouchEventHandler;)V
    .locals 0
    .param p1, "touchEventHandler"    # Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

    .line 167
    iput-object p1, p0, Lxiaopeng/widget/SimpleSlider;->mTouchEventHandler:Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

    .line 168
    return-void
.end method

.method protected setVisualProgress(F)V
    .locals 3
    .param p1, "progress"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 341
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 342
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_0

    .line 343
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const v2, 0x102000d

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 344
    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 353
    :cond_0
    if-eqz v0, :cond_1

    .line 354
    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 355
    .local v1, "level":I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 356
    .end local v1    # "level":I
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
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 374
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
    return v0
.end method
