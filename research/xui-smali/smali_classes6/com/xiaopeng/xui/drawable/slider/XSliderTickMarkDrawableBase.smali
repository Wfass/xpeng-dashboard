.class public abstract Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;
.super Landroid/graphics/drawable/Drawable;
.source "XSliderTickMarkDrawableBase.java"


# static fields
.field private static final DEFAULT_COLOR:I = 0x28ff0000

.field private static final MAX_LEVEL:I = 0x64


# instance fields
.field private final lineStrokeWidth:I

.field protected mActivated:Z

.field protected final mBlurPaint:Landroid/graphics/Paint;

.field private mColor:Landroid/content/res/ColorStateList;

.field protected mEnabled:Z

.field protected mHalfHeight:F

.field protected mHalfWidth:F

.field protected final mPaint:Landroid/graphics/Paint;

.field protected mSelected:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    const/4 v0, 0x4

    iput v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->lineStrokeWidth:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mActivated:Z

    .line 38
    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mSelected:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mEnabled:Z

    .line 42
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mPaint:Landroid/graphics/Paint;

    .line 43
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 45
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mBlurPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->setLevel(I)Z

    .line 53
    return-void
.end method


# virtual methods
.method public getOpacity()I
    .locals 1

    .line 164
    const/4 v0, -0x3

    return v0
.end method

.method protected getProgress()F
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;I)V

    .line 79
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;I)V

    .line 72
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 143
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mHalfWidth:F

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mHalfHeight:F

    .line 146
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 11
    .param p1, "state"    # [I

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "activated":Z
    const/4 v1, 0x0

    .line 102
    .local v1, "selected":Z
    const/4 v2, 0x0

    .line 103
    .local v2, "enabled":Z
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v1

    move v1, v0

    move v0, v4

    .end local v0    # "activated":Z
    .local v1, "activated":Z
    .local v5, "selected":Z
    :goto_0
    if-ge v0, v3, :cond_3

    aget v6, p1, v0

    .line 104
    .local v6, "s":I
    const v7, 0x10102fe

    if-ne v6, v7, :cond_0

    .line 105
    const/4 v1, 0x1

    goto :goto_1

    .line 106
    :cond_0
    const v7, 0x10100a1

    if-ne v6, v7, :cond_1

    .line 107
    const/4 v5, 0x1

    goto :goto_1

    .line 108
    :cond_1
    const v7, 0x101009e

    if-ne v6, v7, :cond_2

    .line 109
    const/4 v2, 0x1

    .line 103
    .end local v6    # "s":I
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_3
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mEnabled:Z

    const/4 v3, 0x1

    if-eq v2, v0, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v4

    .line 114
    .local v0, "enabledChanged":Z
    :goto_2
    if-eqz v0, :cond_5

    .line 115
    iput-boolean v2, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mEnabled:Z

    .line 118
    :cond_5
    iget-boolean v6, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mActivated:Z

    if-eq v1, v6, :cond_6

    move v6, v3

    goto :goto_3

    :cond_6
    move v6, v4

    .line 119
    .local v6, "activatedChanged":Z
    :goto_3
    if-eqz v6, :cond_9

    .line 120
    iput-boolean v1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mActivated:Z

    .line 121
    iget-object v7, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mPaint:Landroid/graphics/Paint;

    iget-boolean v8, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mActivated:Z

    const/high16 v9, 0x40800000    # 4.0f

    if-eqz v8, :cond_7

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_4

    :cond_7
    move v8, v9

    :goto_4
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    iget-object v7, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mBlurPaint:Landroid/graphics/Paint;

    iget-boolean v8, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mActivated:Z

    if-eqz v8, :cond_8

    new-instance v8, Landroid/graphics/BlurMaskFilter;

    sget-object v10, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v8, v9, v10}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    :goto_5
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 125
    :cond_9
    iget-boolean v7, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mSelected:Z

    if-eq v5, v7, :cond_a

    move v7, v3

    goto :goto_6

    :cond_a
    move v7, v4

    .line 126
    .local v7, "selectedChanged":Z
    :goto_6
    if-eqz v7, :cond_b

    .line 127
    iput-boolean v5, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mSelected:Z

    .line 128
    iget-boolean v8, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mSelected:Z

    if-nez v8, :cond_b

    .line 129
    const/16 v8, 0x64

    invoke-virtual {p0, v8}, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->setLevel(I)Z

    .line 132
    :cond_b
    if-nez v6, :cond_d

    if-nez v7, :cond_d

    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    move v3, v4

    nop

    .line 133
    .local v3, "changed":Z
    :cond_d
    :goto_7
    if-eqz v3, :cond_e

    iget-object v4, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_e

    .line 134
    iget-object v4, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mColor:Landroid/content/res/ColorStateList;

    iget-object v8, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    invoke-virtual {v4, p1, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 135
    .local v4, "color":I
    iget-object v8, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v8, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    .end local v4    # "color":I
    :cond_e
    return v3
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 155
    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mColor:Landroid/content/res/ColorStateList;

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x28ff0000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    :goto_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 160
    return-void
.end method

.method public updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;I)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p4, "defStyleRes"    # I

    .line 83
    if-eqz p3, :cond_0

    .line 84
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->SliderTickMark:[I

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v0, v1, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "ta":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 86
    .end local v0    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->SliderTickMark:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .restart local v0    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->SliderTickMark_slider_tickMark_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 89
    .local v1, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->setColor(Landroid/content/res/ColorStateList;)V

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    return-void
.end method
