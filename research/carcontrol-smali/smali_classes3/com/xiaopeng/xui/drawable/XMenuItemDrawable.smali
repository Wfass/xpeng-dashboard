.class public Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;
.super Lcom/xiaopeng/xui/drawable/XDrawable;
.source "XMenuItemDrawable.java"


# static fields
.field private static final DEFAULT_RADIUS:I = 0x8


# instance fields
.field private colorStateList:Landroid/content/res/ColorStateList;

.field private final mBoundRect:Landroid/graphics/RectF;

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mIsTouchDown:Z

.field private mRadius:I

.field private final mRect:Landroid/graphics/RectF;

.field private mScaleAnimator:Landroid/animation/ValueAnimator;

.field scaleTo:F

.field private final stateSpecPress:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XDrawable;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mRect:Landroid/graphics/RectF;

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mBoundRect:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 37
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->stateSpecPress:[I

    const v0, 0x3f7851ec    # 0.97f

    .line 40
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->scaleTo:F

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method private setScaleRect(F)V
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mBoundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x41c00000    # 24.0f

    sub-float/2addr v0, v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    .line 145
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mBoundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    sub-float/2addr v1, v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mBoundRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    sub-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 147
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mBoundRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v2, v1

    div-float/2addr v2, v0

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v2

    iget-object v4, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, p1

    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mBoundRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v2

    invoke-virtual {v0, v1, v3, v4, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/drawable/XDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    if-eqz p4, :cond_0

    .line 51
    sget-object p1, Lcom/xiaopeng/xpui/R$styleable;->XStateGradientDrawable:[I

    const/4 p2, 0x0

    invoke-virtual {p4, p3, p1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 53
    :cond_0
    sget-object p2, Lcom/xiaopeng/xpui/R$styleable;->XStateGradientDrawable:[I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 55
    :goto_0
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XStateGradientDrawable_android_radius:I

    const/16 p3, 0x8

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mRadius:I

    .line 56
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XStateGradientDrawable_android_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->colorStateList:Landroid/content/res/ColorStateList;

    .line 57
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$pressDown$0$XMenuItemDrawable(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 136
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 137
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->setScaleRect(F)V

    .line 138
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->invalidateSelf()V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/drawable/XDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mBoundRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 64
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->setScaleRect(F)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->colorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->invalidateSelf()V

    if-eqz p1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->stateSpecPress:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mIsTouchDown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mIsTouchDown:Z

    .line 100
    iget-boolean v1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->isNeedAnimate:Z

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->pressDown(ZZ)V

    goto :goto_0

    .line 101
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mIsTouchDown:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mIsTouchDown:Z

    .line 103
    iget-boolean v1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->isNeedAnimate:Z

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->pressDown(ZZ)V

    .line 106
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/drawable/XDrawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public pressDown(ZZ)V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    .line 115
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p1, :cond_2

    new-array p1, v3, [F

    aput v0, p1, v2

    .line 127
    iget v2, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->scaleTo:F

    aput v2, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 128
    new-instance v1, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v2, p2, v3, v0}, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_2
    new-array p1, v3, [F

    .line 131
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->scaleTo:F

    aput v3, p1, v2

    aput v0, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 132
    new-instance v1, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;

    const v2, 0x3e570a3d    # 0.21f

    const v3, 0x3f170a3d    # 0.59f

    invoke-direct {v1, v2, v3, p2, v0}, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 135
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/xiaopeng/xui/drawable/-$$Lambda$XMenuItemDrawable$HrvkWkEAJxI5-E5XajKE7gc0wnk;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/drawable/-$$Lambda$XMenuItemDrawable$HrvkWkEAJxI5-E5XajKE7gc0wnk;-><init>(Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    const p1, 0x3f666666    # 0.9f

    .line 118
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->setScaleRect(F)V

    goto :goto_2

    .line 120
    :cond_4
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->setScaleRect(F)V

    .line 122
    :goto_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->invalidateSelf()V

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

.method public setVisible(ZZ)Z
    .locals 0

    .line 153
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/drawable/XDrawable;->setVisible(ZZ)Z

    move-result p1

    .line 154
    iget-object p2, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 155
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->setScaleRect(F)V

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->invalidateSelf()V

    .line 157
    iget-object p2, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return p1
.end method
