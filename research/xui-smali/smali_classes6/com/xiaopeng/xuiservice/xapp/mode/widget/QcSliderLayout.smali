.class public Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "QcSliderLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;,
        Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;,
        Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$SliderFrom;,
        Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$OnSlideChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_BG_COLOR:I = 0x5cbbc2d1

.field private static final DEFAULT_BG_CORNER_RADIUS:I = 0x20

.field private static final DEFAULT_SLIDER_COLOR:I = 0xffffff

.field private static final DEFAULT_SLIDER_INNER_CORNER_RADIUS:I = 0x1b

.field private static final DEFAULT_SLIDER_OUTER_CORNER_RADIUS:I = 0x5

.field private static final MAX_LEVEL:I = 0x2710

.field private static final MAX_VALUE:I = 0x64

.field private static final MIN_VALUE:I = 0x0

.field private static final NO_ALPHA:I = 0xff

.field public static final SLIDE_FROM_BOTTOM:I = 0x3

.field public static final SLIDE_FROM_LEFT:I = 0x0

.field public static final SLIDE_FROM_RIGHT:I = 0x2

.field public static final SLIDE_FROM_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "QcSliderLayout"


# instance fields
.field private mBgColor:I

.field private mBgColorId:I

.field private mBounds:Landroid/graphics/RectF;

.field private mContentBounds:Landroid/graphics/Rect;

.field private mCornerRadius:I

.field private mDisabledAlpha:F

.field private mDispatchTouchDirectly:Z

.field private mDragging:Z

.field private mEnabled:Z

.field private mInset:I

.field private mLastMoveX:F

.field private mLastMoveY:F

.field private mLimitTouchOnly:Z

.field private mMaxInitialized:Z

.field private mMaxLevel:I

.field private mMaxLimit:I

.field private mMaxLimitInit:Z

.field private mMaxPercentLimit:F

.field private mMaxProgress:I

.field private mMinInitialized:Z

.field private mMinLimit:I

.field private mMinLimitInit:Z

.field private mMinPercentLimit:F

.field private mMinProgress:I

.field private mOnSlideChangeListener:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$OnSlideChangeListener;

.field private mProgress:I

.field private mQcSliderDrawable:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;

.field private mSlideScale:F

.field private mSliderColor:I

.field private mSliderColorId:I

.field private mSliderFrom:I

.field private mSliderInnerCornerRadius:I

.field private mSliderInset:I

.field private mSliderOuterCornerRadius:I

.field private mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 165
    const v0, 0x7f0f00c9

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 169
    const v0, 0x7f0f00c9

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 173
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    const/16 v0, 0x2710

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxLevel:I

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mProgress:I

    .line 100
    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinProgress:I

    .line 101
    const/16 v1, 0x64

    iput v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxProgress:I

    .line 102
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxInitialized:Z

    .line 103
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinInitialized:Z

    .line 107
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinLimit:I

    .line 111
    iput v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxLimit:I

    .line 112
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinLimitInit:Z

    .line 113
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxLimitInit:Z

    .line 117
    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinPercentLimit:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxPercentLimit:F

    .line 123
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mLimitTouchOnly:Z

    .line 127
    iput v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSlideScale:F

    .line 132
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mDispatchTouchDirectly:Z

    .line 140
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mDragging:Z

    .line 141
    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSliderFrom:I

    .line 154
    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mInset:I

    .line 155
    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSliderInset:I

    .line 174
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 175
    return-void
.end method

.method private activateChildFromBottom(Landroid/view/ViewGroup;FI)V
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "sliderTop"    # F
    .param p3, "offset"    # I

    .line 572
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 573
    .local v0, "count":I
    if-lez v0, :cond_2

    .line 574
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 575
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 576
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 577
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-direct {p0, v4, p2, v5}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->activateChildFromBottom(Landroid/view/ViewGroup;FI)V

    goto :goto_1

    .line 579
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, p3

    int-to-float v4, v4

    cmpl-float v4, v4, p2

    if-lez v4, :cond_1

    .line 580
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    .line 582
    :cond_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setActivated(Z)V

    .line 574
    .end local v3    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 587
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private activateChildFromLeft(Landroid/view/ViewGroup;FI)V
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "sliderRight"    # F
    .param p3, "offset"    # I

    .line 518
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 519
    .local v0, "count":I
    if-lez v0, :cond_2

    .line 520
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 521
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 522
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 523
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-direct {p0, v4, p2, v5}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->activateChildFromLeft(Landroid/view/ViewGroup;FI)V

    goto :goto_1

    .line 525
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v4, p3

    int-to-float v4, v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_1

    .line 526
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    .line 528
    :cond_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setActivated(Z)V

    .line 520
    .end local v3    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 533
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private activateChildFromRight(Landroid/view/ViewGroup;FI)V
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "sliderLeft"    # F
    .param p3, "offset"    # I

    .line 536
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 537
    .local v0, "count":I
    if-lez v0, :cond_2

    .line 538
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 539
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 540
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 541
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-direct {p0, v4, p2, v5}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->activateChildFromRight(Landroid/view/ViewGroup;FI)V

    goto :goto_1

    .line 543
    :cond_0
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->shouldActivate(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, p3

    int-to-float v4, v4

    cmpl-float v4, v4, p2

    if-lez v4, :cond_1

    .line 544
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    .line 546
    :cond_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setActivated(Z)V

    .line 538
    .end local v3    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private activateChildFromTop(Landroid/view/ViewGroup;FI)V
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "sliderBottom"    # F
    .param p3, "offset"    # I

    .line 554
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 555
    .local v0, "count":I
    if-lez v0, :cond_2

    .line 556
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 557
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 558
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 559
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-direct {p0, v4, p2, v5}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->activateChildFromTop(Landroid/view/ViewGroup;FI)V

    goto :goto_1

    .line 561
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, p3

    int-to-float v4, v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_1

    .line 562
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    .line 564
    :cond_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setActivated(Z)V

    .line 556
    .end local v3    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private activateChildren()V
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mQcSliderDrawable:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->getSliderBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 500
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSliderFrom:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 512
    :pswitch_0
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-direct {p0, p0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->activateChildFromBottom(Landroid/view/ViewGroup;FI)V

    goto :goto_0

    .line 505
    :pswitch_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-direct {p0, p0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->activateChildFromRight(Landroid/view/ViewGroup;FI)V

    .line 506
    goto :goto_0

    .line 509
    :pswitch_2
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-direct {p0, p0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->activateChildFromTop(Landroid/view/ViewGroup;FI)V

    .line 510
    goto :goto_0

    .line 502
    :pswitch_3
    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-direct {p0, p0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->activateChildFromLeft(Landroid/view/ViewGroup;FI)V

    .line 503
    nop

    .line 515
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private assetLimit(I)V
    .locals 5
    .param p1, "limit"    # I

    .line 300
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->getMax()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-gt p1, v0, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->getMin()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 305
    return-void

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->getMin()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "limit(%s) is less than min(%s), Please set min first"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->getMax()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "limit(%s) is larger than max(%s), Please set max first"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private convertPercent(FZ)I
    .locals 3
    .param p1, "percent"    # F
    .param p2, "wrapFloor"    # Z

    .line 674
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->getRange()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->getMin()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 676
    .local v0, "progress":F
    if-eqz p2, :cond_0

    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    :goto_0
    double-to-int v1, v1

    goto :goto_1

    :cond_0
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    goto :goto_0

    .line 677
    .local v1, "progressInt":I
    :goto_1
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->limitProgress(IZ)I

    move-result v2

    return v2
.end method

.method private convertProgress(I)F
    .locals 3
    .param p1, "progress"    # I

    .line 681
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->getRange()I

    move-result v0

    .line 682
    .local v0, "range":I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->getMin()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 184
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 185
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/libtheme/ThemeViewModel;->create(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    .line 186
    sget-object v1, Lcom/xiaopeng/xuiservice/R$styleable;->QcSliderLayout:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 188
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSliderFrom:I

    .line 189
    const/4 v4, 0x2

    const v5, 0x5cbbc2d1

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mBgColor:I

    .line 190
    const/4 v5, 0x7

    const v6, 0xffffff

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSliderColor:I

    .line 191
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mBgColorId:I

    .line 192
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSliderColorId:I

    .line 193
    const/4 v4, 0x3

    const/16 v5, 0x20

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mCornerRadius:I

    .line 194
    const/16 v4, 0xa

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSliderOuterCornerRadius:I

    .line 195
    const/16 v2, 0x8

    const/16 v4, 0x1b

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSliderInnerCornerRadius:I

    .line 196
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mInset:I

    .line 197
    const/16 v2, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSliderInset:I

    .line 198
    const/4 v2, 0x6

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSlideScale:F

    .line 200
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mEnabled:Z

    .line 201
    const v2, 0x3eb851ec    # 0.36f

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mDisabledAlpha:F

    .line 202
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setWillNotDraw(Z)V

    .line 205
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 206
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mBounds:Landroid/graphics/RectF;

    .line 207
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 208
    .local v0, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mTouchSlop:I

    .line 209
    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;-><init>()V

    iget v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mBgColor:I

    iget v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSliderColor:I

    .line 210
    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->setColor(II)Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mCornerRadius:I

    int-to-float v3, v3

    .line 211
    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->setCornerRadius(F)Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSliderOuterCornerRadius:I

    int-to-float v3, v3

    .line 212
    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->setSliderOuterCornerRadius(F)Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSliderInnerCornerRadius:I

    int-to-float v3, v3

    .line 213
    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->setSliderInnerCornerRadius(F)Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSliderFrom:I

    .line 214
    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->setSliderFrom(I)Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSliderInset:I

    iget v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSliderInset:I

    .line 215
    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->setSliderInset(II)Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mInset:I

    iget v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mInset:I

    .line 216
    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->setInset(II)Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;

    move-result-object v2

    .line 217
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->build()Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mQcSliderDrawable:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;

    .line 218
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mQcSliderDrawable:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;

    invoke-virtual {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 219
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    new-instance v3, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/libtheme/ThemeViewModel;->addCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 225
    return-void
.end method

.method private limitDrawablePercent(FZ)F
    .locals 3
    .param p1, "percent"    # F
    .param p2, "limit"    # Z

    .line 658
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinPercentLimit:F

    .line 659
    .local v0, "min":F
    :goto_0
    if-nez p2, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxPercentLimit:F

    .line 660
    .local v1, "max":F
    :goto_1
    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    return v2
.end method

.method private limitProgress(IZ)I
    .locals 3
    .param p1, "progress"    # I
    .param p2, "limit"    # Z

    .line 664
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinLimitInit:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinLimit:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinProgress:I

    .line 665
    .local v0, "min":I
    :goto_0
    if-eqz p2, :cond_1

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxLimitInit:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxLimit:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxProgress:I

    .line 666
    .local v1, "max":I
    :goto_1
    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v2

    return v2
.end method

.method private onStartTrackingTouch()V
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mOnSlideChangeListener:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$OnSlideChangeListener;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mOnSlideChangeListener:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$OnSlideChangeListener;

    invoke-interface {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$OnSlideChangeListener;->onStartTrackingTouch(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;)V

    .line 638
    :cond_0
    return-void
.end method

.method private onStopTrackingTouch()V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mOnSlideChangeListener:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$OnSlideChangeListener;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mOnSlideChangeListener:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$OnSlideChangeListener;

    invoke-interface {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$OnSlideChangeListener;->onStopTrackingTouch(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;)V

    .line 648
    :cond_0
    return-void
.end method

.method private setDrawablePercent(F)V
    .locals 5
    .param p1, "percent"    # F

    .line 651
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxLevel:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 652
    .local v0, "level":I
    const-string v1, "QcSliderLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDrawablePercent: percent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", currentLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mQcSliderDrawable:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mQcSliderDrawable:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->setLevel(I)Z

    move-result v1

    .line 654
    .local v1, "changed":Z
    const-string v2, "QcSliderLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDrawablePercent: levelChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method private shouldActivate(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 590
    const/4 v0, 0x1

    return v0
.end method

.method private trackMove(FF)V
    .locals 7
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .line 594
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mQcSliderDrawable:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->getContainerBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 596
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mQcSliderDrawable:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->getLevel()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x461c4000    # 10000.0f

    div-float/2addr v1, v2

    .line 597
    .local v1, "currentPercent":F
    move v2, v1

    .line 598
    .local v2, "percent":F
    iget v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSliderFrom:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 609
    :pswitch_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p2, v3

    sub-float v2, v1, v3

    goto :goto_0

    .line 603
    :pswitch_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    sub-float v2, v1, v3

    .line 604
    goto :goto_0

    .line 606
    :pswitch_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p2, v3

    add-float v2, v1, v3

    .line 607
    goto :goto_0

    .line 600
    :pswitch_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    add-float v2, v1, v3

    .line 601
    nop

    .line 612
    :goto_0
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->limitDrawablePercent(FZ)F

    move-result v2

    .line 613
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->convertPercent(FZ)I

    move-result v3

    .line 614
    .local v3, "newProgress":I
    iget-boolean v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mDispatchTouchDirectly:Z

    if-eqz v4, :cond_0

    .line 615
    const-string v4, "QcSliderLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trackMove: dispatchTouchDirectly, newProgress="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", oldProgress="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mProgress:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", percent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mOnSlideChangeListener:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$OnSlideChangeListener;

    if-eqz v4, :cond_1

    .line 617
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mOnSlideChangeListener:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$OnSlideChangeListener;

    invoke-interface {v4, p0, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$OnSlideChangeListener;->onProgressChanged(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;I)V

    goto :goto_1

    .line 620
    :cond_0
    const-string v4, "QcSliderLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trackMove: newProgress="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", oldProgress="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mProgress:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", percent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setDrawablePercent(F)V

    .line 622
    iget v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mProgress:I

    if-eq v3, v4, :cond_1

    .line 623
    iput v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mProgress:I

    .line 624
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mOnSlideChangeListener:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$OnSlideChangeListener;

    if-eqz v4, :cond_1

    .line 625
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mOnSlideChangeListener:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$OnSlideChangeListener;

    iget v5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mProgress:I

    invoke-interface {v4, p0, v5}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$OnSlideChangeListener;->onProgressChanged(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;I)V

    .line 629
    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 421
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 422
    return v1

    .line 424
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 425
    .local v0, "action":I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 427
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setPressed(Z)V

    .line 428
    goto :goto_0

    .line 431
    :cond_1
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setPressed(Z)V

    .line 435
    :goto_0
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mQcSliderDrawable:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mQcSliderDrawable:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mDisabledAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->setAlpha(I)V

    .line 386
    :cond_1
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->drawableStateChanged()V

    .line 387
    return-void
.end method

.method public getMax()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxProgress:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinProgress:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 316
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mProgress:I

    return v0
.end method

.method public getRange()I
    .locals 2

    .line 312
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxProgress:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinProgress:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSlideScale()F
    .locals 1

    .line 354
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSlideScale:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 404
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onAttachedToWindow()V

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/libtheme/ThemeViewModel;->onAttachedToWindow(Landroid/view/View;)V

    .line 406
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 391
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->onConfigurationChanged(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 393
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 410
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onDetachedFromWindow()V

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/libtheme/ThemeViewModel;->onDetachedFromWindow(Landroid/view/View;)V

    .line 412
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 492
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mQcSliderDrawable:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 495
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->activateChildren()V

    .line 496
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 179
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onFinishInflate()V

    .line 180
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mEnabled:Z

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setEnabled(Z)V

    .line 181
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 483
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->onSizeChanged(IIII)V

    .line 485
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mBounds:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 486
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mContentBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 487
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mQcSliderDrawable:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 488
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 440
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 441
    return v1

    .line 443
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 444
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 452
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 453
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 454
    .local v3, "y":F
    iget v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mTouchX:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_1

    iget v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mTouchY:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 455
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 456
    iget v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mLastMoveX:F

    sub-float v4, v2, v4

    .line 457
    .local v4, "moveX":F
    iget v5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mLastMoveY:F

    sub-float v5, v3, v5

    .line 458
    .local v5, "moveY":F
    iget-boolean v6, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mDragging:Z

    if-nez v6, :cond_2

    .line 459
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mDragging:Z

    .line 460
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->onStartTrackingTouch()V

    .line 462
    :cond_2
    iget v6, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSlideScale:F

    mul-float/2addr v4, v6

    .line 463
    iget v6, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSlideScale:F

    mul-float/2addr v5, v6

    .line 464
    invoke-direct {p0, v4, v5}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->trackMove(FF)V

    .line 465
    iput v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mLastMoveX:F

    .line 466
    iput v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mLastMoveY:F

    .line 467
    .end local v4    # "moveX":F
    .end local v5    # "moveY":F
    goto :goto_0

    .line 471
    .end local v2    # "x":F
    .end local v3    # "y":F
    :pswitch_1
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mDragging:Z

    if-eqz v2, :cond_3

    .line 472
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mDragging:Z

    .line 473
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->onStopTrackingTouch()V

    goto :goto_0

    .line 446
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mTouchX:F

    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mTouchY:F

    .line 448
    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mTouchX:F

    iput v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mLastMoveX:F

    .line 449
    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mTouchY:F

    iput v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mLastMoveY:F

    .line 450
    nop

    .line 478
    :cond_3
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public refreshTheme()V
    .locals 3

    .line 396
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 397
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 398
    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mBgColorId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSliderColorId:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setColor(II)V

    .line 400
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "sliderColor"    # I

    .line 346
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSliderColor:I

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mQcSliderDrawable:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mQcSliderDrawable:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mBgColor:I

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->setColor(II)V

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mQcSliderDrawable:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    :cond_0
    return-void
.end method

.method public setColor(II)V
    .locals 1
    .param p1, "bgColor"    # I
    .param p2, "sliderColor"    # I

    .line 337
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mBgColor:I

    .line 338
    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSliderColor:I

    .line 339
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mQcSliderDrawable:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mQcSliderDrawable:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->setColor(II)V

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mQcSliderDrawable:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    :cond_0
    return-void
.end method

.method public setDispatchTouchDirectly(Z)V
    .locals 0
    .param p1, "dispatchTouchDirectly"    # Z

    .line 365
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mDispatchTouchDirectly:Z

    .line 366
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 370
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->getChildCount()I

    move-result v0

    .line 371
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 372
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 373
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 374
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 372
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    .end local v1    # "i":I
    :cond_0
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setEnabled(Z)V

    .line 379
    return-void
.end method

.method public setLimitTouchOnly(Z)V
    .locals 0
    .param p1, "limitTouchOnly"    # Z

    .line 308
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mLimitTouchOnly:Z

    .line 309
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "maxProgress"    # I

    .line 256
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinInitialized:Z

    if-eqz v0, :cond_0

    .line 257
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinProgress:I

    if-ge p1, v0, :cond_0

    .line 258
    iget p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinProgress:I

    .line 261
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxInitialized:Z

    .line 262
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinInitialized:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxProgress:I

    if-eq p1, v0, :cond_2

    .line 263
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxProgress:I

    .line 264
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->postInvalidate()V

    .line 266
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mProgress:I

    if-le v0, p1, :cond_1

    .line 267
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mProgress:I

    .line 269
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setProgress(I)V

    goto :goto_0

    .line 271
    :cond_2
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxProgress:I

    .line 273
    :goto_0
    return-void
.end method

.method public setMaxLimit(I)V
    .locals 2
    .param p1, "maxLimit"    # I

    .line 289
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->assetLimit(I)V

    .line 290
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxLimitInit:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxLimit:I

    if-eq p1, v0, :cond_1

    .line 291
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxLimit:I

    .line 292
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->getMin()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->getRange()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxPercentLimit:F

    .line 293
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mLimitTouchOnly:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mProgress:I

    if-le v0, p1, :cond_1

    .line 294
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setProgress(I)V

    .line 297
    :cond_1
    return-void
.end method

.method public setMin(I)V
    .locals 1
    .param p1, "minProgress"    # I

    .line 232
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxInitialized:Z

    if-eqz v0, :cond_0

    .line 233
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxProgress:I

    if-le p1, v0, :cond_0

    .line 234
    iget p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxProgress:I

    .line 237
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinInitialized:Z

    .line 238
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxInitialized:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinProgress:I

    if-eq p1, v0, :cond_2

    .line 239
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinProgress:I

    .line 240
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->postInvalidate()V

    .line 242
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mProgress:I

    if-ge v0, p1, :cond_1

    .line 243
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mProgress:I

    .line 245
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setProgress(I)V

    goto :goto_0

    .line 247
    :cond_2
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinProgress:I

    .line 249
    :goto_0
    return-void
.end method

.method public setMinLimit(I)V
    .locals 2
    .param p1, "minLimit"    # I

    .line 277
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->assetLimit(I)V

    .line 278
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinLimitInit:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinLimit:I

    if-eq p1, v0, :cond_1

    .line 279
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinLimit:I

    .line 280
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->getMin()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->getRange()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinPercentLimit:F

    .line 281
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mLimitTouchOnly:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mProgress:I

    if-ge v0, p1, :cond_1

    .line 282
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setProgress(I)V

    .line 285
    :cond_1
    return-void
.end method

.method public setOnSlideChangeListener(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$OnSlideChangeListener;)V
    .locals 0
    .param p1, "onSlideChangeListener"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$OnSlideChangeListener;

    .line 324
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mOnSlideChangeListener:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$OnSlideChangeListener;

    .line 325
    return-void
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .line 328
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mLimitTouchOnly:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->limitProgress(IZ)I

    move-result p1

    .line 329
    const-string v0, "QcSliderLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMaxProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", min="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mMinProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->convertProgress(I)F

    move-result v0

    .line 332
    .local v0, "percent":F
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mLimitTouchOnly:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->limitDrawablePercent(FZ)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setDrawablePercent(F)V

    .line 333
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mProgress:I

    .line 334
    return-void
.end method

.method public setSlideScale(F)V
    .locals 0
    .param p1, "slideScale"    # F

    .line 358
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSlideScale:F

    .line 359
    return-void
.end method

.method public setSliderFrom(I)V
    .locals 0
    .param p1, "sliderFrom"    # I

    .line 320
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mSliderFrom:I

    .line 321
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->mQcSliderDrawable:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
