.class public Lcom/xiaopeng/xui/widget/slider/XSlider;
.super Lcom/xiaopeng/xui/widget/XViewGroup;
.source "XSlider.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/slider/XSlider$ProgressChangeListener;,
        Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;
    }
.end annotation


# static fields
.field private static final BG_ITEM_MARGIN:I = 0x12

.field public static final BG_ITEM_SIZE:I = 0x1e

.field private static final CHILDREN_LAYOUT_HEIGHT:I = 0x28

.field private static final CHILDREN_LAYOUT_WIDTH:I = 0x14

.field private static final INDICATOR_BALL_RADIUS:I = 0x9

.field private static final INDICATOR_HOLD_HORIZONTAL:I = 0x0

.field private static final INDICATOR_HOLD_VERTICAL:I = 0x28

.field private static final INDICATOR_MARGIN:I = 0x10

.field private static final INDICATOR_OUTER:I = 0x7


# instance fields
.field private accuracy:F

.field private barGradient:Landroid/graphics/LinearGradient;

.field bgBallColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field bgDayColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private bgGradient:Landroid/graphics/LinearGradient;

.field private final bgGradientPaint:Landroid/graphics/Paint;

.field private bgHeight:F

.field private bgItemGap:F

.field bgLineColorSelect:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private bgLinePaint:Landroid/graphics/Paint;

.field bgNightColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private bgPaint:Landroid/graphics/Paint;

.field private bgVertical:F

.field private bollPaint:Landroid/graphics/Paint;

.field private currentUpdateIndex:F

.field private customBackground:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private decimal:I

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private desireHeight:F

.field private desireWidth:F

.field private disableAlpha:I

.field private enableAlpha:I

.field private endColor:I

.field private endIndex:I

.field private final gradientPaint:Landroid/graphics/Paint;

.field private hidePop:Z

.field indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

.field private indicatorValue:F

.field private indicatorX:F

.field private initIndex:I

.field private isNight:Z

.field private leftColor:I

.field lineColorSelect:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private lineSelectPaint:Landroid/graphics/Paint;

.field private mIsDragging:Z

.field private mScaledTouchSlop:F

.field private mStep:I

.field private mTouchDownX:F

.field private prefixUnit:Ljava/lang/String;

.field private progressChangeListener:Lcom/xiaopeng/xui/widget/slider/XSlider$ProgressChangeListener;

.field private rightColor:I

.field private roundRadius:F

.field private sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

.field private startIndex:I

.field private thumb:Landroid/graphics/drawable/BitmapDrawable;

.field private topColor:I

.field private unit:Ljava/lang/String;

.field private upperLimit:I

.field private workableTotalWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 138
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->gradientPaint:Landroid/graphics/Paint;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgGradientPaint:Landroid/graphics/Paint;

    .line 75
    const/16 v0, 0x5c

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->enableAlpha:I

    .line 78
    const v0, -0xf34e07

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgLineColorSelect:I

    .line 80
    const/high16 v0, 0x5c000000

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgNightColor:I

    .line 82
    const v0, 0x5cffffff

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgDayColor:I

    .line 84
    const v0, -0xc46601

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgBallColor:I

    .line 87
    const/4 v2, -0x1

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->lineColorSelect:I

    .line 90
    const/4 v3, 0x0

    iput v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->customBackground:I

    .line 92
    const/high16 v4, 0x42c80000    # 100.0f

    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->desireHeight:F

    .line 93
    const/high16 v4, 0x44210000    # 644.0f

    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->desireWidth:F

    .line 94
    const/high16 v4, 0x42200000    # 40.0f

    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgHeight:F

    .line 95
    const/high16 v4, 0x41800000    # 16.0f

    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->roundRadius:F

    .line 103
    const/16 v5, 0x28

    iput v5, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->disableAlpha:I

    .line 106
    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->initIndex:I

    .line 109
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->upperLimit:I

    .line 110
    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgVertical:F

    .line 117
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->accuracy:F

    .line 125
    const v2, 0x5cbbc2d1

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endColor:I

    .line 126
    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->topColor:I

    .line 127
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->rightColor:I

    .line 128
    const v0, -0xc43e01

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->leftColor:I

    .line 130
    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    .line 131
    iput-boolean v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->hidePop:Z

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->gradientPaint:Landroid/graphics/Paint;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgGradientPaint:Landroid/graphics/Paint;

    .line 75
    const/16 v0, 0x5c

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->enableAlpha:I

    .line 78
    const v0, -0xf34e07

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgLineColorSelect:I

    .line 80
    const/high16 v0, 0x5c000000

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgNightColor:I

    .line 82
    const v0, 0x5cffffff

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgDayColor:I

    .line 84
    const v0, -0xc46601

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgBallColor:I

    .line 87
    const/4 v2, -0x1

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->lineColorSelect:I

    .line 90
    const/4 v3, 0x0

    iput v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->customBackground:I

    .line 92
    const/high16 v4, 0x42c80000    # 100.0f

    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->desireHeight:F

    .line 93
    const/high16 v4, 0x44210000    # 644.0f

    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->desireWidth:F

    .line 94
    const/high16 v4, 0x42200000    # 40.0f

    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgHeight:F

    .line 95
    const/high16 v4, 0x41800000    # 16.0f

    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->roundRadius:F

    .line 103
    const/16 v5, 0x28

    iput v5, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->disableAlpha:I

    .line 106
    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->initIndex:I

    .line 109
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->upperLimit:I

    .line 110
    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgVertical:F

    .line 117
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->accuracy:F

    .line 125
    const v2, 0x5cbbc2d1

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endColor:I

    .line 126
    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->topColor:I

    .line 127
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->rightColor:I

    .line 128
    const v0, -0xc43e01

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->leftColor:I

    .line 130
    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    .line 131
    iput-boolean v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->hidePop:Z

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->initPaint()V

    .line 145
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/theme/XThemeManager;->isNight(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->isNight:Z

    .line 148
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->gradientPaint:Landroid/graphics/Paint;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgGradientPaint:Landroid/graphics/Paint;

    .line 75
    const/16 v0, 0x5c

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->enableAlpha:I

    .line 78
    const v0, -0xf34e07

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgLineColorSelect:I

    .line 80
    const/high16 v0, 0x5c000000

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgNightColor:I

    .line 82
    const v0, 0x5cffffff

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgDayColor:I

    .line 84
    const v0, -0xc46601

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgBallColor:I

    .line 87
    const/4 v2, -0x1

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->lineColorSelect:I

    .line 90
    const/4 v3, 0x0

    iput v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->customBackground:I

    .line 92
    const/high16 v4, 0x42c80000    # 100.0f

    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->desireHeight:F

    .line 93
    const/high16 v4, 0x44210000    # 644.0f

    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->desireWidth:F

    .line 94
    const/high16 v4, 0x42200000    # 40.0f

    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgHeight:F

    .line 95
    const/high16 v4, 0x41800000    # 16.0f

    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->roundRadius:F

    .line 103
    const/16 v5, 0x28

    iput v5, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->disableAlpha:I

    .line 106
    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->initIndex:I

    .line 109
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->upperLimit:I

    .line 110
    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgVertical:F

    .line 117
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->accuracy:F

    .line 125
    const v2, 0x5cbbc2d1

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endColor:I

    .line 126
    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->topColor:I

    .line 127
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->rightColor:I

    .line 128
    const v0, -0xc43e01

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->leftColor:I

    .line 130
    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    .line 131
    iput-boolean v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->hidePop:Z

    .line 154
    return-void
.end method

.method private filterValidValue()F
    .locals 2

    .line 529
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorX:F

    const/high16 v1, 0x41800000    # 16.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 530
    return v1

    .line 532
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x10

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->upperLimitDistance()F

    move-result v1

    sub-float/2addr v0, v1

    .line 533
    .local v0, "maxValue":F
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorX:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    .line 534
    return v0

    .line 536
    :cond_1
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorX:F

    return v1
.end method

.method private getWidthExIndicator()F
    .locals 1

    .line 514
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    return v0
.end method

.method private initPaint()V
    .locals 3

    .line 172
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->hidePop:Z

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    .line 175
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgPaint:Landroid/graphics/Paint;

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgNightColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgLinePaint:Landroid/graphics/Paint;

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgLineColorSelect:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 185
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bollPaint:Landroid/graphics/Paint;

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bollPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bollPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->lineSelectPaint:Landroid/graphics/Paint;

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->lineSelectPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->lineSelectPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->lineSelectPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->lineSelectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->lineColorSelect:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setEnabled(Z)V

    .line 195
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$drawable;->x_slider_slideblock_night:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->thumb:Landroid/graphics/drawable/BitmapDrawable;

    .line 196
    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 205
    if-eqz p2, :cond_8

    .line 206
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XSlider:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 207
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_unit:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->unit:Ljava/lang/String;

    .line 208
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_start_index:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    .line 209
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_step:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    .line 210
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_init_index:I

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->initIndex:I

    .line 211
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_end_index:I

    const/16 v5, 0x64

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    .line 212
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_upper_limit:I

    const/high16 v5, -0x80000000

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->upperLimit:I

    .line 213
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_index_decimal:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->decimal:I

    .line 214
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_unit_prefix:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->prefixUnit:Ljava/lang/String;

    .line 215
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_bg_color:I

    iget v5, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgNightColor:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgNightColor:I

    .line 216
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_bg_line_color:I

    iget v5, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgLineColorSelect:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgLineColorSelect:I

    .line 217
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_background:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->customBackground:I

    .line 218
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_accuracy:I

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->accuracy:F

    .line 219
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_hide_pop:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->hidePop:Z

    .line 220
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->initIndex:I

    if-ne v1, v4, :cond_1

    .line 221
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    :goto_0
    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->initIndex:I

    .line 223
    :cond_1
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->initIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    .line 224
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    if-eq v1, v2, :cond_7

    .line 227
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->decimal:I

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->decimal:I

    if-ne v1, v3, :cond_3

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->decimalFormat:Ljava/text/DecimalFormat;

    .line 228
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->accuracy:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_6

    .line 229
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->decimal:I

    if-nez v1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->decimal:I

    if-ne v1, v3, :cond_5

    const v1, 0x3dcccccd    # 0.1f

    goto :goto_2

    :cond_5
    const v1, 0x3c23d70a    # 0.01f

    :goto_2
    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->accuracy:F

    .line 231
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .end local v0    # "attributes":Landroid/content/res/TypedArray;
    goto :goto_3

    .line 225
    .restart local v0    # "attributes":Landroid/content/res/TypedArray;
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startIndex = endIndex!!! please check the xml"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    .end local v0    # "attributes":Landroid/content/res/TypedArray;
    :cond_8
    :goto_3
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setMinimumWidth(I)V

    .line 234
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->customBackground:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 235
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mScaledTouchSlop:F

    .line 236
    return-void
.end method

.method private invalidateAll()V
    .locals 5

    .line 416
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidate()V

    .line 417
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->hidePop:Z

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->filterValidValue()F

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getPopString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->isNight:Z

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getWidth()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->updateCenter(FLjava/lang/String;ZI)V

    .line 420
    :cond_0
    return-void
.end method

.method private isInScrollContainer()Z
    .locals 2

    .line 423
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 424
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 425
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    const/4 v1, 0x1

    return v1

    .line 428
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 430
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static synthetic lambda$onVuiElementEvent$3(Lcom/xiaopeng/xui/widget/slider/XSlider;Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 765
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 766
    .local v0, "offsetY":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getIndicatorLocationX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 767
    .local v1, "offsetX":I
    invoke-static {p1, v1, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;II)V

    .line 768
    return-void
.end method

.method public static synthetic lambda$setCurrentIndex$0(Lcom/xiaopeng/xui/widget/slider/XSlider;IZ)V
    .locals 5
    .param p1, "currentIndex"    # I
    .param p2, "fromUser"    # Z

    .line 602
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->workableTotalWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorX:F

    .line 603
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    .line 604
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidate()V

    .line 605
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->notifyChildren(ZZ)V

    .line 606
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->hidePop:Z

    if-nez v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->filterValidValue()F

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getPopString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->isNight:Z

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getWidth()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->updateCenter(FLjava/lang/String;ZI)V

    .line 609
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->progressChangeListener:Lcom/xiaopeng/xui/widget/slider/XSlider$ProgressChangeListener;

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->progressChangeListener:Lcom/xiaopeng/xui/widget/slider/XSlider$ProgressChangeListener;

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->unit:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/xiaopeng/xui/widget/slider/XSlider$ProgressChangeListener;->onProgressChanged(Lcom/xiaopeng/xui/widget/slider/XSlider;FLjava/lang/String;Z)V

    .line 612
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getIndicatorValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 613
    return-void

    .line 615
    :cond_2
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->updateVui(Landroid/view/View;)V

    .line 616
    return-void
.end method

.method public static synthetic lambda$setEndIndex$2(Lcom/xiaopeng/xui/widget/slider/XSlider;)V
    .locals 0

    .line 651
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidate()V

    .line 652
    return-void
.end method

.method public static synthetic lambda$setStartIndex$1(Lcom/xiaopeng/xui/widget/slider/XSlider;)V
    .locals 5

    .line 638
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->hidePop:Z

    if-nez v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->filterValidValue()F

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getPopString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->isNight:Z

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getWidth()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->updateCenter(FLjava/lang/String;ZI)V

    .line 641
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidate()V

    .line 642
    return-void
.end method

.method private notifyChildren(ZZ)V
    .locals 7
    .param p1, "isNeedUpdate"    # Z
    .param p2, "isForce"    # Z

    .line 446
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->filterValidValue()F

    move-result v0

    .line 447
    .local v0, "xLocation":F
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getChildCount()I

    move-result v1

    .line 448
    .local v1, "count":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 449
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    .line 450
    .local v4, "child":Lcom/xiaopeng/xui/widget/slider/SlideLineView;
    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getX()F

    move-result v5

    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->filterValidValue()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 451
    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->isSelect()Z

    move-result v5

    if-nez v5, :cond_1

    .line 452
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setSelect(Z)V

    goto :goto_1

    .line 455
    :cond_0
    invoke-virtual {v4, v2}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setSelect(Z)V

    .line 448
    .end local v4    # "child":Lcom/xiaopeng/xui/widget/slider/SlideLineView;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 458
    .end local v3    # "i":I
    :cond_2
    if-eqz p1, :cond_4

    .line 460
    const/high16 v2, 0x41800000    # 16.0f

    sub-float v3, v0, v2

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->workableTotalWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iget v5, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    .line 461
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    if-eqz v3, :cond_4

    if-nez p2, :cond_3

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->currentUpdateIndex:F

    iget v5, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->accuracy:F

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-gez v3, :cond_3

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->currentUpdateIndex:F

    iget v5, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->accuracy:F

    sub-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-lez v3, :cond_3

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->currentUpdateIndex:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    .line 465
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    iget v5, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->unit:Ljava/lang/String;

    invoke-interface {v3, p0, v4, v5}, Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;->onProgressChanged(Lcom/xiaopeng/xui/widget/slider/XSlider;FLjava/lang/String;)V

    .line 466
    sub-float v2, v0, v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->workableTotalWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    .line 467
    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    float-to-int v2, v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->currentUpdateIndex:F

    .line 468
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->updateVui(Landroid/view/View;)V

    .line 471
    :cond_4
    return-void
.end method

.method private resetAlpha(II)I
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "alpha"    # I

    .line 676
    const v0, 0xffffff

    and-int/2addr p1, v0

    .line 677
    shl-int/lit8 v0, p2, 0x18

    or-int/2addr p1, v0

    .line 678
    return p1
.end method

.method private setAlphaByEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 670
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgNightColor:I

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->enableAlpha:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->disableAlpha:I

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->resetAlpha(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgNightColor:I

    .line 671
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgDayColor:I

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->enableAlpha:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->disableAlpha:I

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->resetAlpha(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgDayColor:I

    .line 672
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgBallColor:I

    if-eqz p1, :cond_2

    const/16 v1, 0xff

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->disableAlpha:I

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->resetAlpha(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgBallColor:I

    .line 673
    return-void
.end method

.method private stickIndicator()V
    .locals 7

    .line 434
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 435
    return-void

    .line 437
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->workableTotalWidth:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr v1, v2

    div-int/2addr v0, v1

    int-to-float v0, v0

    .line 438
    .local v0, "natureGap":F
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorX:F

    const/high16 v2, 0x41800000    # 16.0f

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    float-to-double v3, v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    double-to-int v1, v3

    .line 440
    .local v1, "number":I
    int-to-float v3, v1

    mul-float/2addr v3, v0

    add-float/2addr v3, v2

    iput v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorX:F

    .line 442
    return-void
.end method

.method private upperLimitDistance()F
    .locals 3

    .line 540
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->upperLimit:I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    .line 541
    return v1

    .line 544
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    if-ge v0, v2, :cond_1

    .line 545
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->upperLimit:I

    if-gt v0, v2, :cond_1

    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->upperLimit:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    if-gt v0, v2, :cond_1

    .line 546
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->upperLimit:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->workableTotalWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr v1, v2

    div-int/2addr v0, v1

    int-to-float v0, v0

    return v0

    .line 549
    :cond_1
    return v1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 488
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 489
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->filterValidValue()F

    move-result v0

    .line 490
    .local v0, "barCenterX":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 491
    return-void

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 494
    .local v1, "barCenterY":F
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->hidePop:Z

    if-nez v2, :cond_1

    .line 495
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->isNight:Z

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->draw(Landroid/graphics/Canvas;ZZ)V

    .line 497
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 498
    return-void

    .line 500
    :cond_2
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->isNight:Z

    if-eqz v2, :cond_3

    .line 501
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->thumb:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->thumb:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->thumb:Landroid/graphics/drawable/BitmapDrawable;

    .line 502
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v1, v4

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgLinePaint:Landroid/graphics/Paint;

    .line 501
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 504
    :cond_3
    const/high16 v2, 0x41100000    # 9.0f

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bollPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 506
    :goto_0
    return-void
.end method

.method public getHeightExIndicator()F
    .locals 1

    .line 509
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    int-to-float v0, v0

    return v0
.end method

.method public getIndicatorLocationX()F
    .locals 1

    .line 518
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorX:F

    return v0
.end method

.method public getIndicatorValue()F
    .locals 2

    .line 474
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getPopString()Ljava/lang/String;
    .locals 6

    .line 565
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->unit:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 566
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->unit:Ljava/lang/String;

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->prefixUnit:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 569
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->prefixUnit:Ljava/lang/String;

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->decimalFormat:Ljava/text/DecimalFormat;

    if-nez v0, :cond_3

    .line 572
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->prefixUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 575
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->prefixUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 578
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->prefixUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->decimalFormat:Ljava/text/DecimalFormat;

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "iVuiElementBuilder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 729
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getIndicatorValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setVuiValue(Ljava/lang/Object;)V

    .line 730
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "customSetProps"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "customSetProps"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 732
    .local v1, "customSet":Z
    if-eqz v1, :cond_0

    .line 733
    return-object v0

    .line 736
    .end local v1    # "customSet":Z
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1

    .line 737
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 738
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v2

    .line 740
    :cond_1
    const-string v2, "minValue"

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 741
    const-string v2, "maxValue"

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 742
    const-string v2, "interval"

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 743
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 744
    :catch_0
    move-exception v1

    .line 747
    :goto_0
    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 158
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/theme/XThemeManager;->isNight(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->isNight:Z

    .line 162
    :cond_0
    new-instance v0, Lcom/xiaopeng/xui/widget/slider/XSlider$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider$1;-><init>(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 554
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->onDetachedFromWindow()V

    .line 555
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 253
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 257
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->isNight:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgNightColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v0

    div-float/2addr v0, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgVertical:F

    sub-float v5, v0, v2

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getWidthExIndicator()F

    move-result v6

    .line 260
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v0

    div-float/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgVertical:F

    add-float v7, v0, v1

    iget v8, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->roundRadius:F

    iget v9, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->roundRadius:F

    iget-object v10, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgPaint:Landroid/graphics/Paint;

    .line 259
    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgGradientPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 264
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v0

    div-float/2addr v0, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgVertical:F

    sub-float v5, v0, v2

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getWidthExIndicator()F

    move-result v6

    .line 265
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v0

    div-float/2addr v0, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgVertical:F

    add-float v7, v0, v2

    iget v8, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->roundRadius:F

    iget v9, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->roundRadius:F

    iget-object v10, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgGradientPaint:Landroid/graphics/Paint;

    .line 264
    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgDayColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v0

    div-float/2addr v0, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgVertical:F

    sub-float v5, v0, v2

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getWidthExIndicator()F

    move-result v6

    .line 269
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v0

    div-float/2addr v0, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgVertical:F

    add-float v7, v0, v2

    iget v8, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->roundRadius:F

    iget v9, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->roundRadius:F

    iget-object v10, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgPaint:Landroid/graphics/Paint;

    .line 268
    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 272
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->isEnabled()Z

    move-result v0

    const/high16 v2, 0x40e00000    # 7.0f

    const/high16 v3, 0x41100000    # 9.0f

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->gradientPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->barGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 274
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v0

    div-float/2addr v0, v1

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgVertical:F

    sub-float v7, v0, v4

    .line 275
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->filterValidValue()F

    move-result v0

    add-float/2addr v0, v3

    add-float v8, v0, v2

    .line 276
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v0

    div-float/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgVertical:F

    add-float v9, v0, v1

    iget v10, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->roundRadius:F

    iget v11, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->roundRadius:F

    iget-object v12, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->gradientPaint:Landroid/graphics/Paint;

    .line 274
    move-object v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgBallColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v0

    div-float/2addr v0, v1

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgVertical:F

    sub-float v7, v0, v4

    .line 280
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->filterValidValue()F

    move-result v0

    add-float/2addr v0, v3

    add-float v8, v0, v2

    .line 281
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v0

    div-float/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgVertical:F

    add-float v9, v0, v1

    iget v10, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->roundRadius:F

    iget v11, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->roundRadius:F

    iget-object v12, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgPaint:Landroid/graphics/Paint;

    .line 279
    move-object v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 284
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 332
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x24

    int-to-float v0, v0

    const/high16 v1, 0x41e80000    # 29.0f

    div-float/2addr v0, v1

    .line 333
    .local v0, "itemGap":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 334
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 335
    .local v2, "childAt":Landroid/view/View;
    int-to-float v3, v1

    mul-float/2addr v3, v0

    const/high16 v4, 0x41900000    # 18.0f

    add-float/2addr v3, v4

    const/high16 v5, 0x41200000    # 10.0f

    sub-float/2addr v3, v5

    float-to-int v3, v3

    .line 336
    .local v3, "left":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v6

    float-to-int v6, v6

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x14

    .line 337
    .local v6, "top":I
    int-to-float v7, v1

    mul-float/2addr v7, v0

    add-float/2addr v4, v7

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 338
    .local v4, "right":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v5

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x14

    .line 339
    .local v5, "bottom":I
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 333
    .end local v2    # "childAt":Landroid/view/View;
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v5    # "bottom":I
    .end local v6    # "top":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 241
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XViewGroup;->onMeasure(II)V

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "width":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 244
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->desireWidth:F

    float-to-int v0, v1

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getMeasuredWidth()I

    move-result v0

    .line 248
    :goto_0
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->desireHeight:F

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setMeasuredDimension(II)V

    .line 249
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 22
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    move-object/from16 v0, p0

    .line 299
    invoke-super/range {p0 .. p4}, Lcom/xiaopeng/xui/widget/XViewGroup;->onSizeChanged(IIII)V

    .line 300
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setPadding(IIII)V

    .line 301
    add-int/lit8 v2, p1, -0x20

    iput v2, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->workableTotalWidth:I

    .line 302
    iget v2, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->workableTotalWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x41e80000    # 29.0f

    div-float/2addr v2, v3

    iput v2, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgItemGap:F

    .line 303
    iget v2, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->initIndex:I

    iget v3, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iget v4, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->workableTotalWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x41800000    # 16.0f

    add-float/2addr v2, v3

    iput v2, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorX:F

    .line 304
    move v2, v1

    .local v2, "i":I
    :goto_0
    const/16 v4, 0x1e

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    .line 305
    new-instance v4, Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorX:F

    iget v8, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgItemGap:F

    int-to-float v9, v2

    mul-float/2addr v8, v9

    add-float/2addr v8, v3

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    invoke-direct {v4, v6, v5}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;-><init>(Landroid/content/Context;Z)V

    .line 306
    .local v4, "slideLineView":Lcom/xiaopeng/xui/widget/slider/SlideLineView;
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/slider/XSlider;->addView(Landroid/view/View;)V

    .line 304
    .end local v4    # "slideLineView":Lcom/xiaopeng/xui/widget/slider/SlideLineView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v6, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgVertical:F

    sub-float v8, v3, v6

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v3

    div-float/2addr v3, v4

    iget v4, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgVertical:F

    add-float v10, v3, v4

    const/4 v3, 0x2

    new-array v11, v3, [I

    iget v4, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->topColor:I

    aput v4, v11, v1

    iget v4, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endColor:I

    aput v4, v11, v5

    const/4 v12, 0x0

    sget-object v13, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->bgGradient:Landroid/graphics/LinearGradient;

    .line 310
    new-instance v2, Landroid/graphics/LinearGradient;

    const/high16 v15, 0x41800000    # 16.0f

    const/16 v16, 0x0

    iget v4, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->workableTotalWidth:I

    int-to-float v4, v4

    const/16 v18, 0x0

    new-array v3, v3, [I

    iget v6, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->leftColor:I

    aput v6, v3, v1

    iget v1, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->rightColor:I

    aput v1, v3, v5

    const/16 v20, 0x0

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v14, v2

    move/from16 v17, v4

    move-object/from16 v19, v3

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->barGradient:Landroid/graphics/LinearGradient;

    .line 311
    iget-boolean v1, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->hidePop:Z

    if-nez v1, :cond_2

    .line 312
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->filterValidValue()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getPopString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->isNight:Z

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getWidth()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->updateCenter(FLjava/lang/String;ZI)V

    .line 314
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidate()V

    .line 315
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 346
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 347
    return v1

    .line 349
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 404
    :pswitch_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    if-eqz v0, :cond_1

    .line 405
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    .line 407
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidateAll()V

    goto/16 :goto_1

    .line 365
    :pswitch_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    if-eqz v0, :cond_2

    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorX:F

    .line 367
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->notifyChildren(ZZ)V

    .line 368
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidateAll()V

    goto/16 :goto_1

    .line 370
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 371
    .local v0, "x":F
    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mTouchDownX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mScaledTouchSlop:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 372
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    .line 373
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    if-eqz v3, :cond_3

    .line 374
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    invoke-interface {v3, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;->onStartTrackingTouch(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    .line 376
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorX:F

    .line 377
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 378
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->notifyChildren(ZZ)V

    .line 379
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidateAll()V

    .line 383
    .end local v0    # "x":F
    :cond_4
    goto :goto_1

    .line 385
    :pswitch_2
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    if-eqz v0, :cond_5

    .line 386
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    goto :goto_0

    .line 389
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    if-eqz v0, :cond_6

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;->onStartTrackingTouch(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    .line 393
    :cond_6
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorX:F

    .line 394
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->stickIndicator()V

    .line 395
    invoke-direct {p0, v1, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->notifyChildren(ZZ)V

    .line 396
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    if-eqz v0, :cond_7

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;->onStopTrackingTouch(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    .line 400
    :cond_7
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidateAll()V

    .line 401
    goto :goto_1

    .line 351
    :pswitch_3
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->isInScrollContainer()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mTouchDownX:F

    goto :goto_1

    .line 354
    :cond_8
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    .line 355
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    if-eqz v0, :cond_9

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;->onStartTrackingTouch(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    .line 359
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorX:F

    .line 360
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->notifyChildren(ZZ)V

    .line 361
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidateAll()V

    .line 363
    nop

    .line 412
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiEvent"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 752
    const-string v0, "slider onVuiElementEvent"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->logD(Ljava/lang/String;)V

    .line 753
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 754
    :cond_0
    invoke-virtual {p2, p2}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getEventValue(Lcom/xiaopeng/vui/commons/model/VuiEvent;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 755
    .local v1, "value":Ljava/lang/Double;
    if-eqz v1, :cond_4

    .line 756
    const/4 v0, -0x1

    .line 757
    .local v0, "index":I
    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 758
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    goto :goto_0

    .line 760
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    int-to-double v6, v2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    .line 762
    :goto_0
    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    if-lt v0, v2, :cond_3

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    if-le v0, v2, :cond_2

    goto :goto_1

    .line 763
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setCurrentIndex(IZ)V

    .line 764
    new-instance v2, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$8q6TCB-9AxkZNaxjbRsq1Ki1ixY;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$8q6TCB-9AxkZNaxjbRsq1Ki1ixY;-><init>(Lcom/xiaopeng/xui/widget/slider/XSlider;Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->post(Ljava/lang/Runnable;)Z

    .line 769
    return v3

    .line 762
    :cond_3
    :goto_1
    return v3

    .line 771
    .end local v0    # "index":I
    :cond_4
    return v0
.end method

.method public setAccuracy(F)V
    .locals 0
    .param p1, "accuracy"    # F

    .line 483
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->accuracy:F

    .line 484
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 1
    .param p1, "currentIndex"    # I

    .line 597
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setCurrentIndex(IZ)V

    .line 598
    return-void
.end method

.method public setCurrentIndex(IZ)V
    .locals 1
    .param p1, "currentIndex"    # I
    .param p2, "fromUser"    # Z

    .line 601
    new-instance v0, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$6nRMnQGFhZSAnHXSTyWZZ5qLEF4;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$6nRMnQGFhZSAnHXSTyWZZ5qLEF4;-><init>(Lcom/xiaopeng/xui/widget/slider/XSlider;IZ)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->post(Ljava/lang/Runnable;)Z

    .line 617
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 621
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 622
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    .line 624
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->setEnabled(Z)V

    .line 625
    nop

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 626
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setAlphaByEnable(Z)V

    .line 629
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidate()V

    .line 630
    return-void
.end method

.method public setEndIndex(I)V
    .locals 2
    .param p1, "endIndex"    # I

    .line 646
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    if-eq v0, p1, :cond_0

    .line 649
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    .line 650
    new-instance v0, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$kB2KeMUVNgZs-Tjtgxuk4WuttL4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$kB2KeMUVNgZs-Tjtgxuk4WuttL4;-><init>(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->post(Ljava/lang/Runnable;)Z

    .line 653
    return-void

    .line 647
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "startIndex = endIndex!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInitIndex(I)V
    .locals 1
    .param p1, "initIndex"    # I

    .line 656
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    if-le p1, v0, :cond_0

    .line 657
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->initIndex:I

    .line 658
    return-void

    .line 660
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    if-ge p1, v0, :cond_1

    .line 661
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->initIndex:I

    .line 662
    return-void

    .line 664
    :cond_1
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->initIndex:I

    .line 665
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    .line 666
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidate()V

    .line 667
    return-void
.end method

.method public setProgressChangeListener(Lcom/xiaopeng/xui/widget/slider/XSlider$ProgressChangeListener;)V
    .locals 0
    .param p1, "progressChangeListener"    # Lcom/xiaopeng/xui/widget/slider/XSlider$ProgressChangeListener;

    .line 588
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->progressChangeListener:Lcom/xiaopeng/xui/widget/slider/XSlider$ProgressChangeListener;

    .line 589
    return-void
.end method

.method public setSliderProgressListener(Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;)V
    .locals 0
    .param p1, "sliderProgressListener"    # Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    .line 584
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    .line 585
    return-void
.end method

.method public setStartIndex(I)V
    .locals 2
    .param p1, "startIndex"    # I

    .line 633
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    if-eq p1, v0, :cond_0

    .line 636
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    .line 637
    new-instance v0, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$Xz60DHZ7J60ywvILqd--vaYYV3k;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$Xz60DHZ7J60ywvILqd--vaYYV3k;-><init>(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->post(Ljava/lang/Runnable;)Z

    .line 643
    return-void

    .line 634
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "startIndex = endIndex!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
