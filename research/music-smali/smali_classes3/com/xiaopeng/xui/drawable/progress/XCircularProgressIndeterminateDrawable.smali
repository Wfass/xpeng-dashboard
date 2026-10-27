.class public Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "XCircularProgressIndeterminateDrawable.java"


# static fields
.field private static final ARC_START_ANGLE:F = 8.0f

.field private static final ARC_SWEEP_ANGLE:F = 340.0f

.field private static final STROKE_WIDTH_DEFAULT:F


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mEnableLight:Z

.field private mEndColor:I

.field private mInnerBounds:Landroid/graphics/RectF;

.field private mInset:F

.field private mLightRadius:F

.field protected mPaint:Landroid/graphics/Paint;

.field private mStartColor:I

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mPaint:Landroid/graphics/Paint;

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mBounds:Landroid/graphics/Rect;

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mInnerBounds:Landroid/graphics/RectF;

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 64
    sget-object v1, Lbyg$n;->XCircularProgressIndeterminateDrawable:[I

    invoke-virtual {p3, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    goto :goto_0

    .line 66
    :cond_0
    sget-object v1, Lbyg$n;->XCircularProgressIndeterminateDrawable:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 69
    :goto_0
    sget v1, Lbyg$n;->XCircularProgressIndeterminateDrawable_progress_indeterminate_startColor:I

    const v2, 0x106000d

    .line 70
    invoke-virtual {p1, v2, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 69
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mStartColor:I

    .line 71
    sget v1, Lbyg$n;->XCircularProgressIndeterminateDrawable_progress_indeterminate_endColor:I

    sget v2, Lbyg$e;->x_circular_progress_primary_color:I

    .line 72
    invoke-virtual {p1, v2, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 71
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mEndColor:I

    .line 73
    sget p1, Lbyg$n;->XCircularProgressIndeterminateDrawable_progress_indeterminate_strokeWidth:I

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mStrokeWidth:F

    .line 74
    sget p1, Lbyg$n;->XCircularProgressIndeterminateDrawable_progress_indeterminate_enable_light:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mEnableLight:Z

    .line 75
    sget p1, Lbyg$n;->XCircularProgressIndeterminateDrawable_progress_indeterminate_inset:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mInset:F

    .line 76
    sget p1, Lbyg$n;->XCircularProgressIndeterminateDrawable_progress_indeterminate_light_radius:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mLightRadius:F

    .line 77
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 123
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mInnerBounds:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, 0x43aa0000    # 340.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 52
    invoke-direct {p0, p1, p3, p2}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 58
    invoke-direct {p0, p1, p3, p4}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    .line 94
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 v0, 0x2

    .line 96
    new-array v0, v0, [I

    iget v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mStartColor:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mEndColor:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 97
    new-instance v1, Landroid/graphics/SweepGradient;

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 99
    iget v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mStrokeWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v0, v2

    .line 102
    iput v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mStrokeWidth:F

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    iget v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mStrokeWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 107
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mInnerBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mInnerBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mInset:F

    add-float v3, v2, v0

    add-float/2addr v2, v0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 110
    iget-boolean p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mEnableLight:Z

    if-eqz p1, :cond_2

    .line 111
    iget p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mLightRadius:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    .line 112
    iget p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mStrokeWidth:F

    iput p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mLightRadius:F

    .line 114
    :cond_1
    new-instance p1, Lcom/xiaopeng/xui/graphics/XLightPaint;

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Lcom/xiaopeng/xui/graphics/XLightPaint;-><init>(Landroid/graphics/Paint;)V

    .line 115
    iget v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mLightRadius:F

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/graphics/XLightPaint;->setLightRadius(F)V

    .line 116
    invoke-virtual {p1}, Lcom/xiaopeng/xui/graphics/XLightPaint;->apply()V

    :cond_2
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setInset(F)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mInset:F

    return-void
.end method

.method public setLightRadius(F)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mLightRadius:F

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mStrokeWidth:F

    return-void
.end method
