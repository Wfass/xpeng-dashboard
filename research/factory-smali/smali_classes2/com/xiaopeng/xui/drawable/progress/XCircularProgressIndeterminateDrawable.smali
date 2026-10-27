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

    .line 47
    return-void
.end method

.method private updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .line 63
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 64
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressIndeterminateDrawable:[I

    invoke-virtual {p3, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "ta":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 66
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressIndeterminateDrawable:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 69
    .restart local v1    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressIndeterminateDrawable_progress_indeterminate_startColor:I

    const v3, 0x106000d

    .line 70
    invoke-virtual {p1, v3, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 69
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mStartColor:I

    .line 71
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressIndeterminateDrawable_progress_indeterminate_endColor:I

    sget v3, Lcom/xiaopeng/xpui/R$color;->x_circular_progress_primary_color:I

    .line 72
    invoke-virtual {p1, v3, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 71
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mEndColor:I

    .line 73
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressIndeterminateDrawable_progress_indeterminate_strokeWidth:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mStrokeWidth:F

    .line 74
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressIndeterminateDrawable_progress_indeterminate_enable_light:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mEnableLight:Z

    .line 75
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressIndeterminateDrawable_progress_indeterminate_inset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mInset:F

    .line 76
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressIndeterminateDrawable_progress_indeterminate_light_radius:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mLightRadius:F

    .line 77
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

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

    .line 125
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 139
    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 51
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 53
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
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

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 58
    invoke-direct {p0, p1, p3, p4}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 59
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 94
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mStartColor:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mEndColor:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 97
    .local v0, "progressColor":[I
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
    .local v1, "sweepGradient":Landroid/graphics/SweepGradient;
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 99
    iget v2, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mStrokeWidth:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 102
    .local v2, "width":I
    int-to-float v4, v2

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    iput v4, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mStrokeWidth:F

    .line 104
    .end local v2    # "width":I
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mStrokeWidth:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    iget v2, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mStrokeWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 107
    .local v2, "borderInset":F
    iget-object v4, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mInnerBounds:Landroid/graphics/RectF;

    invoke-virtual {v4, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 108
    iget-object v4, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mInnerBounds:Landroid/graphics/RectF;

    iget v5, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mInset:F

    add-float/2addr v5, v2

    iget v6, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mInset:F

    add-float/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 110
    iget-boolean v4, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mEnableLight:Z

    if-eqz v4, :cond_2

    .line 111
    iget v4, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mLightRadius:F

    cmpl-float v3, v4, v3

    if-nez v3, :cond_1

    .line 112
    iget v3, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mStrokeWidth:F

    iput v3, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mLightRadius:F

    .line 114
    :cond_1
    new-instance v3, Lcom/xiaopeng/xui/graphics/XLightPaint;

    iget-object v4, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Lcom/xiaopeng/xui/graphics/XLightPaint;-><init>(Landroid/graphics/Paint;)V

    .line 115
    .local v3, "XLightPaint":Lcom/xiaopeng/xui/graphics/XLightPaint;
    iget v4, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mLightRadius:F

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/graphics/XLightPaint;->setLightRadius(F)V

    .line 116
    invoke-virtual {v3}, Lcom/xiaopeng/xui/graphics/XLightPaint;->apply()V

    .line 118
    .end local v3    # "XLightPaint":Lcom/xiaopeng/xui/graphics/XLightPaint;
    :cond_2
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 130
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 135
    return-void
.end method

.method public setInset(F)V
    .locals 0
    .param p1, "inset"    # F

    .line 85
    iput p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mInset:F

    .line 86
    return-void
.end method

.method public setLightRadius(F)V
    .locals 0
    .param p1, "lightRadius"    # F

    .line 89
    iput p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mLightRadius:F

    .line 90
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0
    .param p1, "strokeWidth"    # F

    .line 81
    iput p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->mStrokeWidth:F

    .line 82
    return-void
.end method
