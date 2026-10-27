.class public Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;
.super Landroid/view/View;
.source "XRangeHorSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider$OnSlierTickListener;
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
            "Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;",
            ">;"
        }
    .end annotation
.end field

.field private attrs:Landroid/util/AttributeSet;

.field private context:Landroid/content/Context;

.field private mBarContainerPaddingRectF:Landroid/graphics/RectF;

.field private mBarRect:Landroid/graphics/RectF;

.field mCurrentItem:I

.field private mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field mIndicatorHeight:I

.field mIndicatorRect:Landroid/graphics/Rect;

.field mIndicatorWidth:I

.field private mIsDragging:Z

.field private mListener:Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider$OnSlierTickListener;

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

.field private mRangeBarIndicatorColor:I

.field mRangeBarWidth:I

.field private mScaledTouchSlop:I

.field mStepsLineColor:I

.field mStepsLineHeight:F

.field mStepsLineWidth:F

.field mTextColor:I

.field mTextMargin:F

.field mTextMarginBottom:I

.field mTextPaint:Landroid/graphics/Paint;

.field mTextSize:I

.field private mTouchDownX:F

.field private mVisualProgress:F

.field private textRect:Landroid/graphics/Rect;

.field textWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 285
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

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

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 74
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

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

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 46
    iput p3, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mCurrentItem:I

    .line 55
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mMarkTextsList:Ljava/util/List;

    .line 286
    new-instance p3, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider$1;

    const-string p4, "visual_progress"

    invoke-direct {p3, p0, p4}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider$1;-><init>(Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->context:Landroid/content/Context;

    .line 80
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;F)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->setVisualProgress(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mVisualProgress:F

    return p0
.end method

.method private getGap()F
    .locals 2

    .line 139
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mRangeBarWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mMarkTextsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->attrs:Landroid/util/AttributeSet;

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 86
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_mark_text_array:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    array-length v1, v0

    if-lez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mMarkTextsList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    :cond_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_indicator_width:I

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIndicatorWidth:I

    .line 91
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_indicator_height:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIndicatorHeight:I

    .line 92
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_bar_width:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mRangeBarWidth:I

    .line 93
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_bar_height:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mRangeBarHeight:I

    .line 94
    new-instance v0, Landroid/graphics/RectF;

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_bar_padding_left:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_bar_padding_top:I

    .line 95
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_bar_padding_right:I

    .line 96
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_bar_padding_bottom:I

    .line 97
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mBarContainerPaddingRectF:Landroid/graphics/RectF;

    .line 98
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIndicatorHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mRangeBarHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v0, v3

    const/high16 v1, 0x41f00000    # 30.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x42480000    # 50.0f

    .line 100
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mRangeBarWidth:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget v5, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mRangeBarHeight:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    invoke-direct {v3, v1, v0, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mBarRect:Landroid/graphics/RectF;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIndicatorWidth:I

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIndicatorHeight:I

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIndicatorRect:Landroid/graphics/Rect;

    .line 104
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_bar_mark_text_size:I

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mTextSize:I

    .line 105
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_bar_mark_text_color:I

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$color;->x_theme_text_03:I

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mTextColor:I

    .line 109
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$color;->x_color_text_2:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mTextColor:I

    .line 110
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_bar_mark_text_margin_left:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mTextMargin:F

    .line 111
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_bar_color:I

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$color;->purple_700:I

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mRangeBarColor:I

    .line 112
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_bar_indicator_color:I

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$color;->purple_700:I

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mRangeBarIndicatorColor:I

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mPaint:Landroid/graphics/Paint;

    .line 115
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mRangeBarHeight:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mTextPaint:Landroid/graphics/Paint;

    .line 120
    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mTextColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 125
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$drawable;->x_range_bar_indicator:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 126
    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mRangeBarIndicatorColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 127
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$dimen;->x_range_bar_line_width:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mStepsLineWidth:F

    .line 128
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$dimen;->x_range_bar_line_height:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mStepsLineHeight:F

    .line 129
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$color;->x_range_slider_bar_line_color:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mStepsLineColor:I

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->textRect:Landroid/graphics/Rect;

    .line 132
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mTextPaint:Landroid/graphics/Paint;

    const-string/jumbo v4, "\u4f4e"

    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->textWidth:I

    .line 134
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XRangeSlider_range_text_margin_bottom_bar:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mTextMarginBottom:I

    .line 135
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

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

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mRangeBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mBarRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private onDrawRangeSteps(Landroid/graphics/Canvas;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mMarkTextsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mBarRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->textWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 181
    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mRangeBarWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 182
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mBarRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mTextMarginBottom:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 185
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mMarkTextsList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v1, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v1, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onDrawTickMark(Landroid/graphics/Canvas;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 191
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mRangeBarWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 192
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIsDragging:Z

    if-eqz v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIndicatorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mProgress:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIndicatorRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mBarRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mCurrentItem:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIndicatorWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIndicatorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mBarRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIndicatorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIndicatorRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIndicatorHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIndicatorRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIndicatorWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIndicatorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

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

    .line 300
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mVisualProgress:F

    .line 301
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->invalidate()V

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

    .line 305
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->setPressed(Z)V

    .line 306
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->onStartTrackingTouch()V

    .line 307
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->trackTouchEvent(Landroid/view/MotionEvent;)V

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

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mBarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mBarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mBarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr p1, v0

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mBarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIndicatorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 268
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->setProgressInternal(FZZ)Z

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mMarkTextsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 351
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 352
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 353
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$color;->x_color_text_2:I

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mTextColor:I

    :cond_0
    return-void
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

    .line 166
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 167
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->onDrawBar(Landroid/graphics/Canvas;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->onDrawRangeSteps(Landroid/graphics/Canvas;)V

    .line 169
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->onDrawTickMark(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
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

    .line 150
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mRangeBarWidth:I

    add-int/lit8 v0, v0, 0x64

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 151
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIsDragging:Z

    return-void
.end method

.method onStopTrackingTouch()V
    .locals 4

    const/4 v0, 0x0

    .line 315
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIsDragging:Z

    .line 316
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mRangeBarWidth:I

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mMarkTextsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    div-int/2addr v1, v2

    int-to-float v1, v1

    .line 317
    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mProgress:F

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-gt v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-gt v1, v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 325
    :goto_0
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mCurrentItem:I

    .line 326
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->invalidate()V

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mListener:Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider$OnSlierTickListener;

    if-eqz v0, :cond_2

    .line 328
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mCurrentItem:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider$OnSlierTickListener;->onChanged(I)V

    :cond_2
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

    .line 206
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

    goto :goto_0

    .line 244
    :cond_0
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIsDragging:Z

    if-eqz p1, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->onStopTrackingTouch()V

    .line 246
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->setPressed(Z)V

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->invalidate()V

    goto :goto_0

    .line 220
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->startDrag(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 225
    :cond_3
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mIsDragging:Z

    if-eqz v0, :cond_4

    .line 226
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 227
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->onStopTrackingTouch()V

    .line 228
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->setPressed(Z)V

    goto :goto_0

    .line 232
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->onStartTrackingTouch()V

    .line 233
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 234
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->onStopTrackingTouch()V

    goto :goto_0

    .line 208
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mTouchDownX:F

    .line 212
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->startDrag(Landroid/view/MotionEvent;)V

    :goto_0
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

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mMarkTextsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mMarkTextsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setIndex(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    if-gez p1, :cond_0

    const/4 v0, 0x0

    .line 156
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mCurrentItem:I

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mMarkTextsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mMarkTextsList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 158
    :cond_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mCurrentItem:I

    if-eq v0, p1, :cond_2

    .line 159
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mCurrentItem:I

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->invalidate()V

    :cond_2
    return-void
.end method

.method public setListener(Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider$OnSlierTickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 342
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mListener:Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider$OnSlierTickListener;

    return-void
.end method

.method declared-synchronized setProgressInternal(FZZ)Z
    .locals 0
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

    .line 272
    :try_start_0
    iget p2, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mProgress:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 273
    monitor-exit p0

    return p1

    .line 275
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->mProgress:F

    .line 276
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 282
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
