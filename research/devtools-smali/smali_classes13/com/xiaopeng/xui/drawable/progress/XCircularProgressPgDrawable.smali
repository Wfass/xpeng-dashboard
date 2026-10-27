.class public Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "XCircularProgressPgDrawable.java"


# static fields
.field private static final PROGRESS_STROKE_WIDTH_DEFAULT:F


# instance fields
.field private mEnableLight:Z

.field private mInnerBounds:Landroid/graphics/RectF;

.field private mInset:F

.field private mLightRadius:F

.field private mOutBounds:Landroid/graphics/Rect;

.field protected mPaint:Landroid/graphics/Paint;

.field private mProgressColor:I

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mPaint:Landroid/graphics/Paint;

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mOutBounds:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mInnerBounds:Landroid/graphics/RectF;

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 42
    return-void
.end method

.method private updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3

    .line 58
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 59
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressPgDrawable:[I

    invoke-virtual {p3, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    goto :goto_0

    .line 61
    :cond_0
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressPgDrawable:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 63
    :goto_0
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressPgDrawable_progress_color:I

    sget v2, Lcom/xiaopeng/xpui/R$color;->x_circular_progress_primary_color:I

    .line 64
    invoke-virtual {p1, v2, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 63
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mProgressColor:I

    .line 65
    sget p1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressPgDrawable_progress_pg_strokeWidth:I

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mStrokeWidth:F

    .line 66
    sget p1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressPgDrawable_progress_enable_light:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mEnableLight:Z

    .line 67
    sget p1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressPgDrawable_progress_pg_inset:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mInset:F

    .line 68
    sget p1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressPgDrawable_progress_pg_light_radius:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mLightRadius:F

    .line 69
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 111
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v5, v0, v1

    .line 112
    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mInnerBounds:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 114
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 134
    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 46
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 47
    const/4 p2, 0x0

    invoke-direct {p0, p1, p3, p2}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 48
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 53
    invoke-direct {p0, p1, p3, p4}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 54
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .line 86
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mInnerBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 88
    iget p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mStrokeWidth:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mOutBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mStrokeWidth:F

    .line 92
    :cond_0
    iget p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mStrokeWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    .line 94
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mInnerBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mInset:F

    add-float/2addr v2, p1

    iget v3, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mInset:F

    add-float/2addr v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mProgressColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mStrokeWidth:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    iget-boolean p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mEnableLight:Z

    if-eqz p1, :cond_2

    .line 99
    iget p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mLightRadius:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    .line 100
    iget p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mStrokeWidth:F

    iput p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mLightRadius:F

    .line 102
    :cond_1
    new-instance p1, Lcom/xiaopeng/xui/a/b;

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Lcom/xiaopeng/xui/a/b;-><init>(Landroid/graphics/Paint;)V

    .line 103
    iget v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mLightRadius:F

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/a/b;->setLightRadius(F)V

    .line 104
    invoke-virtual {p1}, Lcom/xiaopeng/xui/a/b;->apply()V

    .line 106
    :cond_2
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->invalidateSelf()V

    .line 119
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result p1

    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 130
    return-void
.end method

.method public setInset(F)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mInset:F

    .line 78
    return-void
.end method

.method public setLightRadius(F)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mLightRadius:F

    .line 82
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->mStrokeWidth:F

    .line 74
    return-void
.end method
