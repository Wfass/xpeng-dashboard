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

    .line 42
    const/high16 v0, 0x41c00000    # 24.0f

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTextBaselineY:F

    .line 43
    const/16 v2, 0x32

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTextPadding:I

    .line 45
    const-string v2, ""

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorText:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->isEnabled:Z

    .line 49
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorCenter:F

    const/high16 v3, 0x41e00000    # 28.0f

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorCenter:F

    add-float/2addr v4, v3

    float-to-int v3, v4

    const/16 v4, 0xa

    const/16 v5, 0x3c

    invoke-direct {v1, v2, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

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

    .line 56
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
    .local v0, "specifyWidth":I
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorCenter:F

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 186
    .local v1, "offsetStart":F
    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->slideWidth:I

    int-to-float v2, v2

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorCenter:F

    sub-float/2addr v2, v4

    int-to-float v4, v0

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    .line 187
    .local v2, "offsetEnd":F
    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-gez v4, :cond_0

    .line 188
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 189
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 190
    :cond_0
    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    .line 191
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->slideWidth:I

    sub-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 192
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->slideWidth:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 194
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorCenter:F

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 195
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorCenter:F

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 197
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 198
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBg:Landroid/graphics/drawable/Drawable;

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

    .line 121
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public inflateAttr(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleRes"    # I

    .line 60
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 61
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider:[I

    invoke-virtual {p2, p3, v1, v0, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "ta":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 63
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider:[I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 66
    .restart local v1    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_text_tag_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_text_tag_bg:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBgResId:I

    .line 70
    :cond_1
    const/16 v0, 0xa

    .line 71
    .local v0, "paddingTop":I
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_text_tag_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_text_tag_padding_top:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 74
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 75
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_text_tag_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_text_tag_height:I

    const/16 v3, 0x28

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    .line 77
    .local v2, "tagHeight":F
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 79
    .end local v2    # "tagHeight":F
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    .line 80
    .local v2, "baselineOffset":F
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_text_tag_text_baseline_offset:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 81
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_text_tag_text_baseline_offset:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 83
    :cond_4
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    iput v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTextBaselineY:F

    .line 85
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_text_tag_text_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 86
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_text_tag_text_padding:I

    const/16 v4, 0x32

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTextPadding:I

    .line 88
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->refreshUI(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 89
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 90
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 202
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 203
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBg:Landroid/graphics/drawable/Drawable;

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
    .param p1, "bounds"    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 128
    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 6
    .param p1, "state"    # [I

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 139
    .local v1, "isEnabled":Z
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p1, v3

    .line 140
    .local v4, "s":I
    const v5, 0x101009e

    if-ne v4, v5, :cond_0

    .line 141
    const/4 v1, 0x1

    .line 142
    goto :goto_1

    .line 139
    .end local v4    # "s":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->isEnabled:Z

    if-eq v2, v1, :cond_3

    .line 147
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->isEnabled:Z

    .line 148
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->textPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_2

    const/4 v3, -0x1

    goto :goto_2

    :cond_2
    const v3, 0x5cffffff

    :goto_2
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    const-string v2, "IndicatorDrawable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStateChange, isEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x1

    .line 153
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBg:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 154
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    or-int/2addr v0, v2

    .line 156
    :cond_4
    return v0
.end method

.method public refreshUI(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .line 94
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBgResId:I

    invoke-static {p1, v0, p2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    .local v0, "tagBg":Landroid/graphics/drawable/Drawable;
    const-string v1, "IndicatorDrawable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshUI, newBg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", oldBg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->setTagBg(Landroid/graphics/drawable/Drawable;)V

    .line 98
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "what"    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "when"    # J

    .line 210
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 211
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 214
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 171
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 176
    return-void
.end method

.method public setTagBg(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->mTagBg:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 104
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

    .line 113
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "what"    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 218
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 219
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 222
    :cond_0
    return-void
.end method

.method public updateCenter(FLjava/lang/String;I)V
    .locals 1
    .param p1, "center"    # F
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "slideWidth"    # I

    .line 160
    iput-object p2, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorText:Ljava/lang/String;

    .line 161
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->indicatorCenter:F

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->textWidth:I

    .line 163
    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->slideWidth:I

    .line 164
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->resetBounds()V

    .line 165
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->invalidateSelf()V

    .line 166
    return-void
.end method
