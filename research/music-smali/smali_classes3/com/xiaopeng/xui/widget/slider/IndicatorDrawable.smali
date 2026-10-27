.class Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "IndicatorDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field private static final INDICATOR_TEXT_SIZE:F = 24.0f

.field private static final INDICATOR_TEXT_VERTICAL:I = 0xa

.field private static final MIN_INDICATOR_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "IndicatorDrawable"

.field private static final TEXT_PADDING:I = 0x32


# instance fields
.field private indicatorCenter:F

.field private indicatorText:Ljava/lang/String;

.field private isEnabled:Z

.field private final mBounds:Landroid/graphics/Rect;

.field private mTagBg:Landroid/graphics/drawable/Drawable;

.field private mTagBgResId:I

.field private mTextBaselineY:F

.field private mTextPadding:I

.field private slideWidth:I

.field private final textPaint:Landroid/graphics/Paint;

.field private textWidth:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 50
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->textPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41c00000    # 24.0f

    .line 42
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTextBaselineY:F

    const/16 v2, 0x32

    .line 43
    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTextPadding:I

    const-string v2, ""

    .line 45
    iput-object v2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorText:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->isEnabled:Z

    .line 49
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorCenter:F

    const/high16 v3, 0x41e00000    # 28.0f

    sub-float v4, v2, v3

    float-to-int v4, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    const/16 v3, 0xa

    const/16 v5, 0x3c

    invoke-direct {v1, v4, v3, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    .line 51
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->textPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->isEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const v1, 0x5cffffff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private resetBounds()V
    .locals 6

    .line 184
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->textWidth:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTextPadding:I

    add-int/2addr v0, v1

    const/16 v1, 0x38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 185
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorCenter:F

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v3, v1, v2

    .line 186
    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->slideWidth:I

    int-to-float v5, v4

    sub-float/2addr v5, v1

    sub-float/2addr v5, v2

    const/4 v2, 0x0

    cmpg-float v3, v3, v2

    if-gez v3, :cond_0

    .line 188
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 189
    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    cmpg-float v2, v5, v2

    if-gez v2, :cond_1

    .line 191
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    sub-int v0, v4, v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 192
    iput v4, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v3, v1, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 195
    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorText:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTextBaselineY:F

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public inflateAttr(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 61
    sget-object v1, Lbyg$n;->XSlider:[I

    invoke-virtual {p2, p3, v1, v0, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    goto :goto_0

    .line 63
    :cond_0
    sget-object p3, Lbyg$n;->XSlider:[I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 66
    :goto_0
    sget p4, Lbyg$n;->XSlider_slider_text_tag_bg:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 67
    sget p4, Lbyg$n;->XSlider_slider_text_tag_bg:I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    iput p4, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBgResId:I

    :cond_1
    const/16 p4, 0xa

    .line 71
    sget v0, Lbyg$n;->XSlider_slider_text_tag_padding_top:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    sget v0, Lbyg$n;->XSlider_slider_text_tag_padding_top:I

    invoke-virtual {p3, v0, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->top:I

    .line 75
    sget p4, Lbyg$n;->XSlider_slider_text_tag_height:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 76
    sget p4, Lbyg$n;->XSlider_slider_text_tag_height:I

    const/16 v0, 0x28

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    int-to-float p4, p4

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v1, p4

    float-to-int p4, v1

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 79
    :cond_3
    iget-object p4, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p4, v0

    .line 80
    sget v0, Lbyg$n;->XSlider_slider_text_tag_text_baseline_offset:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    sget v0, Lbyg$n;->XSlider_slider_text_tag_text_baseline_offset:I

    invoke-virtual {p3, v0, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    add-float/2addr v0, p4

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTextBaselineY:F

    .line 85
    sget p4, Lbyg$n;->XSlider_slider_text_tag_text_padding:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 86
    sget p4, Lbyg$n;->XSlider_slider_text_tag_text_padding:I

    const/16 v0, 0x32

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTextPadding:I

    .line 88
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->refreshUI(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 90
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 202
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 204
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 6

    .line 139
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    aget v4, p1, v2

    const v5, 0x101009e

    if-ne v4, v5, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 146
    :goto_1
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->isEnabled:Z

    if-eq v2, v0, :cond_3

    .line 147
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->isEnabled:Z

    .line 148
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->textPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    const/4 v2, -0x1

    goto :goto_2

    :cond_2
    const v2, 0x5cffffff

    :goto_2
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange, isEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IndicatorDrawable"

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v3

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_4
    return v1
.end method

.method public refreshUI(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 1

    .line 94
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBgResId:I

    invoke-static {p1, v0, p2}, Lds;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "refreshUI, newBg:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", oldBg:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "IndicatorDrawable"

    invoke-static {v0, p2}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->setTagBg(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 210
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 212
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setTagBg(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 105
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 110
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBg:Landroid/graphics/drawable/Drawable;

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->invalidateSelf()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 218
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 220
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public updateCenter(FLjava/lang/String;I)V
    .locals 0

    .line 160
    iput-object p2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorText:Ljava/lang/String;

    .line 161
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorCenter:F

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->textWidth:I

    .line 163
    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->slideWidth:I

    .line 164
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->resetBounds()V

    .line 165
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->invalidateSelf()V

    return-void
.end method
