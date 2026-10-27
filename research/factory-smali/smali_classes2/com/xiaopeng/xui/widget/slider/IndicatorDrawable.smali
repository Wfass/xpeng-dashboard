.class Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "IndicatorDrawable.java"


# static fields
.field private static INDICATOR_TEXT_SIZE:F = 0.0f

.field private static INDICATOR_TEXT_VERTICAL:I = 0x0

.field private static MAX_INDICATOR_SIZE:I = 0x0

.field private static MIN_INDICATOR_SIZE:I = 0x0

.field private static final TEXT_PADDING:I = 0x32

.field private static TEXT_PADDING_TOP:I


# instance fields
.field bgDay9:Landroid/graphics/drawable/NinePatchDrawable;

.field bgDayDisable9:Landroid/graphics/drawable/NinePatchDrawable;

.field bgNight9:Landroid/graphics/drawable/NinePatchDrawable;

.field bgNightDisable9:Landroid/graphics/drawable/NinePatchDrawable;

.field private bonds:Landroid/graphics/Rect;

.field private indicatorCenter:F

.field private indicatorText:Ljava/lang/String;

.field private isEnabled:Z

.field private isNight:Z

.field private slideWidth:I

.field private final textPaint:Landroid/graphics/Paint;

.field private textWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/16 v0, 0x74

    sput v0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->MAX_INDICATOR_SIZE:I

    .line 29
    const/high16 v0, 0x41c00000    # 24.0f

    sput v0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->INDICATOR_TEXT_SIZE:F

    .line 30
    const/16 v0, 0x38

    sput v0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->MIN_INDICATOR_SIZE:I

    .line 31
    const/16 v0, 0xa

    sput v0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->INDICATOR_TEXT_VERTICAL:I

    .line 32
    const/16 v0, 0x2a

    sput v0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->TEXT_PADDING_TOP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->textPaint:Landroid/graphics/Paint;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorText:Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorCenter:F

    sget v2, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->MIN_INDICATOR_SIZE:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->INDICATOR_TEXT_VERTICAL:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorCenter:F

    sget v4, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->MIN_INDICATOR_SIZE:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    sget v4, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->INDICATOR_TEXT_VERTICAL:I

    add-int/lit8 v4, v4, 0x32

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bonds:Landroid/graphics/Rect;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->textPaint:Landroid/graphics/Paint;

    sget v1, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->INDICATOR_TEXT_SIZE:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 51
    sget v0, Lcom/xiaopeng/xpui/R$drawable;->x_slider_tag_day:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bgDay9:Landroid/graphics/drawable/NinePatchDrawable;

    .line 52
    sget v0, Lcom/xiaopeng/xpui/R$drawable;->x_slider_tag_night:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bgNight9:Landroid/graphics/drawable/NinePatchDrawable;

    .line 53
    sget v0, Lcom/xiaopeng/xpui/R$drawable;->x_slider_tag_day_disable:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bgDayDisable9:Landroid/graphics/drawable/NinePatchDrawable;

    .line 54
    sget v0, Lcom/xiaopeng/xpui/R$drawable;->x_slider_tag_night_disable:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bgNightDisable9:Landroid/graphics/drawable/NinePatchDrawable;

    .line 55
    return-void
.end method

.method private resetBounds()V
    .locals 6

    .line 112
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->textWidth:I

    add-int/lit8 v0, v0, 0x32

    sget v1, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->MIN_INDICATOR_SIZE:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 113
    .local v0, "specifyWidth":I
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorCenter:F

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 114
    .local v1, "offsetStart":F
    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->slideWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorCenter:F

    sub-float/2addr v2, v3

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 115
    .local v2, "offsetEnd":F
    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-gez v4, :cond_0

    .line 116
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bonds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 117
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bonds:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 118
    :cond_0
    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    .line 119
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bonds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->slideWidth:I

    sub-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 120
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bonds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->slideWidth:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 122
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bonds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorCenter:F

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 123
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bonds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorCenter:F

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 125
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 59
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->isNight:Z

    if-eqz v0, :cond_1

    .line 60
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bgNight9:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bonds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bgNight9:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bgNightDisable9:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bonds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bgNightDisable9:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->isEnabled:Z

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bgDay9:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bonds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bgDay9:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bgDayDisable9:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bonds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bgDayDisable9:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->textPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->isEnabled:Z

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    goto :goto_1

    :cond_3
    const v1, 0x5cffffff

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorText:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bonds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->bonds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->TEXT_PADDING_TOP:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 78
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;ZZ)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "isNight"    # Z
    .param p3, "enabled"    # Z

    .line 106
    iput-boolean p2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->isNight:Z

    .line 107
    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->isEnabled:Z

    .line 108
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 109
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 93
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 98
    return-void
.end method

.method public updateCenter(FLjava/lang/String;ZI)V
    .locals 1
    .param p1, "center"    # F
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "isNight"    # Z
    .param p4, "slideWidth"    # I

    .line 81
    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->isNight:Z

    .line 82
    iput-object p2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorText:Ljava/lang/String;

    .line 83
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorCenter:F

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->textWidth:I

    .line 85
    iput p4, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->slideWidth:I

    .line 86
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->resetBounds()V

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->invalidateSelf()V

    .line 88
    return-void
.end method
