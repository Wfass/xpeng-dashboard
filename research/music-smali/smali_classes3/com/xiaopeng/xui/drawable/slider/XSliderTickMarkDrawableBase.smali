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

    const/4 v0, 0x4

    .line 32
    iput v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->lineStrokeWidth:I

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mActivated:Z

    .line 38
    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mSelected:Z

    const/4 v0, 0x1

    .line 39
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

    const/16 v0, 0x64

    .line 52
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->setLevel(I)Z

    return-void
.end method


# virtual methods
.method public getOpacity()I
    .locals 1

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
    .locals 1

    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;I)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    const/4 p2, 0x0

    .line 71
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;I)V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

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

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mHalfHeight:F

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 9

    .line 103
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v2, v0, :cond_3

    aget v7, p1, v2

    const v8, 0x10102fe

    if-ne v7, v8, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    const v8, 0x10100a1

    if-ne v7, v8, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    const v8, 0x101009e

    if-ne v7, v8, :cond_2

    move v3, v6

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_3
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mEnabled:Z

    if-eq v3, v0, :cond_4

    move v0, v6

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    if-eqz v0, :cond_5

    .line 115
    iput-boolean v3, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mEnabled:Z

    .line 118
    :cond_5
    iget-boolean v2, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mActivated:Z

    if-eq v4, v2, :cond_6

    move v2, v6

    goto :goto_3

    :cond_6
    move v2, v1

    :goto_3
    if-eqz v2, :cond_9

    .line 120
    iput-boolean v4, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mActivated:Z

    .line 121
    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mPaint:Landroid/graphics/Paint;

    iget-boolean v4, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mActivated:Z

    const/high16 v7, 0x40800000    # 4.0f

    if-eqz v4, :cond_7

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_4

    :cond_7
    move v4, v7

    :goto_4
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mBlurPaint:Landroid/graphics/Paint;

    iget-boolean v4, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mActivated:Z

    if-eqz v4, :cond_8

    new-instance v4, Landroid/graphics/BlurMaskFilter;

    sget-object v8, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v7, v8}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 125
    :cond_9
    iget-boolean v3, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mSelected:Z

    if-eq v5, v3, :cond_a

    move v3, v6

    goto :goto_6

    :cond_a
    move v3, v1

    :goto_6
    if-eqz v3, :cond_b

    .line 127
    iput-boolean v5, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mSelected:Z

    .line 128
    iget-boolean v4, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mSelected:Z

    if-nez v4, :cond_b

    const/16 v4, 0x64

    .line 129
    invoke-virtual {p0, v4}, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->setLevel(I)Z

    :cond_b
    if-nez v2, :cond_c

    if-nez v3, :cond_c

    if-eqz v0, :cond_d

    :cond_c
    move v1, v6

    :cond_d
    if-eqz v1, :cond_e

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_e

    .line 134
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_e
    return v1
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mColor:Landroid/content/res/ColorStateList;

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x28ff0000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;I)V
    .locals 1

    if-eqz p3, :cond_0

    .line 84
    sget-object p1, Lbyg$n;->SliderTickMark:[I

    const/4 v0, 0x0

    invoke-virtual {p3, p2, p1, v0, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 86
    :cond_0
    sget-object p3, Lbyg$n;->SliderTickMark:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 88
    :goto_0
    sget p2, Lbyg$n;->SliderTickMark_slider_tickMark_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 89
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->setColor(Landroid/content/res/ColorStateList;)V

    .line 90
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
