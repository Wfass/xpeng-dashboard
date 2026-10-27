.class public Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;
.super Landroid/view/View;
.source "XRangeSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider$OnSlierTickListener;
    }
.end annotation


# static fields
.field private static final PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

.field private static final TAG:Ljava/lang/String; = "XRangeSlider"


# instance fields
.field private final VISUAL_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;",
            ">;"
        }
    .end annotation
.end field

.field private mBarContainerPaddingRectF:Landroid/graphics/RectF;

.field private mBarRect:Landroid/graphics/RectF;

.field mCurrentItem:I

.field private mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field mIndicatorHeight:I

.field mIndicatorRect:Landroid/graphics/Rect;

.field mIndicatorWidth:I

.field private mIsDragging:Z

.field private mListener:Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider$OnSlierTickListener;

.field mMarkTextsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field mPaint:Landroid/graphics/Paint;

.field private mProgress:F

.field private mRangeBarColor:I

.field mRangeBarHeight:I

.field mRangeBarWidth:I

.field private mScaledTouchSlop:I

.field mStepsLineColor:I

.field mStepsLineHeight:F

.field mStepsLineWidth:F

.field mTextColor:I

.field mTextMargin:F

.field mTextPaint:Landroid/graphics/Paint;

.field mTextSize:I

.field private mTouchDownX:F

.field private mVisualProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 277
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mCurrentItem:I

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mMarkTextsList:Ljava/util/List;

    .line 278
    new-instance p1, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider$1;

    const-string p3, "visual_progress"

    invoke-direct {p1, p0, p3}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider$1;-><init>(Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    .line 73
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;F)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->setVisualProgress(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mVisualProgress:F

    return p0
.end method

.method private getGap()F
    .locals 2

    .line 117
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mRangeBarHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mMarkTextsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mScaledTouchSlop:I

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 80
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_mark_text_array:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    array-length v1, v0

    if-lez v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mMarkTextsList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    :cond_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_indicator_width:I

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mIndicatorWidth:I

    .line 85
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_indicator_height:I

    const/16 v2, 0x60

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mIndicatorHeight:I

    .line 86
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_bar_width:I

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mRangeBarWidth:I

    .line 87
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_bar_height:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mRangeBarHeight:I

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_bar_padding_left:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_bar_padding_top:I

    .line 89
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_bar_padding_right:I

    .line 90
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_bar_padding_bottom:I

    .line 91
    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v0, v2, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarContainerPaddingRectF:Landroid/graphics/RectF;

    .line 92
    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mIndicatorWidth:I

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v0, v2

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mRangeBarWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v0, v2

    .line 93
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarContainerPaddingRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mRangeBarWidth:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarContainerPaddingRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget v7, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mRangeBarHeight:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-direct {v2, v0, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarRect:Landroid/graphics/RectF;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarContainerPaddingRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v4, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mIndicatorWidth:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarContainerPaddingRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v2, v3, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mIndicatorRect:Landroid/graphics/Rect;

    .line 98
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_bar_mark_text_size:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mTextSize:I

    .line 99
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_bar_mark_text_color:I

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$color;->x_theme_text_03:I

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mTextColor:I

    .line 100
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_bar_mark_text_margin_left:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mTextMargin:F

    .line 102
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mPaint:Landroid/graphics/Paint;

    .line 103
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mTextPaint:Landroid/graphics/Paint;

    .line 104
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mTextColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 109
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$drawable;->x_range_bar_indicator:I

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$color;->x_range_slider_bar_color:I

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mRangeBarColor:I

    .line 111
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$dimen;->x_range_bar_line_width:I

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mStepsLineWidth:F

    .line 112
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$dimen;->x_range_bar_line_height:I

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mStepsLineHeight:F

    .line 113
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$color;->x_range_slider_bar_line_color:I

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mStepsLineColor:I

    return-void
.end method

.method private onDrawBar(Landroid/graphics/Canvas;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mRangeBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private onDrawRangeSteps(Landroid/graphics/Canvas;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mMarkTextsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarContainerPaddingRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    .line 162
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->getGap()F

    move-result v2

    .line 163
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarContainerPaddingRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float v4, v2, v9

    add-float v10, v3, v4

    .line 165
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mStepsLineColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v11, 0x0

    move v13, v10

    move v12, v11

    :goto_0
    if-ge v12, v0, :cond_0

    .line 168
    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mStepsLineWidth:F

    add-float v6, v1, v3

    iget-object v8, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v1

    move v5, v13

    move v7, v13

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v13, v2

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarContainerPaddingRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v3

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mStepsLineWidth:F

    add-float/2addr v1, v3

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mTextMargin:F

    add-float/2addr v1, v3

    .line 174
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 175
    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    div-float/2addr v4, v9

    sub-float/2addr v10, v4

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    div-float/2addr v3, v9

    sub-float/2addr v10, v3

    :goto_1
    if-ge v11, v0, :cond_1

    .line 178
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mMarkTextsList:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v10, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v10, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private onDrawTickMark(Landroid/graphics/Canvas;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 184
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mIndicatorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarContainerPaddingRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mProgress:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mIndicatorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarContainerPaddingRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->getGap()F

    move-result v2

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mCurrentItem:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mIndicatorHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mIndicatorRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mIndicatorHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mIndicatorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private setVisualProgress(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 292
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mVisualProgress:F

    .line 293
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->invalidate()V

    return-void
.end method

.method private startDrag(Landroid/view/MotionEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 v0, 0x1

    .line 297
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->setPressed(Z)V

    .line 298
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->onStartTrackingTouch()V

    .line 299
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->trackTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 248
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mRangeBarHeight:I

    int-to-float p1, p1

    .line 253
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v1

    int-to-float v1, v0

    div-float/2addr p1, v1

    :goto_0
    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 261
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->setProgressInternal(FZZ)Z

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mMarkTextsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 148
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 149
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->onDrawBar(Landroid/graphics/Canvas;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->onDrawRangeSteps(Landroid/graphics/Canvas;)V

    .line 151
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->onDrawTickMark(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarContainerPaddingRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mStepsLineWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mTextMargin:F

    add-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 123
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 122
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarContainerPaddingRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 124
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 127
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mIsDragging:Z

    return-void
.end method

.method onStopTrackingTouch()V
    .locals 2

    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mIsDragging:Z

    .line 308
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->getGap()F

    move-result v0

    .line 309
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mProgress:F

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 310
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mMarkTextsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mMarkTextsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 313
    :cond_0
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mCurrentItem:I

    if-eq v1, v0, :cond_1

    .line 314
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mCurrentItem:I

    .line 315
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->invalidate()V

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mListener:Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider$OnSlierTickListener;

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mCurrentItem:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider$OnSlierTickListener;->onChanged(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 235
    :cond_0
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mIsDragging:Z

    if-eqz p1, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->onStopTrackingTouch()V

    .line 237
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->setPressed(Z)V

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->invalidate()V

    goto :goto_1

    .line 209
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 210
    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mTouchDownX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mScaledTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    .line 211
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->startDrag(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 217
    :cond_3
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mIsDragging:Z

    if-eqz v0, :cond_4

    .line 218
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 219
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->onStopTrackingTouch()V

    .line 220
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->setPressed(Z)V

    goto :goto_0

    .line 224
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->onStartTrackingTouch()V

    .line 225
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 226
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->onStopTrackingTouch()V

    .line 231
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->invalidate()V

    goto :goto_1

    .line 201
    :cond_5
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->startDrag(Landroid/view/MotionEvent;)V

    :cond_6
    :goto_1
    return v1
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mMarkTextsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mMarkTextsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setIndex(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XRangeSlider"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_0

    const/4 v0, 0x0

    .line 138
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mCurrentItem:I

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mMarkTextsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mMarkTextsList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 140
    :cond_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mCurrentItem:I

    if-eq v0, p1, :cond_2

    .line 141
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mCurrentItem:I

    .line 142
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->invalidate()V

    :cond_2
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 131
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mRangeBarHeight:I

    .line 132
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mBarContainerPaddingRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mRangeBarHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 133
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->invalidate()V

    return-void
.end method

.method public setListener(Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider$OnSlierTickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 330
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mListener:Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider$OnSlierTickListener;

    return-void
.end method

.method declared-synchronized setProgressInternal(FZZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "progress",
            "fromUser",
            "animate"
        }
    .end annotation

    monitor-enter p0

    .line 265
    :try_start_0
    iget p2, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mProgress:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float p2, p1, p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 266
    monitor-exit p0

    return p3

    .line 268
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->mProgress:F

    .line 269
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    const/4 v0, 0x1

    new-array v1, v0, [F

    aput p1, v1, p3

    invoke-static {p0, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 270
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    const-wide/16 p2, 0x50

    .line 271
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 272
    sget-object p2, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 273
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
