.class Lcom/xiaopeng/xui/widget/slider/SlideLineView;
.super Lcom/xiaopeng/xui/view/XView;
.source "SlideLineView.java"


# instance fields
.field private final ajM:I

.field private final ajN:I

.field private final ajO:I

.field private ajP:Z

.field private ajQ:Landroid/graphics/Paint;

.field ajR:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field ajS:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private ajT:F

.field private ajU:F

.field private ajV:F

.field ajW:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field ajX:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private ajY:Landroid/graphics/Paint;

.field private animator:Landroid/animation/ValueAnimator;

.field private isNight:Z

.field private progress:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 59
    sget v0, Lcom/xiaopeng/xpui/R$style;->XSliderLine:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/16 p3, 0x16

    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajM:I

    .line 31
    const/16 p3, 0x28

    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajN:I

    .line 33
    const/4 p3, 0x4

    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajO:I

    .line 36
    const/high16 p3, 0x28000000

    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajR:I

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajS:I

    .line 42
    const v0, 0x3fc66666    # 1.55f

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajT:F

    .line 43
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajU:F

    .line 44
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajU:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajT:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajV:F

    .line 46
    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajW:I

    .line 48
    const p3, -0xe97c07    # -2.0006944E38f

    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajX:I

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaopeng/xui/c/a;->aF(Landroid/content/Context;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->isNight:Z

    .line 52
    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->progress:F

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    iput-boolean p2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajP:Z

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/slider/SlideLineView;F)F
    .locals 0

    .line 25
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->progress:F

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)Landroid/graphics/Paint;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajQ:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)Landroid/graphics/Paint;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajY:Landroid/graphics/Paint;

    return-object p0
.end method

.method private c(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 78
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 79
    if-eqz p2, :cond_0

    .line 80
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->SlideLineView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 81
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->SlideLineView_slider_line_un_select:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajW:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajW:I

    .line 82
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->SlideLineView_slider_line_select:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajX:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajX:I

    .line 83
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajQ:Landroid/graphics/Paint;

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajQ:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajQ:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajQ:Landroid/graphics/Paint;

    const/high16 p2, 0x40800000    # 4.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajQ:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajX:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajY:Landroid/graphics/Paint;

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajY:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajY:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajY:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajY:Landroid/graphics/Paint;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    const/4 p1, 0x3

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->animator:Landroid/animation/ValueAnimator;

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->animator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/xiaopeng/xui/widget/slider/SlideLineView$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView$1;-><init>(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->animator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->animator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/xiaopeng/xui/widget/slider/SlideLineView$2;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView$2;-><init>(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 129
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setEnabled(Z)V

    .line 130
    return-void

    :array_0
    .array-data 4
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setAlphaByEnable(Z)V
    .locals 1

    .line 215
    if-eqz p1, :cond_0

    const/high16 v0, 0x28000000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x1e000000

    :goto_0
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajW:I

    .line 216
    if-eqz p1, :cond_1

    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajX:I

    const/high16 v0, -0x4d000000

    or-int/2addr p1, v0

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajX:I

    const v0, 0x4cffffff    # 1.3421772E8f

    and-int/2addr p1, v0

    :goto_1
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajX:I

    .line 217
    return-void
.end method


# virtual methods
.method public bs(Z)V
    .locals 4

    .line 186
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajP:Z

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajQ:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    if-eqz p1, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 188
    if-eqz p1, :cond_2

    .line 189
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->isNight:Z

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajY:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajX:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajY:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajS:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajY:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v1, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 196
    :cond_2
    if-nez p1, :cond_3

    .line 197
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_2

    .line 199
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 201
    :goto_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->invalidate()V

    .line 202
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 135
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 136
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xui/c/a;->aF(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->isNight:Z

    .line 137
    new-instance p1, Lcom/xiaopeng/xui/widget/slider/SlideLineView$3;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView$3;-><init>(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 148
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onDraw(Landroid/graphics/Canvas;)V

    .line 149
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajP:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 150
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->isNight:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajQ:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajX:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajY:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajX:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajV:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->progress:F

    mul-float/2addr v1, v2

    sub-float v3, v0, v1

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajU:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->progress:F

    mul-float/2addr v1, v2

    add-float v4, v0, v1

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajV:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->progress:F

    mul-float/2addr v1, v2

    add-float v5, v0, v1

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajU:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->progress:F

    mul-float/2addr v1, v2

    sub-float v6, v0, v1

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajQ:Landroid/graphics/Paint;

    .line 153
    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 157
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajV:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->progress:F

    mul-float/2addr v1, v2

    sub-float v3, v0, v1

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajU:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->progress:F

    mul-float/2addr v1, v2

    add-float v4, v0, v1

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajV:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->progress:F

    mul-float/2addr v1, v2

    add-float v5, v0, v1

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajU:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->progress:F

    mul-float/2addr v1, v2

    sub-float v6, v0, v1

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajY:Landroid/graphics/Paint;

    .line 157
    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajQ:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajS:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajY:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajS:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->progress:F

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajQ:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 165
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->progress:F

    mul-float/2addr v1, v3

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajY:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 168
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->isNight:Z

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajQ:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajW:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajV:F

    sub-float v3, v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajU:F

    add-float v4, v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajV:F

    add-float v5, v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajU:F

    sub-float v6, v0, v1

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajQ:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajQ:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajR:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajQ:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 176
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 180
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/view/XView;->onMeasure(II)V

    .line 181
    const/16 p1, 0x16

    const/16 p2, 0x28

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setMeasuredDimension(II)V

    .line 183
    return-void
.end method

.method public rV()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->ajP:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setAlphaByEnable(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->invalidate()V

    .line 212
    return-void
.end method
